To build this docker image, run the following commands in the terminal:
```
docker build -t parallel .
```

To run this docker image, run the following commands in the terminal:
```
docker run -p 6379:6379 -p 8787:8787 -e PASSWORD=bioc -d parallel
```

The Rstudio server will be available at `http://localhost:8787/`
* Username: rstudio
* Password: bioc

## Run vignette
To run the vignette, run the following commands in R:
```
vignette("workshop")
```


