##############################
#
# chmod +x api_serverest.sh    
# 
# ./api_serverest.sh
#
##############################

docker images

docker build -t api_serverest .

docker run -p 3000:3000 api_serverest