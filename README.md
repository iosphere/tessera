# tessera

tessara provides a tilelive server for hosting vector-tiles provided
by a PostGIS database.


```
# Usage:

docker run \
       -it \
       --rm \
       -v$(pwd)/openmaptiles.tm2source:/projects/openmaptiles.tm2source \
       -p 8080:8080 iosphere/tessera
```
