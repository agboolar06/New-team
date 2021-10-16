#!/bin/bash

REPO=https://github.com/agboolar06/New-team/
OUTPUT_FILE=New-team.csv 
git clone $REPO 
cd ./New-team

for file in $(ls); 
do 
        if [[ $file == *.py ]];  
              then 
                python3 $file >> $OUTPUT_FILE 
        elif [[ $file == *.js ]]; 
              then 
                node $file >> $OUTPUT_FILE 
        elif [[ $file == *.jl ]]; 
              then 
                julia $file >> $OUTPUT_FILE 
        elif [[ $file == *.cpp ]]; 
              then 
                 g++ $file     
                 ./a.out >> $OUTPUT_FILE  
                 rm ./a.out 
        elif [[ $file == *.cs ]]; 
              then 
                 g++ $file     
                 ./a.out >> $OUTPUT_FILE  
                 rm ./a.out 
        elif [[ $file == *.sh ]]; 
              then 
                 bash $file  >> $OUTPUT_FILE  
        elif [[ $file == *.rb ]]; 
              then 
                 ruby $file  >> $OUTPUT_FILE 
        elif [[ $file == *.c ]]; 
              then 
                 gcc $file     
                 ./a.out >> $OUTPUT_FILE  
                 rm ./a.out 
        elif [[ $file == *.java ]]; 
              then 
                 javac $file    
                 name=`echo $file | cut -d\. -f1` 
                 java $name  >> $OUTPUT_FILE 
          
        elif [[ $file == *.R ]]; 
              then 
                 Rscript $file >> $OUTPUT_FILE   
        fi 
done 
