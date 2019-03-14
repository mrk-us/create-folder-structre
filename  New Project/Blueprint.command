#!/bin/bash

cd "`dirname "$0"`"

echo "Creating .gitignore..."
echo $'.DS_Store\n*.sketch\n.blueprintbackup.command' > .gitignore

echo "Creating .gitattributes..."
echo $'# 3D models\n*.3dm filter=lfs diff=lfs merge=lfs -text\n*.3ds filter=lfs diff=lfs merge=lfs -text\n*.blend filter=lfs diff=lfs merge=lfs -text\n*.c4d filter=lfs diff=lfs merge=lfs -text\n*.collada filter=lfs diff=lfs merge=lfs -text\n*.dae filter=lfs diff=lfs merge=lfs -text\n*.dxf filter=lfs diff=lfs merge=lfs -text\n*.fbx filter=lfs diff=lfs merge=lfs -text\n*.jas filter=lfs diff=lfs merge=lfs -text\n*.lws filter=lfs diff=lfs merge=lfs -text\n*.lxo filter=lfs diff=lfs merge=lfs -text\n*.ma filter=lfs diff=lfs merge=lfs -text\n*.max filter=lfs diff=lfs merge=lfs -text\n*.mb filter=lfs diff=lfs merge=lfs -text\n*.obj filter=lfs diff=lfs merge=lfs -text\n*.ply filter=lfs diff=lfs merge=lfs -text\n*.skp filter=lfs diff=lfs merge=lfs -text\n*.stl filter=lfs diff=lfs merge=lfs -text\n*.ztl filter=lfs diff=lfs merge=lfs -text\n*.off filter=lfs diff=lfs merge=lfs -text\n# Audio\n*.aif filter=lfs diff=lfs merge=lfs -text\n*.aiff filter=lfs diff=lfs merge=lfs -text\n*.it filter=lfs diff=lfs merge=lfs -text\n*.mod filter=lfs diff=lfs merge=lfs -text\n*.mp3 filter=lfs diff=lfs merge=lfs -text\n*.ogg filter=lfs diff=lfs merge=lfs -text\n*.s3m filter=lfs diff=lfs merge=lfs -text\n*.wav filter=lfs diff=lfs merge=lfs -text\n*.xm filter=lfs diff=lfs merge=lfs -text\n# Images\n*.bmp filter=lfs diff=lfs merge=lfs -text\n*.exr filter=lfs diff=lfs merge=lfs -text\n*.gif filter=lfs diff=lfs merge=lfs -text\n*.hdr filter=lfs diff=lfs merge=lfs -text\n*.iff filter=lfs diff=lfs merge=lfs -text\n*.jpeg filter=lfs diff=lfs merge=lfs -text\n*.jpg filter=lfs diff=lfs merge=lfs -text\n*.pict filter=lfs diff=lfs merge=lfs -text\n*.png filter=lfs diff=lfs merge=lfs -text\n*.psd filter=lfs diff=lfs merge=lfs -text\n*.tga filter=lfs diff=lfs merge=lfs -text\n*.tif filter=lfs diff=lfs merge=lfs -text\n*.tiff filter=lfs diff=lfs merge=lfs -text\n# Video\n*.mp4 filter=lfs diff=lfs merge=lfs -text\n*.mkv filter=lfs diff=lfs merge=lfs -text\n*.mov filter=lfs diff=lfs merge=lfs -text\n*.avi filter=lfs diff=lfs merge=lfs -text\n*.m4a filter=lfs diff=lfs merge=lfs -text\n# Design\n*.sketch filter=lfs diff=lfs merge=lfs -text\n*.xd filter=lfs diff=lfs merge=lfs -text\n*.ai filter=lfs diff=lfs merge=lfs -text\n*.id filter=lfs diff=lfs merge=lfs -text\n*.form filter=lfs diff=lfs merge=lfs -text\n# Other\n*.dat filter=lfs diff=lfs merge=lfs -text\n*.pdf filter=lfs diff=lfs merge=lfs -text\n*.a filter=lfs diff=lfs merge=lfs -text\n' > .gitattribues

echo "Creating folder structure..."
mkdir assets && cd assets; mkdir dummy fonts icons images logos && cd ..;
mkdir exports && cd exports; mkdir flows mockups trackers wireframes && cd ..;
mkdir imports && cd imports; mkdir branding videos images fonts && cd ..;
mkdir source && cd source; mkdir sketch psd ai && cd ..;

echo "Create .gitkeep"
find . -type d -empty -not -path "./.git/*" -exec touch {}/.gitkeep \;

mv 'Blueprint.command' ./'.blueprintbackup.command';

osascript -e 'tell application "Terminal" to close (every window whose name contains ".command")' &
exit
 
