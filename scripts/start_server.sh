#!/bin/bash -xe

RAILS_ENV=production bundle exec rails db:create
RAILS_ENV=production bundle exec rails db:migrate

RAILS_ENV=production bundle exec puma -C config/puma.rb -p 8080
