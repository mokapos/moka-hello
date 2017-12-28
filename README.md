# MOKA API Client

### Requirements
* Ruby Version 2.2.4
* Rails 4.2.5.1




### 1. Create new apps on moka API provider
* Go to `https://api.mokapos.com`
* Add Apps (for testing purposes, you can use a free trial account)
* Add 'Name'
* Add Redirect URI: `https://localhost:3002/auth/moka/callback`

### 2. Create file .env:
```
MOKA_URL=https://www.mokapos.com
MOKA_HOST_PROVIDER=https://api.mokapos.com
MOKA_APP_ID=your app_id
MOKA_SECRET_KEY=your secret key
```

### 3. Running moka-hello
* Clone the project
* `bundle update`
* `bundle install`
* `thin start --ssl -p 3002`
* Open your browser and go to `https://localhost:3002`
