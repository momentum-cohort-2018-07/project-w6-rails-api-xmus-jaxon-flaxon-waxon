# README

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
Welcome to Hippo's API!  This API was created on Rails v5.2.1, and Ruby v2.5.1.  The API is organized around REST.  Alls request and response bodies, including the errors, are encoded in JSon.  All tests conducted for functionality were done on a REST client called Postman. -->

The program requires basic user authentication by signing up for a username and password.  Upon registration, a unique API token is assigned to each username, which controls what can and can not be accessed on the program.  Passwords are encrypted in a hash using the 'gem bcrypt.'  Documentation for bcrypt can be found at this link: "https://rubygems.org/gems/bcrypt/versions/3.1.12".  

To create a username and password using Postman, create a  POST request at localhost:3000/api/users/ in the following JSON template: 
{"user":
      {  
        "username": "username",
        "password": "password"
    }
}

This is generate a unique API token for your user as well as a unique user id.  Once logged in, to create a "toot," create a POST request on Postman at localhost:3000/api/users/:user_id/toots, placing your user id in its proper place, and creating a raw JSon body toot.  You would need your unique API token placed in Postman authorization tab in order to access this part of the application.

To access a complete index of all your "toots," create a GET request on Postman at localhost:3000/api/users/:user_id/toots, again placing your user ID in the proper place.  Toots cannot be edited in anyway, however, if you want to delete a toot you may have created, create a DELETE request on Postman at localhost:3000/api/users/:user_id/toots/:id, placing your user id and that specific toot id in their proper places. 

An additional feature to of the API allows you to follow certain users.



<!-- * Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
