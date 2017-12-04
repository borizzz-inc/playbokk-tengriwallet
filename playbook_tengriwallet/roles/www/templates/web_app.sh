#!/usr/bin/env bash
make_response () {
echo -en "HTTP/1.1 200 OK\r\nConnection: keep-alive\r\n\r\n
Hello from MY APP!
$(PGPASSWORD=qwerty psql -U postgres -h 10.20.30.42 -p 5432 -c '\l')"
}
while make_response | nc -l "${WEB_API_PORT:-8001}"; do
echo "================================================"
done