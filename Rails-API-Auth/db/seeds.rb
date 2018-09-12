User.create(name: "joe@localhost.com", password: "pass123456", username: "joe")
service = Service.create(name: "Post service", url: "http://localhost:5001", token: "post-service-sample-token")
Route.create(service: service, verb: "get", url_pattern: "posts", version: "v1")