# Rpi5NightSky
BASH scripts for Raspberry Pi night sky photo captures

I setup a Raspberry Pi 5 with an SSD and decided to try taking photos / videos of the stars.
<br>We have a place that's in a dark sky area, and you can see so many stars, but I wanted to try to actually get photos of them.
<br>My Pixel does a really good job, but I wanted something I could leave out and come back in the morning.
<br>This seems to work pretty well, now just need to tweak the settings, and figure out where to point it.

Here are the parts that I purchased:
<br>Raspberry Pi 5 8GB RAM
<br>Raspberry Pi M.2 HAT+ (For Raspberry Pi 5)
<br>Raspberry Pi SSD 256GB
<br>27W -5V/5A Raspberry Pi 5 Compatible USB-C Power Supply
<br>Raspberry Pi Camera Module 3 Noir / Wide angle
<br>Tilt Adjustable Raspberry Pi Camera Module v2 Mount
<br>Amazon Basics Lightweight Mini Tripod, Black2
<br>CSI FPC Flexible Cable For Raspberry Pi 5, 22Pin To 15Pin, 0.5 M Length
<br>Raspberry Pi 5 Active Cooler
<br>RTC Battery for Raspberry Pi 5
<br>
<br>framesingle.sh will capture a single image each time it is run
<br>framemultiple.sh will capture multiple images for as long as it is run
<br>postprocess.sh will process all the files in a folder using imagemagick
<br>framemerge will merge all the images in a folder into a .mp4 video file
<br>
