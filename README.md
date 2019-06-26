## Overview
Use <https://github.com/simon-weber/gmusicapi> to upload music files to Google Music.

## Build
```
docker build -t jiesu/google-music:$(dpkg --print-architecture) .
```

## Run
```
docker run --rm -v $(pwd):/files -v /path/to/token/dir:/config jiesu/google-music:$(dpkg --print-architecture)
```

