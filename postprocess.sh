#!/bin/bash

: <<'COMMENT'

Thanks to jbeale at forums.raspberrypi.com for his work with this script.
https://forums.raspberrypi.com/viewtopic.php?p=2096715#p2086470

This script post-processes timelapse images using imagemagick:

  blur each image, to model smooth light pollution background
  subtract background from image, leaving small features (eg. stars)
  brighten image (a whole lot) with an S-curve
  adjust contrast so JPEG black=0 visually matches MP4 video black level
  rescale 12 MP image down to 1080p full-HD

COMMENT

OUT="/home/jpennock/Documents/nightsky/buff" # folder to hold processed images
for IMG in *.jpg; do
  echo -n "$IMG.. "
  convert \( $IMG -scale 576x324 -depth 16 -brightness-contrast -3x0 \
       -blur 0x7 -resize 4608x2592 -write mpr:blur1 +delete \) \
    \( mpr:blur1 $IMG -compose minus-dst -composite \) \
    \( -sigmoidal-contrast 6,5% \) \
    \( -brightness-contrast 0,-6 \) \
    \( -resize 1920x1080 \) \
    $OUT/$IMG
done
