# dating-app-api

## Setup
### docker build
```
docker compose build
```

### create db
```
docker compose run --rm web bin/rails db:create 
```

### start rails
```
docker compose up web
```

## For development
### enter rails console
```
docker compose exec web sh
bin/rails c
```

### bundle install
```
docker compose exec web sh
bundle install
```
