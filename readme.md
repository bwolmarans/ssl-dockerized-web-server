#### Create a Self-Signed SSL Certificate
- generate CSR (Certificate Signing Request)
    ```sudo openssl req -new > new.ssl.csr```
- generate the certificate
    ```
    sudo openssl rsa -in privkey.pem -out new.cert.key
    sudo openssl x509 \
        -in new.ssl.csr \
        -out new.cert.cert \
        -req -signkey new.cert.key \
        -days 60
    ```
- rename `new.cert.cert` to `server.crt` and `new.cert.key` to `server.key`
#### References:
- [Creating Self-Signed SSL Certificates for Apache on Linux](https://www.linux.com/training-tutorials/creating-self-signed-ssl-certificates-apache-linux/)
- [httpd Docker hub](https://hub.docker.com/_/httpd)