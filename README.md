[![Stories in Ready](https://badge.waffle.io/fybwid/dodi.svg?label=ready&title=Ready)](http://waffle.io/fybwid/dodi)
[![Build Status](https://semaphoreci.com/api/v1/fybwid/dodi/branches/master/badge.svg)](https://semaphoreci.com/fybwid/dodi)


# dodi
Dokumentasi Digital

## Ruby
Version 2.4.0
> `rvm --default use 2.4.0`

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
bundle exec rake spec
xvfb-run -a bundle exec cucumber
```

## Heroku
Get API key
```
https://dashboard.heroku.com/account
```