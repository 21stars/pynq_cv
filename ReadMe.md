# PYNQ Image/Video Processing with Ultra96v2 From Scratch

## INTRODUCTION

Image and Video Processing examples using PYNQ, HLS and RTL with Ultra96v2

![Sobel Operator](/used_images/sobel_edge.png)

As an example of Image/Video Processing, the [Sobel Operator](https://en.wikipedia.org/wiki/Sobel_operator "Sobel Operator") was used.

System requirements
-  [Vivado v2019.1](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2019-1.html "Vivado")
-  [PYNQ Image v2.5](http://www.pynq.io/board.html "PYNQ")
- And of course an [Ultra96](http://zedboard.org/product/ultra96 "Ultra96") --> Ultra96v1 is fine if you specify your board as Ultra96v1 in Vivado Project and prepare PYNQ image of Ultra96v1
- [Ultra96 Board File](https://github.com/Avnet/bdf "Ultra96 Board File") You should check which version your Ultra96 is

## WHY PYNQ?

The [PYNQ Framework](http://www.pynq.io/board.html "PYNQ") provides

- Several Device Drivders
- Python Environment
- APIs for interfacing Processor and FPGA

Using PYNQ framework can increase productivity

### So What's Inside

- [VDMA Pass Through](1.VDMA_PASS_THROUGH "VDMA PASS THROUGH")
  - Vivado Project
  - Jupyter Notebook
  
- [HLS Image Processing]()
  - Sobel Operator HLS Project
  - Vivado Project
  - Jupyter Notebook

- [HLS / RTL Video Processing]()
  - Sobel Operator AXI4 Video Stream RTL IP
  - Vivado Project
  - Python Script
  - Cute Ahri's Video