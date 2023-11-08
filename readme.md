# Gitea deploy on heroku cloud
Solution for automated deployment and configuration for rootles gitea on heroku. 

## Before first run

For using heroku.yml file install heroku beta version and proper plugins following
[link](https://devcenter.heroku.com/articles/build-docker-images-heroku-yml#create-your-app-from-setup).

---

# Create app
```bash
heroku create --manifest --stack container --region eu gitea-heroku && heroku git:remote -a gitea-heroku
```

# Delete app
```bash
heroku apps:destroy --app gitea-heroku --confirm gitea-heroku
```

# Push changes heroku
```bash
./push.sh
```




