RED='\033[0;31m'
Green='\033[0;32m'   
Yellow='\033[0;33m' 
Cyan='\033[0;36m'
default='\033[39m'
ls
echo "${Yellow} Please enter file name to build:${RED}" 
read filename
echo "${Cyan} What would you like the build name to be:${Green}"
read buildname
echo "${default}"
gcc -o ${buildname} ${filename}
./${buildname}
