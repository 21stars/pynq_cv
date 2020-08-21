#include "sobel_edge.h"
#include "hls_opencv.h"
int main(){
	cv::Mat img_src(cv::Size(MAX_WIDTH,MAX_HEIGHT),CV_8UC3);
	cv::Mat img_dst(cv::Size(MAX_WIDTH,MAX_HEIGHT),CV_8UC3);
	img_src = cv::imread("C:/work/zynq/hls/hls_projects/sobel_edge/src/FHD_1.jpg");
	AXI_STREAM stream_in, stream_out;
	cvMat2AXIvideo(img_src, stream_in);
	sobel_accel(stream_in, stream_out);
	AXIvideo2cvMat(stream_out, img_dst);
	cv::imwrite("C:/work/zynq/hls/hls_projects/sobel_edge/src/sobel_FHD_1.jpg", img_dst);


//	cv::Mat gray(cv::Size(MAX_WIDTH,MAX_HEIGHT),CV_8UC1);
//	cv::Mat blurred(cv::Size(MAX_WIDTH,MAX_HEIGHT),CV_8UC1);
//	cv::Mat sobel_x(cv::Size(MAX_WIDTH,MAX_HEIGHT),CV_8UC1);
//	cv::Mat sobel_y(cv::Size(MAX_WIDTH,MAX_HEIGHT),CV_8UC1);
//	cv::Mat sobel_out(cv::Size(MAX_WIDTH,MAX_HEIGHT),CV_8UC1);
//
//	cv::cvtColor(img_src, gray, cv::COLOR_BGR2GRAY);
//	cv::GaussianBlur(gray, blurred, cv::Size(3,3), 0, 0);
//
//	cv::Sobel(blurred, sobel_x, CV_16S, 1, 0, 3, 1, 0, cv::BORDER_DEFAULT);
//	cv::Sobel(blurred, sobel_y, CV_16S, 0, 1, 3, 1, 0, cv::BORDER_DEFAULT);
//
//	cv::addWeighted(sobel_x, 0.5, sobel_y, 0.5, 0, sobel_out);
//	cv::imwrite("C:/work/zynq/hls/hls_projects/sobel_edge/src/sw_sobelg.jpg", sobel_out);
//
//	cv::cvtColor(img_dst, img_dst, cv::COLOR_BGR2GRAY);
//	cv::absdiff(sobel_out, img_dst, gray);
//
//	cv::imwrite("C:/work/zynq/hls/hls_projects/sobel_edge/src/diff.jpg", gray);
return 0;
}
