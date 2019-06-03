#client auth
curl --request POST \
  --url http://localhost:8080/oauth/token?grant_type=client_credentials \
  --header 'Authorization: Basic d2ViLmFwaS5jbGllbnQ6cGFzc3dvcmQ=' \
  --header 'Content-Type: application/x-www-form-urlencoded'

#resource access
curl -s  http://localhost:8080/static/index.html --header 'Authorization: bearer 4018dd6a-9a56-4fe7-8e57-bb03336d1b8a'