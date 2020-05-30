#include "sobel_edge.h"
void sobel_accel(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM){
#pragma HLS INTERFACE axis port=INPUT_STREAM
#pragma HLS INTERFACE axis port=OUTPUT_STREAM
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
	int const rows = MAX_HEIGHT;
	int const cols = MAX_WIDTH;

	BGR_IMG src(rows, cols);
	GRAY_IMG gray(rows, cols);
	GRAY_IMG blurred(rows, cols);
	GRAY_IMG gray1(rows, cols);
	GRAY_IMG gray2(rows, cols);
	GRAY_IMG sobel_x(rows, cols);
	GRAY_IMG sobel_y(rows, cols);
	GRAY_IMG sobel_g(rows, cols);
	BGR_IMG dst(rows, cols);

	#pragma HLS dataflow
	hls::AXIvideo2Mat(INPUT_STREAM, src);
	hls::CvtColor<HLS_BGR2GRAY>(src, gray);
	hls::GaussianBlur<3,3>(gray,blurred);
	hls::Duplicate(blurred,gray1,gray2);
	hls::Sobel<1,0,5>(gray1, sobel_x);
	hls::Sobel<0,1,5>(gray2, sobel_y);
	hls::AddWeighted(sobel_x,0.5,sobel_y,0.5,0.0,sobel_g);
	hls::CvtColor<HLS_GRAY2BGR>(sobel_g, dst);
	hls::Mat2AXIvideo(dst, OUTPUT_STREAM);
}
