# Final Project Phase I – Rails Web Application
The overall goal of this assignment is to develop a Rails based application that adopts the MVC pattern and covers all material learnt in class. The application should be hosted on Heroku.

# Functional Requirements
1. The application has at least 4 models with their associated controllers & views
2. The application has at least 1 nested resource as defined in class
3. The models’ relationships should use at least 3 of the following 4:
     one-to-one
     one-to-many
     many-to-many
     rich one-to-many or many-to-many (has-through)
4. The application has a user (or similar) model (included in the 4 models) with proper authentication & authorization
5. The application uses sessions to identify logged in users
6. The application illustrates proper use of DRY using partials
   
# Technical Requirements
1. The application is functional (no errors) and logically sound
2. The application is hosted on Heroku
3. CSS should be in a stylesheet and do not use inline styling
4. Add seed data both locally and on Heroku
5. Create test accounts & provide their details
6. Submission should include DB ER diagram and a description of the application flow
7. Add all project files in a zip archive and upload to Avenue
8. Provide the link to the Heroku hosted website in your submission
9. Include any special instructions necessary to run the application in your submission

My Final project is based on Instagram Web application. In the Instagram web application the user will be able to post along with captions. Comments can be added to the uploaded post. The user can also create a user profile by uploading their image and bio. The database ER diagram is as follows
![image](https://github.com/Sumanth-Mahabaleshwar-Bhat/Instagram-WebApplication-RubyOnRailsProject/assets/120843537/568a9564-1282-4733-ae88-0c18c1feab0e)

As per the database ER diagram,
User can have many posts and posts can have many comments
User can have a single user profile

# Snapshots:
# Login page:
![image](https://github.com/Sumanth-Mahabaleshwar-Bhat/Instagram-WebApplication-RubyOnRailsProject/assets/120843537/ae955b70-25a4-42af-93ff-00a67a012cbb)

# Posts page:
![image](https://github.com/Sumanth-Mahabaleshwar-Bhat/Instagram-WebApplication-RubyOnRailsProject/assets/120843537/41da4115-e68e-4c48-aeee-a7164bb7e46c)

When the user clicks on User Profile button the user will be navigated to User Profile page
![image](https://github.com/Sumanth-Mahabaleshwar-Bhat/Instagram-WebApplication-RubyOnRailsProject/assets/120843537/665c3e25-109c-4dd4-a080-b809675ef9c9)
![image](https://github.com/Sumanth-Mahabaleshwar-Bhat/Instagram-WebApplication-RubyOnRailsProject/assets/120843537/3a5ac001-c97b-488a-815b-64b7eddba6f5)

User can also edit their profiles and posts.
![image](https://github.com/Sumanth-Mahabaleshwar-Bhat/Instagram-WebApplication-RubyOnRailsProject/assets/120843537/627950fc-5ceb-4773-a24d-320ea77b8e11)



# Final Project Phase II – Rails Web Application
The overall goal of this assignment is to add an API to the web application from the first phase and develop a simple mobile application that consumes this API or provide extensive API testing using another tool such as Postman. The web application should be hosted on Heroku.

# Functional Requirements
1. The application implements a fully functional json-based API for all relevant endpoints as necessary (at least 5 endpoints)
2. The application has an API based user authentication & authorization framework (included in the 5 endpoints)
3. The application uses Devise gem for implementing the complete user authentication/authorization framework
4. The mobile application (or Postman) tests the following:
  • User sign-up/login
  • At least one page that uses a GET request responding with a collection of data
  • At least one details page that uses a GET request for retrieving details of a single element in the data collection

# Bonus
1. The application has an image upload functionality
2. The mobile application (or API testing process) (in addition to the above) has:
  • At least one action that uses a POST or PATCH request
  • At least one action that uses a DELETE request
3. The web application sends notification emails based on certain user actions or events (other than registration emails)
   
# Technical Requirements
1. The application is functional (no errors) and logically sound
2. The application is hosted on Heroku
3. Submission should include DB ER diagram and a description of the application flow
4. Submission should document the different API endpoints and their expected response
5. Add all project files in a zip archive and upload to Avenue
6. Submit a video (or link to a video) showing the API testing whether through a mobile application or Postman
7. Provide the link to the Heroku hosted website in your submission
8. Add seed data both locally and on Heroku
9. Create test accounts & provide their details
10. Add link to video recording for testing your web application
11. Include any special instructions necessary to run the application in your submission

APIs are created to perform api testing in Postman. 
To list all the posts - http://localhost:3000/api/posts (GET) - 
Expected response: [ { "id": 96, "caption": "Programming Ruby on rails is fun",
"user_id": 45, "created_at": "2022-04-23T00:48:10.387Z", "updated_at": "2022-04-23T00:48:10.387Z" }, { "id": 98, "caption": "Chilling with friends!!!", "user_id": 44, "created_at": "2022-04-23T00:48:10.707Z", "updated_at": "2022-04-23T00:48:10.707Z" }, { "id": 99, "caption": "Happy birthday my dear bestie!!!!", "user_id": 45, "created_at": "2022-04-23T00:48:10.866Z", "updated_at": "2022-04-23T00:48:10.866Z" }, { "id": 100, "caption": "A day to remember!!!", "user_id": 42, "created_at": "2022-04-23T03:13:34.217Z", "updated_at": "2022-04-23T03:13:34.217Z" } ]

To list a particular post - http://localhost:3000/api/posts/100 (GET) 
{ "id": 100, "caption": "A day to remember!!!", "user_id": 42, "created_at": "2022-04-23T03:13:34.217Z", "updated_at": "2022-04-23T03:13:34.217Z", "comments": [ { "id": 13, "comment_text": "Looking very cool", "post_id": 100, "created_at": "2022-04-23T03:13:50.514Z", "updated_at": "2022-04-23T03:13:50.514Z" } ] }
