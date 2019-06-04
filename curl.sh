#client auth
curl -X POST \
  --url http://localhost:8080/oauth/token?grant_type=client_credentials \
  -H 'Authorization: Basic d2ViLmFwaS5jbGllbnQ6cGFzc3dvcmQ=' \
  -H 'Content-Type: application/x-www-form-urlencoded'

#resource access
curl -s  http://localhost:8081/static/index.html -H 'Authorization: bearer eec2fa8e-869e-4e58-9374-26ddb562de78'