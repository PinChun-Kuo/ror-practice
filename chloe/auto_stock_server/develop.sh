# link both of them and create database by postgres role first
docker run -it -P -v /Users/pinchun.kuo/Desktop/ror-practice/chloe/auto_stock_server:/auto_stock_server --name ror-practice-dev -p 3000:3000 -d chloe/ror-practice-dev

# start the server
docker exec -it ror-practice-dev /bin/bash -c "./whenever.sh; rake db:migrate; rails s"
