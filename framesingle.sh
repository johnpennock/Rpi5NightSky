#!/bin/bash

: <<'COMMENT'
This script captures a single frame using the following switches:

--nopreview = Do not show a preview window
--immediate = Perform first capture immediately, with no preview phase
--hflip = flip image horizontally
--vflip = flip image vertically
--denoise off = Sets the denoise operating mode
--sharpness 1.1 = Adjust the sharpness of the output image, where 1.0 = normal sharpening
--quality 92 = Set the JPEG quality parameter (higher is better)
--lens-position 0.05 = Set the lens to a particular focus position, (0 moves the lens to infinity)
--shutter 12000000 = Set a fixed shutter speed in microseconds (this is 12 seconds)
--gain 8 = Set a fixed gain value
--awbgains 1,1 = Set explict red and blue gains ( used to disable the automatic AWB algorithm)
--output image.jpg = Set the output file name

COMMENT

rpicam-still --nopreview --immediate --hflip --vflip --denoise off --sharpness 1.1 --quality 92 --lens-position 0.05 --shutter 12000000 --gain 8 --awbgains 1,1 --output image.jpg
