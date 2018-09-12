# Rails Microservice API Gateway prototype
This is mixing up of some API designs for microservice using Rails

[Rails-Microservice-Prototype](docs/rails-microservice-prototype.png)

## Setting up

### API Gateway
```bash
cd Rails-API-Auth
# edit config/database.yml
rake db:create db:migrate db:seed
rails s -p 5000
```

### Post service
```bash
cd post_service
rake db:create db:migrate db:seed
rails s -p 5001
```

### Testing using postman
```
POST http://localhost:5000/user_token
# body raw data
{
  "auth": {
    "email": "joe@localhost.com",
    "password": "pass123456"
  }
}

# sample response
{
    "jwt": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MzczMjc0OTgsInN1YiI6MX0.hr29yv10mdTgXEFE84YZCjVAD-8bIGOI3Dh7h415wCM"
}

# Sample auth
GET http://localhost:5000/auth
# with headers
Content-Type: application/json
Authorization: Bearer <generated_jwt_above>

# Query post service
GET http://localhost:5000/api/v1/posts
# with headers
Content-Type: application/json
Authorization Bearer <generated_jwt_above>
```

References:

Rails token-based authentication blueprint
https://github.com/jameskropp/Rails-API-Auth

Template for a basic authorization API using Ruby on Rails.
Tutorial Link - https://medium.com/@jkropp/building-a-simple-token-based-authorization-api-with-rails-a5c181b83e02

Ruby on Rails API Gateway
API gateway serves as single point of entry to microservices and for all client types. The idea is to provide a single entry point for all the fine-grained APIs of the individual services. This is a simple api routing app.
https://github.com/rzkmr/gateway

JWT-Ruby https://github.com/jwt/ruby-jwt
Knock gem https://github.com/nsarno/knock
