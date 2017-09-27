[![Stories in Ready](https://badge.waffle.io/fybwid/dodi.svg?label=ready&title=Ready)](http://waffle.io/fybwid/dodi)
[![Build Status](https://semaphoreci.com/api/v1/fybwid/dodi/branches/master/badge.svg)](https://semaphoreci.com/fybwid/dodi)
[![Build Status](https://travis-ci.org/fybwid/dodi.svg?branch=master)](https://travis-ci.org/fybwid/dodi)
[![Coverage Status](https://coveralls.io/repos/github/fybwid/dodi/badge.svg?branch=master)](https://coveralls.io/github/fybwid/dodi?branch=master)

# dodi

[![Greenkeeper badge](https://badges.greenkeeper.io/fybwid/dodi.svg)](https://greenkeeper.io/)
Dokumentasi Digital

## Ruby
Version 2.3.4
> `rvm --default use 2.3.4`

## Bundler
```
gem install bundler
```

## Rails
Version 5.1.3

## PostgreSQL
Version 9.3

### Change conf files to map your user to postgres user
```
sudo sed -i 's/local[ ]*all[ ]*postgres[ ]*peer/local all postgres peer map=basic/' /etc/postgresql/9.3/main/pg_hba.conf
sudo sed -i "$ a\basic $USER postgres" /etc/postgresql/9.3/main/pg_ident.conf
```

### Start the service
```
sudo service postgresql start
```

### Make the default database template encoded in unicode
```
psql -U postgres -c "update pg_database set encoding = 6, datcollate = 'C', datctype = 'C' where datname = 'template1';"
sudo /etc/init.d/postgresql restart
```

## X virtual frame buffer
```
sudo apt-get install xvfb
```

## Qt Webkit
Istall
```
sudo apt-get install qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x
```

## Install Gems
```
bundle install
```

## Set up and import database
```
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:setup
```

## Run the test
```
bundle exec rake db:migrate RAILS_ENV=test  
bundle exec rake
xvfb-run -a bundle exec cucumber
```

## Heroku
> Get API key

```
https://dashboard.heroku.com/account
```

> Migrate

```
heroku run rake db:migrate --app YOUR-APP-NAME
```