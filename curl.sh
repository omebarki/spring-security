#client auth
curl --request POST \
  --url http://localhost:8080/oauth/token?grant_type=client_credentials \
  --header 'Authorization: Basic d2ViLmFwaS5jbGllbnQ6cGFzc3dvcmQ=' \
  --header 'Content-Type: application/x-www-form-urlencoded'

#resource access
curl -s  http://localhost:8081/static/index.html -H 'Authorization: bearer b47d29bd-6ddc-4692-ab71-6db9039a1999'