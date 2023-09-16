
To build image:
$ docker build -t fast-api-a .

To run a fast-api-a container:
$ docker run -p 8000:8000 fast-api-a

And access it through a browser:
127.0.0.1:8000/health/
