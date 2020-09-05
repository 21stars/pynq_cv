#include "hls_video.h"
#include "ap_fixed.h"

typedef hls::stream<ap_axiu<24,1,1,1> > AXI_STREAM;

void sobel_accel(AXI_STREAM& stream_in, AXI_STREAM& stream_out);
#define MAX_HEIGHT 1080
#define MAX_WIDTH 1920
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3> BGR_IMG;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> GRAY_IMG;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16S> GRAY_SIGNED_IMG;
