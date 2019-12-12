#!/bin/bash

### Run Concatenate every 6 Str8ts.png's
NUMBER_OF_FILES="$(ls -l | grep png | wc -l)"


if [ "$NUMBER_OF_FILES" -eq 6 ]; then
	montage -mode concatenate *.png -tile 2x3 "$(date +outfile_%y_%m_%d-%H_%M_%S.pdf)"
	mv /home/lena/NewStr8tsProject/Str8tsFiles/*.pdf /home/lena/Dropbox/Str8tsOut 
	mv *.png /home/lena/NewStr8tsProject/Str8tsFiles/InPDF/
	#source /home/lena/NewStr8tsProject/Str8tsFiles/
    #/bin/bash /home/lena/NewStr8tsProject/Str8tsFiles/ConcatenateToPdf.sh
fi
