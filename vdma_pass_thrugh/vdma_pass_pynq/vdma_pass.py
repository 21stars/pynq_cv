import pynq
from pynq import GPIO

__author__= "starz"


class vdma_passOverlay(pynq.Overlay):
    """.
    """
    def __init__(self, bitfile, **kwargs):
        super().__init__(bitfile, **kwargs)
        if self.is_loaded():
            pass