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

## Run the application as a docker container

**1. Create the Docker Image using command from the directory where Dockerfile is placed.**

This command instruct Docker to create the image of our application and tagged it as user-app:

```bash
docker build -t user-app .
```

**2. Starting the MySQL container**

To start MySQL, we need MySQL Docker image. We can pull the same from Docker Hub. Note that Docker Hub is the repository which contains the images of existing software. Note that we are using latest version of MySQL.

```bash
docker pull mysql:latest
```

**3. Run MySQL as docker container with container name as localhost, database name user_db, username root and password as 1234**

```bash
docker run --name localhost -e MYSQL_ROOT_PASSWORD=1234 -e MYSQL_DATABASE=user_db -e MYSQL_USER=appuser -e MYSQL_PASSWORD=1234 -d mysql:latest
```

**4. Run the Sprint Boot application user-app in the same manner using the following command:**

```bash
docker run -d -p 8089:8089 --name user-app --link localhost:mysql user-app
```

##Useful commands:
```bash
docker container ls => List the active containers
docker container stop <container-name> => Stops the container
docker container rm <container-name> => Remove the stopped container
```

## Testing the REST API
We can use Postman to test the REST API 

Rest endpoints:

**1. View all users**
```bash
Method: GET
localhost:8089/api/users
```

**2. View a specific user**
```bash
Method: GET
localhost:8089/api/users/{id}
```

**3. 1.  Create a user.**
```bash
Method: POST
localhost:8089/api/users
```

**3. 2. Set the example JSON request in the body raw**
```bash
{
	"firstName" : "Dido",
	"lastName" : "Petrov",
	"email" : "dpetrov@yahoo.com"
}
```

**3. 3. Set the header property to set the content type as application/json**

**4. 1. Update a user.**
```bash
Method: PUT
localhost:8089/api/users
```

**4. 2. Set the example JSON request in the body raw**
```bash
{
	"id" : 1,
	"firstName" : "Petar",
	"lastName" : "Petrov",
	"email" : "ppetrov@gmail.com"
}
```

**4. 3. Set the header property to set the content type as application/json**

**4. Delete a user.**
```bash
Method: DELETE
localhost:8089/api/users/{id}
```

