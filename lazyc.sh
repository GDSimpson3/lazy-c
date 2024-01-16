#!/bin/zsh

RED='\033[0;31m'
Green='\033[0;32m'   
Yellow='\033[0;33m' 
Cyan='\033[0;36m'
default='\033[39m'

echo "${Cyan} Make sure you create a variable called FILENAME and BUILDNAME via:"
echo "${Yellow} export FILENAME='file' \n export BUILDNAME='name'" 


validation()
{

if [ -z "${BUILDNAME}" ]; then
echo "${RED} PLEASE SET BUILD NAME"
exit
else
    echo "${Green} USING: ${BUILDNAME}"
fi

if [ -z "${FILENAME}" ]; then
echo "${RED} PLEASE SET FILE NAME"
exit
else
    echo "${Green} USING: ${FILENAME}"
fi

}


buildc()
{
echo "${default}"
gcc -o ${BUILDNAME} ${FILENAME}
./${BUILDNAME}
}

validation
buildc
