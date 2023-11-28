openssl x509 -req -in server.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out server.crt -days 500 -sha256 -extfile v3.ext
cat server.crt >> server.pem
echo "" >> server.pem
cat server.key >> server.pem