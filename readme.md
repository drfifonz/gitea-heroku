# Create app
```bash
heroku create --manifest --stack container --region eu gitea-heroku && heroku git:remote -a gitea-heroku
```
# Push
```bash
./push.sh

```

# Delete app
```bash
heroku apps:destroy --app gitea-heroku --confirm gitea-heroku
```



https://devcenter.heroku.com/articles/build-docker-images-heroku-yml#create-your-app-from-setup