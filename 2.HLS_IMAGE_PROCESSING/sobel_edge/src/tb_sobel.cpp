#include "sobel.h"
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

	return 0;
}
