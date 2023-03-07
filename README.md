# flutter_vrt_sample

Visual Regression Test for Flutter

This compares the current screenshots with the previous screenshots, and creates an HTML report for their diffs like below.

|new screenshots|screenshots diff|
|---|---|
|![](https://user-images.githubusercontent.com/35392365/223407356-8d0276c9-0041-4e13-b68c-f6c719890e40.png)|![](https://user-images.githubusercontent.com/35392365/223407374-93b563a4-e8ee-4ca3-ae0b-ffcb8a57ee82.png)|

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
