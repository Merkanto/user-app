# User Sample App

Build REST API for a simple User application using Spring Boot, MySQL, JPA and Hibernate.

## Requirements

1. Java - 1.8.x

2. Maven - 3.x.x

3. MySQL - 8.x.x

## Steps to Setup

**1. Clone the application**

```bash
git clone https://github.com/Merkanto/user-app.git
```

**2. Create Mysql database**
```bash
create database user_db
```

**3. Change mysql username and password as per your installation**

+ open `src/main/resources/application.properties`

+ change `spring.datasource.username` and `spring.datasource.password` as per your mysql installation

**4. Use data.sql to initalize data**

+ execute `src/main/resources/my-sql-init-data` in your MySQL installation

**5. Build and run the app using maven**

```bash
mvn package
java -jar target/user-app-1.0.0.jar
```

Alternatively, you can run the app without packaging it using -

```bash
mvn spring-boot:run
```

The app will start running at <http://localhost:8080>.

## Explore Rest APIs

The app defines following CRUD APIs.

    GET /api/users
    
    POST /api//users
    
    GET /api/users/{id}
    
    PUT /api/users
    
    DELETE /api/users/{id}

You can test them using Postman or any other rest client.