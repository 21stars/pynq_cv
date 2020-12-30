# HLS RTL VIDEO PROCESSING

Comparison between RTL and HLS version processing kernel
You can read written paper [here](https://ieeexplore.ieee.org/document/9276803 "Comparison Between HLS and HDL Image Processing in FPGAs") "Comparison Between HLS and HDL Image Processing in FPGAs", ICCE-Asia 2020
![Sobel Operator](/used_images/sobel_edge.png)

## So What's Inside

- HLS Project: [sobel_edge](/2.HLS_IMAGE_PROCESSING/sobel_edge "HLS Project")
- Vivado Project: [sobel_1080p](/2.HLS_IMAGE_PROCESSING/sobel_1080p "Vivado Project")
- Prebuilt Base Image: [base](/2.HLS_IMAGE_PROCESSING/base "Base")
- Image samples: [data](/2.HLS_IMAGE_PROCESSING/data "Data")
- Using HLS version IP Python Code: [sobel_sw.ipynb](/2.HLS_IMAGE_PROCESSING/sobel_sw.ipynb "Jupyter Notebook")
- Using RTL version IP Python Code: [sobel_hw.ipynb](/2.HLS_IMAGE_PROCESSING/sobel_hw.ipynb "Jupyter Notebook")

## High Level Synthesis

[High Level Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2019_1/ug902-vivado-high-level-synthesis.pdf "High Level Syntehsis")(HLS) tools transforms C/C++ based functions into FPGA synthesizable RTL modules.

By using HLS, you can get

- Rapid design speed
- Easy verification(testbench with C / RTL)

In this project, we're going to

- Create an image / video processing kernel of Sobel edge detection
- Verify it
- Export as an RTL IP
- Use it in Vivado

If you have no idea for HLS you had better read [this](https://www.xilinx.com/support/documentation/sw_manuals/ug998-vivado-intro-fpga-design-hls.pdf "Introduction to FPGA Design with Vivado High-Level Synthesis") article first.

## Image Processing Kernel

![Sobel Accel IP Block](/used_images/sobel_accel.PNG)

The image processing kerenel we're going to make will contain following steps.

1. Color conversion(RGB2GRAY)
2. Spatial low-pass filter[(3X3 Gaussian filter)](https://en.wikipedia.org/wiki/Gaussian_filter "Gaussian filter")
3. Sobel operation[(3X3 Sobel)](https://en.wikipedia.org/wiki/Sobel_operator "Sobel Filter")
4. Sum of gradients’ magnitude(Weighted Sum)

For optimization, dataflow pragma  was used to parallelize the processing.
The dataflow pragma creates a channel FIFO buffer between the stages to make it so that the processes are done in parallel.

## Vivado High Level Synthesis

1. Create Vivado High-Level Synthesis project

Do not specify source file, testbench file - will be added later
Solution name: solution1
Clock Period: 10
Part: Select Board Ultra96v2 board
![Create Project](/used_images/create_hls_project.PNG)

2. Create source / header / testbench files and write codes.

- sobel.cpp

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

- sobel.h

        #include "hls_video.h"
        #include "ap_fixed.h"

        typedef hls::stream<ap_axiu<24,1,1,1> > AXI_STREAM;

        void sobel_accel(AXI_STREAM& stream_in, AXI_STREAM& stream_out);
        #define MAX_HEIGHT 1080
        #define MAX_WIDTH 1920
        typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3> BGR_IMG;
        typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> GRAY_IMG;
        typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16S> GRAY_SIGNED_IMG;

- tb_sobel.cpp

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

3. Include pre-written source / testbench files to HLS Project
![Include](/used_images/include_src_tb.PNG)
or maybe you can write code after include source codes

4. Project Settings -> Synthesis -> Set Top Function as 
![top_func](/used_images/set_top_func.png)
In a C/C++ file, many functions may exist.
Specify the top function here, but the top function's name mustn't be main(), since the main() function is used in test bench to call the top function.

5. Synthesis
![C Syntehsis](/used_images/hls_c_synthesis.png)
Click the button for C-Synthesis.
![C Syntehsis report](/used_images/hls_synthesis_report.PNG)
After C-Synthesis, you can findout the data infos.

- Timing: How fast clock speed your IP can work with.
In this image, the iming target is 10.00ns, which means 100MHz fabric clock.
The sobel_accel IP's timing is 8.544ns that you can use this IP in the system of 100MHz fabric clock speed.
- Latency(clock cycles): How much time(clock cycles) is required to execute the IP.
- Utilizaition Estimates: Used FPGA resouces.
- Interfaces: What kind of protocols are used for input/output.

6. Test Bench
![Testbench](/used_images/c_simulation.png)
Run test bench. The left red box is C Simulation, and the right one is C/RTL cosimulation.
Before you run test bench, you must change paths for source image and destination image.
![Result_image](/used_images/hls_testbench_sobel.jpg)
The result image looks fine that we can use it.

7. Export to RTL
![Export RTL](/used_images/export_rtl.png)
Now export as RTL IP.
You can choose the language between Verilog / VHDL
The path to the IP is [project_name]/solution1/impl/ip

## SYSTEM BLOCK DIAGRAM

![System Block Diagram](/used_images/system_block_diagram2.png)

In this project, there is an image/video processing kernel(sobel-accel) between two VDMAs.
You can find out the 'Image Processing Kernel easily.

1. PS reads a stored image from external SD Card memory(Using OpenCV-Python).
2. Numpy array is used for the image frame.
3. Configure the VDMAs' channel mode as VideoMode(Width 1920, Height 1080, Data Width 24 for R, G, B)
4. Deep copy the image frame to Contiguous Memory Array[(CMA)](https://pynq.readthedocs.io/en/v2.0/pynq_package/pynq.xlnk.html "CMA")
5. Write channel VDMA sends the image frame stored at input buffer(CMA).
6. Read channel VDMA receives the image frame and stores at output buffer(CMA).
7. PS prints received frame image.

## HW Implementation

Creating Vivado Project and block design components are really similar with the former project [VDMA_PASS_THROUGH](/1.VDMA_PASS_THROUGH "VDMA_PASS_THROUGH").

1. Create Vivado Project
    - Set board as Ultra96

2. Add the pre-built Sobel Accel IP
![Add IP](/used_images/add_ip.png)
IP Catalog - Add Repository: Add path to the pre-built Sobel Accel IP.

3. Create Block Design
![System Block Diagram](/used_images/hls_sobel_bd.png)
    - Processing System: Apply board presets, Enable M_AXI_HPM0_FPD, S_AXI_HPC0_FPD
    - AXI Video Direct Memory Access x 2
    ![System Block Diagram](/used_images/vdma_pass_thru_vdma.PNG)
    ![System Block Diagram](/used_images/vdma_pass_thru_vdma2.PNG)
    Frame Buffers: Configure how many frames store in external DRAM(Not important for this project)
    Stream Data Width: At least 24, since we're sending RGB 24 bit datawidth pixel data.
    Read/Write Burst Size: This matters for bandwidth. For HD resolution images, 32bit width yields throughput of 96 fps, 64bit width yields 192 fps.
    - Concat: Number of Ports 5
    - AXI Interrupt Controller
    - Sobel Accel IP: Pre-built Sobel accel IP.

4. Generate Bitstream
Copy and rename bitstream(bit) and hardware handoff file(hwh)
    - proj.runs/impl_1/design_1_wrapper.bit
    - proj.srcs/sources_1/bd/design_1/hw_handoff/design_1.hwh
as hw_sobel.bit / hw_sobel.hwh

5. Run in the Jupyter Notebooks
Python & OpenCV [SW Version](/2.HLS_IMAGE_PROCESSING/sobel_sw.ipynb "Jupyter Notebook - Sobel SW")
FPGA Accelerated  [HW Version](/2.HLS_IMAGE_PROCESSING/sobel_hw.ipynb "Jupyter Notebook - Sobel HW")
