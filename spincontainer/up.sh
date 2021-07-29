rm -rf db
rm -rf configdb
mkdir db
mkdir configdb
printf "\n$(tput setaf 0)$(tput setab 3)creating and starting the container.....\n"
tput init
sleep 2
docker-compose -f mongodb_docker_compose.yml up -d 
sleep 2
printf "\n\n$(tput setaf 0)$(tput setab 3)loading sample dataset.....\n"
tput init
sleep 2
wget https://raw.githubusercontent.com/mongodb/docs-assets/primer-dataset/primer-dataset.json
mongoimport --db initdb --collection restaurents --authenticationDatabase admin --username dbadmin --password "t>AryKD4=@gT,pSu_Ntr(Atm_XX5" --drop --file primer-dataset.json
rm primer-dataset.json
sleep 2
printf "\n\n$(tput setaf 0)$(tput setab 3)starting mongoshell.....\n"
tput init
sleep 2
mongosh -u dbadmin -p "t>AryKD4=@gT,pSu_Ntr(Atm_XX5" --port 27017 --authenticationDatabase admin initdb
# or use
# mongosh "mongodb://dbadmin:"t>AryKD4=@gT,pSu_Ntr(Atm_XX5"@localhost:27017"

