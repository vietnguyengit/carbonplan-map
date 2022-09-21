# AODN-CarbonPlan-Map

## Local Dev

### Build

`docker build -t carbonplan .`

### Run

`docker run -d -p 80:3000 --name carbonplan carbonplan:latest` (either 3000 or 8080, depending on available ports)