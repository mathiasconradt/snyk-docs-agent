If your containers go down, along with the Broker ecosystem, when you detach from their host, run the following to ensure the containers stay online when you log out:
loginctl enable-linger $(whoami)
