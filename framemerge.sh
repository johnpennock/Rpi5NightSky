#!/bin/bash

: <<'COMMENT'

This script merges all the timelapse images in a folder into a video using ffmpeg

COMMENT

ffmpeg -pattern_type glob -i '*.jpg' -r 30 output.mp4
