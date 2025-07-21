#!/bin/bash

: <<'COMMENT'
This script captures multiple frames using the following variables / switches:

LOGFILENAME = location and name of file to log when the frames were taken
framestartnum = starting number of the first frame
OUTDIR = location of captured frames (no trailing '/')

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
--output $OUTDIR/$ctr.jpg = Set the output file name

COMMENT

LOGFILENAME="/home/jpennock/Documents/nightsky/capturelog.csv"
framestartnum=1001  # starting number for first image
OUTDIR="/home/jpennock/Documents/nightsky/photos"

while true; do
  DATE=$(date)
  HMS=$(date +"%H%M%S")
  rpicam-still --nopreview --immediate --hflip --vflip --denoise off --sharpness 1.1 --quality 92 --lens-position 0.05 --shutter 12000000 --gain 8 --awbgains 1,1 --output $OUTDIR/$framestartnum.jpg
  echo $DATE", "$HMS", "$framestartnum >> $LOGFILENAME
  framestartnum=$((framestartnum+1))
done

