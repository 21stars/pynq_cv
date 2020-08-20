# VDMA PASS THROUGH

## AXI4 Video Stream

Pixel data is transmitted by using the [AXI4 Video Stream](https://www.xilinx.com/support/documentation/ip_documentation/axi_videoip/v1_0/ug934_axi_videoIP.pdf "AXI4-Video Stream"), which is composed of DATA, VALID, READY, SOF, and EOL signals.

- DATA: Pixel value. We're going to use 24bit width data to present R, G, B colour space.
- VALID: Asserted when the DATA is valid.
- READY: Transaction occurs when VALID and READY are both high.
- SOF: High at the Start Of Frame.
- EOL: High at the End Of Line.

![SOF & EOL Timing](/used_images/sof_eol.png)

    Figure from “UG934 Axi Video IP”, Xilinx Inc,

The master's VALID signal should be asserted independently from the slave's READY signal.
If the master waits for the slave's READY to assert VALID, it may wait forever.

## VDMA

Video Direct Memory Access[(VDMA)](https://www.xilinx.com/support/documentation/ip_documentation/axi_vdma/v6_3/pg020_axi_vdma.pdf "AXI VDMA") IPs were used to

1. Read frames at the external DDR Memory
2. Store frames at the external DDR Memory

Two VDMAs were used for read and write frame image, and they are connected directly.

## SYSTEM BLOCK DIAGRAM

![System Block Diagram](/used_images/system_block_diagram.png)

In this project, there is no image/video processing kernel between two VDMAs.

1. PS reads a stored image from external SD Card memory(Using OpenCV-Python).
2. Numpy array is used for the image frame.
3. Configure the VDMAs' channel mode as VideoMode(Width 1920, Height 1080, Data Width 24 for R, G, B)
4. Deep copy the image frame to Contiguous Memory Array[(CMA)](https://pynq.readthedocs.io/en/v2.0/pynq_package/pynq.xlnk.html "CMA")
5. Write channel VDMA sends the image frame stored at input buffer(CMA).
6. Read channel VDMA receives the image frame and stores at output buffer(CMA).
7. PS prints received frame image.

### So What's Inside

- [Vivado Project](/vdma_pass_thrugh "Vivado Project")
- [Jupyter Notebook](pass_thru.ipynb "Jupyter Notebook")
- [Prebuilt Base Image](/base "Base")
- [Image samples](/data "Data")