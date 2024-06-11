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

## Tech stack
- Ruby -v3.3.2
- Rails -v7.0.8.4
- PostgresSQL
