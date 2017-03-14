# link both of them and create database by postgres role first
docker run -it -P  --name ror-practice -p 3000:3000 -d chloe/ror-practice

# start the server
docker exec -it ror-practice /bin/bash -c "sudo bundle install; ./whenever.sh; rake db:migrate RAILS_ENV=production; rails s -e production"
