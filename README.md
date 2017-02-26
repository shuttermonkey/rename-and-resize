renamer.sh is a very simple bash script runs on macOS/ OSX

Its purpose is:
 - rename pics to the date they were taken (based on exif info)
 - append an integer to the end of the filename if more than 1 pic was taken on the day
 - resize the image to 1200px

Uses the OSX utility **sips** to both 
  - extract date info from the exif and
  - resize impage to 1200px

I generally use this in conjunction with airdrop to transfer images from my iphone to 
reformat image name/ dimension for direct uploading to a photoblog.
