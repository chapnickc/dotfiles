#!/bin/bash
#http://superuser.com/questions/440629/batch-convert-mkv-to-mp4


echo $files


for file in $( find "${HOME}/Downloads/Silicon.Valley.Season.3.720p.HDTV.x265.ShAaNiG" -iname '*.mkv' ); do ffmpeg -i "$file" -c:v copy -c:a copy ${file%%.mkv}.mp4; done

file=$( find "${HOME}/Downloads/Silicon.Valley.Season.3.720p.HDTV.x265.ShAaNiG" -iname '*.mkv' )

#!/bin/bash
path="${HOME}/Downloads/Silicon.Valley.Season.3.720p.HDTV.x265.ShAaNiG"
find $path -iname '*.mkv' -print0 | while read -d '' -r file; do ffmpeg -i "$file" -c:v copy -c:a copy ${file%%.mkv}.mp4; done

file="Silicon.Valley.S03E01.720p.HDTV.x265.ShAaNiG.mkv"
 -vcodec copy -acodec copy
sudo ffmpeg -i "$file" -c:v copy -c:a aac -b:a 256k ${file%%.mkv}.mp4


