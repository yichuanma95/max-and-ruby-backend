# Max & Ruby: Back-end

This project is the back-end of my Max & Ruby full-stack fan app. The stack used for this app
includes Angular for the front-end, Spring for the back-end, and MySQL for the database of
characters and episodes. My app will only focus on the characters and episodes in Seasons 1-5 of
the series because in those episodes, Max only says a word or two for each time he speaks.

Max & Ruby characters and concept originally created by Rosemary Wells. The Max & Ruby cartoon
series, based on the books by Wells, was originally produced by Nelvana Ltd. in Canada in 2002-2019
and aired in the U.S. on Nick Jr.

This project was generated with the Spring Boot CLI.

## Prerequisites

You will need the following before building and running this app:
* Java 1.8
* Spring Boot
* Maven
* MySQL
* A Java IDE (like IntelliJ; I used IntelliJ for this project)

#### Database Setup
Before building and running this app, you should set up the database. You can do so by running
the max-and-ruby-DB.sql script using the MySQL CLI or the MySQL Workbench GUI tool.

#### Application Properties
In src/main, create a new "resources" directory, and in the new directory, create a new
"application.properties" file. In this new file, add the following:
```
server.port=8080
spring.datasource.url=jdbc:mysql://localhost:3306/max_and_ruby?useUnicode=true\
  &useJDBCCompliantTimeZoneShift=true&useLegacyDatetimeCode=true&serverTimezone=UTC
spring.datasource.username=[YOUR MySQL DATABASE USERNAME]
spring.datasource.password=[YOUR MySQL DATABASE PASSWORD]
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.datasource.driver-class-name=com.mysql.jdbc.Driver
spring.jpa.hibernate.naming-strategy=org.hibernate.cfg.ImprovedNamingStrategy
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL5InnoDBDialect
spring.jpa.properties.hibernate.show_sql=true
spring.jpa.properties.hibernate.use_sql_comments=true
spring.jpa.properties.hibernate.format_sql=true
spring.jpa.properties.hibernate.type=trace
```

#### Credentials
In the root directory of this project, create a new file called "credentials.txt". In this file,
set your own admin username in the first line and your own admin password in the second line.
Without this file, the app will break.

Additionally, "credentials.txt" will be ignored by Git for credential security purposes.

## Starting the server

Once you have successfully done everything above this section, run the DemoApplication
configuration using the IDE or run `mvn spring-boot:run` from a terminal.
