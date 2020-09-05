#include "sobel.h"
void sobel_accel(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM){
#pragma HLS INTERFACE axis port=INPUT_STREAM
#pragma HLS INTERFACE axis port=OUTPUT_STREAM
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS

	int rows = MAX_HEIGHT;
	int cols = MAX_WIDTH;

	BGR_IMG src(rows, cols);
	GRAY_IMG gray(rows, cols);
	GRAY_IMG blurred(rows, cols);
	GRAY_IMG gray1(rows, cols);
	GRAY_IMG gray2(rows, cols);
	GRAY_SIGNED_IMG sobel_x64(rows, cols);
	GRAY_SIGNED_IMG sobel_y64(rows, cols);
	GRAY_IMG sobel_x(rows, cols);
	GRAY_IMG sobel_y(rows, cols);
	GRAY_IMG sobel_g(rows, cols);
	BGR_IMG dst(rows, cols);

	#pragma HLS dataflow
	hls::AXIvideo2Mat(INPUT_STREAM, src);
	hls::CvtColor<HLS_BGR2GRAY>(src, gray);
	hls::GaussianBlur<3,3>(gray,blurred);
	hls::Duplicate(blurred,gray1,gray2);
	hls::Sobel<1,0,3>(gray1, sobel_x64);
	hls::Sobel<0,1,3>(gray2, sobel_y64);
	hls::ConvertScaleAbs(sobel_x64, sobel_x);
	hls::ConvertScaleAbs(sobel_y64, sobel_y);
	hls::AddWeighted(sobel_x,0.5,sobel_y,0.5,0.0,sobel_g);
	hls::CvtColor<HLS_GRAY2BGR>(sobel_g, dst);
	hls::Mat2AXIvideo(dst, OUTPUT_STREAM);
}
