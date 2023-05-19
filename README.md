# supervisord-container
A docker container that contains an isolated installation of supervisor.

The dockerfile will install supervisor and create a default configuration file for it.

Installation and the config file will be in the `/pysupervisor` folder.

An example of how to use this container is in the [flask_dockerfile_example](flask_dockerfile_example) folder.

This example contains a Flask app. If you want to 
use this on your own Flask app copy the `Dockerfile`,
`gunicorn.conf.py` and `supervisor.apps.ini` files into your project folder.