
# [Deploy PGAdmin4 to Google Cloud Run](https://medium.com/@kobby.fletcher/deploy-pgadmin4-to-google-cloud-run-a5e5988784fb)

## init Dockerfile
```

FROM dpage/pgadmin4

ENV PGADMIN_DEFAULT_EMAIL=rob.lockhart@yahoo.co.uk

ENV PGADMIN_DEFAULT_PASSWORD=password

# fix CSRF tockes do not match issue
ENV PGADMIN_CONFIG_WTF_CSRF_CHECK_DEFAULT=False

ENV PGADMIN_LISTEN_PORT=8080

```

```
gcloud builds submit --tag gcr.io/heidless-ror-0/pgadmin4

gcloud run deploy --image gcr.io/heidless-ror-0/pgadmin4 --platform managed


```

# [gcloud builds submit --tag gcr.io/heidless-ror-0/pgadmin4](https://www.pgadmin.org/docs/pgadmin4/latest/cloud_google_cloud_sql.html)

