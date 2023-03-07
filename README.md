# flutter_vrt_sample

## Getting Started

```bash
$ make setup/app
$ export REG_GITHUB_CLIENT_ID=XXXXXX
$ export S3_BUCKET_NAME=XXXXXX
$ export AWS_ACCESS_KEY_ID=XXXXXX
$ export AWS_SECRET_ACCESS_KEY=XXXXXX
```

## Generate screenshots

```bash
$ make test/golden
```

## Compare screenshots and Upload the results to S3

```bash
$ make run/reg-suit
```
