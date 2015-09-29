## Docker image for Perl 5.20.1 (via plenv) ##

This image is based on [moltar/plenv](https://registry.hub.docker.com/u/moltar/plenv/) (see docs).

This image is available as a trusted build in [Docker Hub](https://registry.hub.docker.com/u/moltar/plenv-perl-5.20.1/).

## Usage ##

```
docker pull moltar/plenv-perl-5.20.1
docker run --rm moltar/plenv-perl-5.20.1 exec perl -v
```