read -p 'Enter container name: ' ContainerName
# echo $ContainerName

#echo

read -p 'Enter PASSWORD: ' Password

#echo

#read -p 'Expose via port: ' Port

#echo

read -p 'Enter database name: ' Database

echo

# Update or install mysql-server
docker pull mysql/mysql-server

# Run a container
# Path=$(cd ./scripts; pwd)

if [ -z $Password ]
then
   docker run \
        -p 3306:3306 \
        --name=$ContainerName \
        -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -e MYSQL_DATABASE=$Database -e MYSQL_HOST='127.0.0.1' \
        -d mysql
else
   docker run \
        -p 3306:3306 \
        --name=$ContainerName \
        -e MYSQL_ROOT_PASSWORD=$Password -e MYSQL_DATABASE=$Database -e MYSQL_HOST='127.0.0.1' \
        -d mysql
fi

#echo path=$Path


echo

docker ps

echo

sleep 20s # Waits 5 seconds.

eval 'docker logs $ContainerName' # 2>&1 | grep GENERATED'

echo

# eval 'docker exec -it $ContainerName mysql -uroot -p'

