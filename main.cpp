#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

#include <iostream>
#include <math.h>

int main(int argc, char const *argv[])
{
    cv::VideoCapture cap("MultipleColors.mp4");

    if(!cap.isOpened())
    {
        std::cout << "error reading the video file...";
        return -1;
    }

    cv::Mat frame;
    while(cap.read(frame))
    {
        cv::Mat cvtFrame;
        cv::cvtColor(frame, cvtFrame, cv::COLOR_BGR2HSV);

        //cv::Mat hsv_channels[3];
        //cv::split( cvtFrame, hsv_channels );
        // cv::imshow("HSV to gray", hsv_channels[0]);

        cv::Mat rangeR1, rangeR2, rangeY, rangeB;

        // Ranges for Red
        cv::inRange(cvtFrame, cv::Scalar(0, 100, 100), cv::Scalar(3, 255, 255), rangeR1);
        cv::inRange(cvtFrame, cv::Scalar(330/2, 100, 100), cv::Scalar(360/2, 255, 255), rangeR2); 
        
        ////Ranges for Yellow
        cv::inRange(cvtFrame, cv::Scalar(40/2, 100, 100), cv::Scalar(80/2, 255, 255), rangeY);
    
        ////Ranges for Blue
        cv::inRange(cvtFrame, cv::Scalar(180/2, 80, 80), cv::Scalar(280/2, 255, 255), rangeB);

        
        ////Combine the red ranges
        cv::Mat combinedRed;
        cv::add(rangeR1, rangeR2, combinedRed); //cv::add(combined, rangeY, combined); cv::add(combined, rangeB, combined);

        cv::GaussianBlur( combinedRed, combinedRed, cv::Size(9, 9), 2, 2 );
        cv::GaussianBlur( rangeY, rangeY, cv::Size(9, 9), 2, 2 );
        cv::GaussianBlur( rangeB, rangeB, cv::Size(9, 9), 2, 2 );

        std::vector<std::vector<cv::Vec3f>> circles;
        circles.reserve(3);

        cv::HoughCircles( combinedRed , circles[0], 3 , 1, combinedRed.rows/8, 80,80 );
        cv::HoughCircles( rangeY ,      circles[1], 3 , 1, rangeY.rows/8, 80,80 );
        cv::HoughCircles( rangeB ,      circles[2], 3 , 1, rangeB.rows/8, 80,80 );

        cv::Mat combined = combinedRed;
        cv::add(combined, rangeY, combined); cv::add(combined, rangeB, combined);

              
        cv::imshow( "dst", combined );


        // Press  ESC on keyboard to exit
        char c=(char)cv::waitKey(50);
        if(c==27)
        break;

    }

    // When everything done, release the video capture object
    cap.release();
    
    // Closes all the frames
    cv::destroyAllWindows();


    return 0;
}
