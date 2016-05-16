# MOKA API Client

###1. Create new apps on moka API provider ###
* Go to `https://apps.mokapos.com`
* Add Apps
* Add 'Name'
* Add Redirect URI: `http://localhost:3002/auth/moka/callback`

###2. Create file .env: ###
```
MOKA_HOST_PROVIDER=https://api.mokapos.com
MOKA_APP_ID=your app_id
MOKA_SECRET_KEY=your secret key
```

###3. Running rails moka api-client ###
`rails s --port=3002`
