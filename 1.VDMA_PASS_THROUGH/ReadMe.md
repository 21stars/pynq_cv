# VDMA PASS THROUGH

In this project, read and send an image frame using VDMAs, PYNQ.

![Ahri](/1.VDMA_PASS_THROUGH/data/ahri1.jpg)

## So What's Inside

- Vivado Project: [vdma_pass_thrugh](/1.VDMA_PASS_THROUGH/vdma_pass_thrugh "Vivado Project")
- Prebuilt Base Image: [base](/1.VDMA_PASS_THROUGH/base "Base")
- Image samples: [data](/1.VDMA_PASS_THROUGH/data "Data")
- Jupyter Notebook: [pass_thru.ipynb](/1.VDMA_PASS_THROUGH/pass_thru.ipynb "Jupyter Notebook")

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

![AXI_VDMA](/used_images/axi_vdma.PNG)

Video Direct Memory Access[(VDMA)](https://www.xilinx.com/support/documentation/ip_documentation/axi_vdma/v6_3/pg020_axi_vdma.pdf "AXI VDMA") IPs were used to read/store image frame from/to external DDR Memory.

Ports Description

- S_AXI_LITE: Controls to start read / write. Set input / output buffer's address.
- S_AXIS_S2MM: Receives AXI4 Video Stream.
- M_AXIS_MM2S: Sends AXI4 Video Stream.
- M_AXI_MM2S: Memory Map to Stream. Reads a frame from External DDR Memory.
- M_AXI_S2MM: Stream to Memory Map. Store received frame into External DDR Memory.

Contiguous Memory Array[(CMA)](https://pynq.readthedocs.io/en/v2.0/pynq_package/pynq.xlnk.html "CMA")s are required for VDMAs.
VDMAs read/store with only starting address that the input/output buffer must be contiguous, not fragments.

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

## HW Implementation

1. Create Vivado Project
    - Set board as Ultra96
2. Create Block Design
![Block Design](/used_images/vdma_pass_thru_bd.PNG)
    - Processing System: Apply board presets, Enable M_AXI_HPM0_FPD, S_AXI_HPC0_FPD
    - AXI Video Direct Memory Access x 2
    ![VDMA-1](/used_images/vdma_pass_thru_vdma.PNG)
    ![VDMA-2](/used_images/vdma_pass_thru_vdma2.PNG)
    Frame Buffers: Configure how many frames store in external DRAM(Not important for this project)
    Stream Data Width: At least 24, since we're sending RGB 24 bit datawidth pixel data.
    Read/Write Burst Size: This matters for bandwidth. For HD resolution images, 32bit width yields throughput of 96 fps, 64bit width yields 192 fps.
    - Concat: Number of Ports 4
    - AXI Interrupt Controller
3. Generate Bitstream
Copy and rename bitstream(bit) and hardware handoff file(hwh)
    - proj.runs/impl_1/design_1_wrapper.bit
    - proj.srcs/sources_1/bd/design_1/hw_handoff/design_1.hwh
as vdma_pass.bit / vdma_pass.hwh
4. Run in the [Jupyter Notebook](/1.VDMA_PASS_THROUGH/pass_thru.ipynb "Jupyter Notebook")
