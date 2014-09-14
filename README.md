# Simple

For education

## install

    sudo gem install sinatra
    sudo gem install sqlite3
    sudo gem install sinatra-contrib

## running

    ruby main.rb

## schema

    CREATE TABLE posts (
      id INTEGER PRIMARY KEY,
      text TEXT,
      img_file_name TEXT,
      star_count INTEGER default 0
    );
