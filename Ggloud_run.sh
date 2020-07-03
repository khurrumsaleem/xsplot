
# Instructions for google cloud run

docker build -t gcr.io/xsplot/gui:latest . --no-cache

# test it locally with 

docker run -p 8080:8080 gcr.io/xsplot/gui:latest

# assuming gcloud init has been run

docker push gcr.io/find-tbr-cloud-run/api:latest
