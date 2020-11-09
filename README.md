# Nginx Explorer

Just a little container to expose a file system with a basic auth

# Run

See tests/docker-compose.yml for example

# Build

```
./build.sh
```

# .htpasswd

[See here](https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication/)

The .htpasswd should be at the root directory (Mounted on /usr/share/nginx/html in the container)