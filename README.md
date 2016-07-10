[![Build Status](https://travis-ci.org/shihanng/appengine-flask.svg?branch=master)](https://travis-ci.org/shihanng/appengine-flask)
[![Coverage Status](https://coveralls.io/repos/github/shihanng/appengine-flask/badge.svg?branch=master)](https://coveralls.io/github/shihanng/appengine-flask?branch=master)

A basic working skeleton for Python applications with
[Flask](http://flask.pocoo.org/) on
[Google App Engine](https://cloud.google.com/appengine/).

## Requirements

1. Python 2.7.x.
2. [Google App Engine SDK for Python](https://cloud.google.com/appengine/downloads#Google_App_Engine_SDK_for_Python).

## Dependencies

1. See [requirements.txt](requirements.txt) and [Makefile](Makefile).
2. Add new dependency,

    ```sh
    $ source venv/bin/activate
    $ pip install -t src/lib <package>
    ```

## Unit tests

```sh
$ python ./src/runtests.py <sdk-path> ./src/tests
```
