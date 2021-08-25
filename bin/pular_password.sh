CSRF_TOKEN=$(curl http://127.0.0.1:7750/pulsar-manager/csrf-token) &&
curl -H 'X-XSRF-TOKEN: $CSRF_TOKEN' \
   -H 'Cookie: XSRF-TOKEN=$CSRF_TOKEN;' \
   -H "Content-Type: application/json" \
   -X PUT http://127.0.0.1:7750/pulsar-manager/users/superuser \
   -d '{"name": "admin", "password": "123456", "description": "设置管理员账号密码", "email": "admin@test.org"}'
