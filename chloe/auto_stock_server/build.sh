# build code based on environmet
if [ "$NODE_ENV" == 'production' ]; then
  apt-get update
  apt-get install git -y
  git clone https://github.com/rakuten-f2e/ror-practice.git
  cd ror-practice
  git checkout dev/chloe
  cd chloe/auto_stock_server
  # move data to up layer
  mv -f ./* ../../../
  mv -f ./.* ../../../
  cd ../../../
  rm -rf ror-practice
fi
