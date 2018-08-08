# MOKA API Client

### Requirements
* Ruby Version 2.2.4
* Rails 4.2.5.1

### 1. Create new apps on moka API provider
* Create a free trial account at [https://backoffice.mokapos.com/register?utm_source=developers](https://backoffice.mokapos.com/register?utm_source=developers)
* Go to [https://connect.mokapos.com](https://connect.mokapos.com)
* Click Create a New App
* On the first page, fill the Name and choose the category. Add this address for the  Redirect URI: `https://localhost:3002/auth/moka/callback`
* Follow the app creation process until you can save the details

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
