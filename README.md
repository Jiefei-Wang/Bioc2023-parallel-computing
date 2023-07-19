To build this docker image, run the following commands in the terminal:
```
docker build -t parallel .
```

To run this docker image, run the following commands in the terminal:
```
docker run -p 6379:6379 -p 8787:8787 -e PASSWORD=bioc -d parallel
```
 