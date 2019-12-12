#!/bin/bash

### Variables Date and Filename

cd /home/lena/NewStr8tsProject

### Create Image

phantomjs str8ts.js

### Crop and keep big image
#convert file_name.png -crop 414x419+318+712 cropped.png

###  Crop and discard big image
mogrify -crop 430x450+310+700 *.png

### Make directory for day

cd /home/lena/NewStr8tsProject/Str8tsFiles
mv /home/lena/NewStr8tsProject/*.png .

### Run Concatenate every 6 Str8ts.png's

source /home/lena/NewStr8tsProject/Str8tsFiles/Test6Files.bash
/bin/bash /home/lena/NewStr8tsProject/Str8tsFiles/Test6Files.bash