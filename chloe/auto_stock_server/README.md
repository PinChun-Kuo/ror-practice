# Auto stock server

## Environment
- ruby 2.1
- rails 3.2.22.1
- angular 1.2

## Getting started - development
1. Clone this repository and checkout to dev/chloe
2. Move to chloe/auto_stock_server
3. Modify develop.sh file : ```/Users/pinchun.kuo/Desktop/ror-practice/chloe/auto_stock_server``` -> change to the location where you project is
4. Build docker image with ```docker build --build-arg NODE_ENV="development" -t chloe/ror-practice-dev .```
5. Deploy and start the server with ```./develop.sh```
6. Point your browser to http://localhost:3000
