# Google Cloud Functions with Ruby using Hanami::API

## using local

```
$ bundle install
$ bundle exec functions-framework-ruby --source=app.rb --target=hanami_api_example
```

## deploy with gcloud

```
$ gcloud functions deploy hanami_api_example \
  --project=[your_project_id] \
  --runtime=ruby27 \
  --trigger-http
```
