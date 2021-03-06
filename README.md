# EYEHOPPING (Marketplace Platform)
## Link: https://eye-shopping2.herokuapp.com/
## Repo: https://github.com/wlei6277/eye_shopping

### Description of platform
**Problem/Purpose**
- Problem: As the internet has become increasingly integrated and adopted by mainstream society the number of online products and services has grown exponentially. Almost any product which is available for purchase offline can be found on the internet. The problem with today's online shopping experience is that although the range of online products is massive, filtering this range to find the product which will fulfill each individual consumers needs and wants is becoming increasingly difficult. Pioneriing behavourial economics and psychology studies reveal that humans find it increasingly difficult to make a decision when the number of choices grows. 

- Giant companies are getting better and better at targeting individual consumer wants and needs through avenues such as paid SEO, programmatic advertising (Google AdWords / Facebook Marketing) and influencer campaigns. As the competition instensifies, industries with more constrained resources are finding it increasingly difficult to reach consumers. From the consumers perspective this means that finding products which are outside of the boundarys of well funded marketing budgets is more cubersome.  

- Purpose: 
We want to create a platform that provides the online tool where users can not only create their own list of products they like ,but can be inspired to share and create interaction even with the list of others. They will be able to find innovative and updated products available online to provide them with an even better way to find what they need. It can be a tool to find yours out of a million.

**Current Functionality/Features**
- The user can save items found online in one location so they can track back those items whenever they want
- The user can create a mood-board like shopping cart to express their style and personality which shared with other users
- The user can see and follow other users boards to get exposure to other peoples styles and inspiration for future online shopping
- The user can earn revenue by redirecting traffic from their mood board and products to the final retail website 
- The users can donate to other users to express gratitude for creating products / mood-boards 
- Eye Shopping will always be free to use as well as ad-free because the commercial model of the platform is through content creation (affliate marketing) 

**Features Beyond The Scope of Proof of Concept**
- Currently the Eye Shopping platform funds the link-click revenue generated for users, in the future this would be paid by the   destination retailer
- The user can display their mood-board on their own website / blog (e.g. through an iFrame)
- The user can automatically create and upload products to Eye Shopping using a browser plugin 
- The user can automatically create and upload products through the retailers website / platform (e.g. payment through PayPal)
- A user will be able to automatically see product stock levels (with out-of-stock items being greyed out)
- Users will be able to create more than one board based on factors such as product selection, themes, occassions etc.
- User can create dynamic interactive contents which can be displayed both on the Eye Shopping platform as well as their own website


**Screenshots**
![alt text]( https://github.com/wlei6277/eye_shopping/blob/master/docs/Screenshots/homepage.png  )
![alt text]( https://github.com/wlei6277/eye_shopping/blob/master/docs/Screenshots/myaccount.png  )
![alt text]( https://github.com/wlei6277/eye_shopping/blob/master/docs/Screenshots/myboard.png )
![alt text](https://github.com/wlei6277/eye_shopping/blob/master/docs/Screenshots/following.png  )
![alt text]( https://github.com/wlei6277/eye_shopping/blob/master/docs/Screenshots/favourites.png  )
![alt text]( https://github.com/wlei6277/eye_shopping/blob/master/docs/Screenshots/prdocutpage.png)


**Tech Stack**
  - HTML5
  - CSS3
  -  Bootstrap (CSS Framework for styling)
  -  CSS GRID
  - Simple Form
  - Ruby on Rails 5.2.1
  - Ruby 2.5.1
  - Javascript
  - Devise
  - Cypress
  - Stripe
  - Visual Studio Code 
  - Trello 
  - Git & Github 
  - Heroku 
  - Google Fonts

- Instructions on how to setup, configure and use 

 > git clone https://github.com/wlei6277/eye_shopping.git

 navigate to the directory with the commandline: 

 > cd ~/code/eye-shopping

Inside the commandline at that directory, run the followings :

 > bundle install

Then create the database

 > rails db:create

and run the migrations

 > rails db:migrate

 > rails s

(By default the server runs on Port 3000, so to view the live site on your local machine, head to localhost:3000 )


- **Design Documentation**
![alt text](https://github.com/wlei6277/eye_shopping/blob/master/docs/design/color1.jpg)
![alt text](https://github.com/wlei6277/eye_shopping/blob/master/docs/design/color2.png)
  - Design Process
  Wireframe/Layout --> ColorPalette --> Final Layout/Grid and Styling
 

 
  - **User stories**
 Age: 15 (High school)
Sex: Male

I'm Damien, I want to see which skate board most of my friends like
so that I can tell my mum what to buy me for christmas

I'm Damien, I want to see what colour jewelery girlfriend likes
so that i know what to buy her for valentines day

I'm Damien, I want to make a cool selection of products
so that all the girls can see im trendy

I'm Damien, I want to see what Christiano Ronaldo wears
so that I can pretend I am him


Age: 20
Sex: Female

I'm Sally, I want to create content on Eye Shopping
so that I can earn money when people buy the products i've uploaded

I'm Sally, I want to see Amy is posting 
so that I can get some inspiration from her style.

I'm Sally, I want create the moodboard
so that my boyfriend can stop buying me crappy presents

I'm Sally, I want to see what skateboards my little brother likes
so that I can buy him a cool present

Age: 35
Sex: Female

I'm Amy, I want to create my baby registry list  so my friends can get the items I need for my new baby.

I'm Amy, I want to create my product moodboard so I can present to my followers new upcoming trend.


 - **Workflow diagram**

<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/wireframe/New%20Wireframe%203.png">

 - **Wireframes**
 
<p align="center">
<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/wireframe/MY%20BOARD.png" width="400">
<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/wireframe/MY%20FAVOURITES%20.png" width="400">
<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/wireframe/MY%20FOLLOWING%20LIST.png" width="400">
<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/wireframe/MY%20PROFILE.png" width="400">
<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/wireframe/PRODUCT%20LIST%20(%20MainPage).png" width="400">
<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/wireframe/Product%20page.png" width="400">
</p>

 - **Database ERD**
 
<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/ERD/erd1.png">

   
 - **Project plan&Timeline**
 <img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/timeline.png" >
 
 - **Trello**
<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/trello/trello1.png">
<img src="https://github.com/wlei6277/eye_shopping/blob/master/docs/trello/trello2.png">
 
 
 
**SHORT ANSWER QUESTIONS**

**1.What is the need (i.e. challenge) that you will be addressing in your project?**

Our vision is to create a platform that enables users to collaborate in the online shopping experience. Users can create product listings and display these listings in a mood board (similar to pintrest) which they share with Eye Shopping community. Users can  interact with other user's posts (e.g. through commenting and favouriting products) and draw inspiration for future online shopping. They will be able to find innovative and updated products available online to provide them with an even better way to find what they need. It can be a tool to find yours out of a million.

**2.Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?**

- As the internet has become increasingly integrated and adopted by mainstream society the number of online products and services has grown exponentially. Almost any product which is available for purchase offline can be found on the internet. The problem with today's online shopping experience is that although the range of online products is massive, filtering this range to find the product which will fulfill each individual consumers needs and wants is becoming increasingly difficult. Pioneriing behavourial economics and psychology studies reveal that humans find it increasingly difficult to make a decision when the number of choices grows. 

- Giant companies are getting better and better at targeting individual consumer wants and needs through avenues such as paid SEO, programmatic advertising (Google AdWords / Facebook Marketing) and influencer campaigns. As the competition instensifies, industries with more constrained resources are finding it increasingly difficult to reach consumers. From the consumers perspective this means that finding products which are outside of the boundarys of well funded marketing budgets is more cubersome.  

**3.Describe the project will you be conducting and how. your App will address the needs.**
Our project aim is to build a user-driven platform which improves the shopping experience of the online community.  

Users of our platform will experience an ad-free space where they can find both unique and trending products. The platform will enable users to create, share and interact with posts which link to a product which is purchaseable online. Users generate income from the content they create on Eye Shopping, supported by affiliate marketing (e.g. Amazon Associates) when site vistors are redirected to retailers websites when they click a link on a post. This will incentivise content creation and enable users to find unique products which are not readily visible in other channels (e.g. through google or advertising).   




**4.Describe the network infrastructure the App may be based on.**

Users interact with our app using browser software (e.g. Google Chrome, Mozilla Firefox, Safari etc..) on an internet connected device. The interaction occurs when a user (client device) makes HTTP (the protocol which enables internet devices to communicate with each other through GET / PATCH / PUT / DELETE requests) requests to our server which is hosted on the Heroku platform. Puma (our server side software) makes the code and data hosted on Heroku available to the client device in order to facilitate the HTTP requests. Our database is also hosted Heroku. When users create and interact with data on our website they are interacting with this database.

Eye-shopping also leverages a number of third party services to create the user experience (Stripe for payments and AWS for active record storage of images). These services have their own infrastructure considerations but Eye Shopping is able to utilise their functionality via the same client-server HTTP request mechanism. When users interact with these services on our app, Eye Shopping makes a HTTP requests to the involved third party and parses the response back to the user (this can create a number of different experiences e.g. the user is redirected to stripe checkout / the user uploads a product image which is stored on an AWS server).       


**5.Identify and describe the software to be used in your App.**

Wireframe and design software (what we used to develop wireframes to ensure we had a low-fidelty design to guide development at all stages of the project)
> -Balsamiq

Text editor (what we used to write the code in our app)
> -Visual Studio Code

Source control
> -Git
> -Github

Colloboration tools (software we leveraged to work together and colloborate throughout the development lifecycle)
> -Trello (project management)
> -Slack

Markup language (the language to structure the content of our website)
> -HTML5

Page styling (the software we used to make the content on our website match the design)
> -CSS3
> -SASS (CSS Framwork for styling)
> -Bootstrap (CSS Framework for styling)
> -Google Fonts

Development languages (the primary programming languages our app is written in)
> -Ruby on Rails 5.2.1
> -Ruby 2.5.1
> -Javascript

Hosting platform (the software and services which hold our data and code)
> -Heroku (deployment)

Server side language (how our app code and data is made available to the internet) 
> -Puma 

Testing (how we ensured our app functioned as intended)
> -Postman
> -Cypress



**6.Identify the database to be used in your App and provide a justification for your choice.**
Postgresql- A relational, Structured Query Language (SQL) database.

We utilised Postgresql because it is a an object-relational database which fits within the Rails ORM model. This is optimal for the production of dynamic websites because data can easily be stored and visualised within a RESTful pattern. Data is stored in a collection of tables (with a similar appearance to spreadsheets) which we can access using the SQL language. In fact we don't even have to learn SQL because we can leverage the ORM within rails to run SQL queries for us. 

There a number of different SQL databases we have could have chosen instead of postgresql. The pros and cons of chosing postgres are as follows:

Pro:
- Implements the SQL standard well
- It supports lots of data types
- It is well configured for performance optimisation

Con:
- Not as wide-spread as MySQL
- Does not have the same level of community support



**Identify and describe the production database setup (i.e. postgres instance).**

Creating our database with Postgres, we generate the empty directory. In order to save our data, we have to create the table to specify the position of storage.
Our postgres instance is one to many relationships using 8	 tables. [link to ERD] https://dbdiagram.io/d/5cc63f6cf7c5bb70c72fc97e .



**Describe the architecture of your App.**

Our app is written in the Rails MVC architectural pattern. 

MVC stands for model, view and controller . Each section of code (i.e. the Model / View / Controller) has a specific responsiblity within the web application which creates the users experience at a designated end point (the route). The code regarding data storage is written inside of a model, code to display content to the user is written inside of a view and the logic or glue that connects the model and the view is written into the controller.


**Explain the different high-level components (abstractions) in your App.**

The following high-level abstractions enable our Ruby on Rails application to function as intended:
  - MVC architecture - code is broken down into files, each with a specific purpose within the dynamic website (e.g. code written in models handles data storage). This supports a faster development cycle and enables us to leverage abstractions already baked into Rails (e.g. form view helpers)      
  - Routing - Configuring routes in the Rails routing file enables users to interact with our site through HTTP requests. Users can navigate and interact with our website using the routes we defined in the routing file. 
  - HTTP - a protocol which enables internet connected devices to connect to each other via request (Get, Post, Put, Patch, Delete). This enables the client device of the user to communicate with our server via our application program interface. 
  - APIs - We leveraged the Stripe and AWS APIs to add additional functionality to our application without having to develop this internally. This works because Stripe and AWS have already built the code for this functionality and have enabled us to access this functionality in our own application through their own routing mechanism.
  - Gems - we leveraged a number of Ruby gems to speed up development and add additional functionality (e.g. Devise, Bootstrap and Cypress) 




**Detail any third party services that your App will use.**

- AWS cloud services platform - we use this for active storage of User and Product images. When a user uploads a (product / profile) image our application sends AWS a http request to store the image on their server. 
- STRIPE Implementing a payment system - we use this to accept payment from users and allow them to donate to other users. When a user donates to other user they are sent to a stripe checkout with metadata about the transaction (using a Get request to stripe). They then complete the transaction on Stripes appliction and are redirected to the Eye Shopping page (Stripe sends EyeShopping a get request). Eye Shopping also recieves a POST request from Stripe via webhook once the transaction is completed - this routes to a method which confirms the payment 


**Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).**
At the level of our first prototype, the structure is very similar with PINTEREST or INSTAGRAM. Content (data) is user driven and is largely focused on images. As in PINTREST or INSTAGRAM our users are able to follow and share content with other users as well as favourite/ bookmark content.

Our main point of difference is to develop the features of being able to retrieve the sales commissions of the posts that users have created. So the final version of our app will be the mix of PINTEREST and all other online redirect shopping sites like LYST.

**Discuss the database relations to be implemented.**
Currently the database have eight tables.

1. Products - storing information about the products that users have created
2. Departments - different departments (product categories) of a product - this has been put into a seperate database to enable further parameters / information to added in future development
3. Comments - storing information on the comments added to products by users
4. Favourites - storing who has favourited which products
5. Followers - storing which user has followed who
6. Donations - storing information about donations made between users
7. Users - storing information about users (note Devise was able to abstract the detail behind this for us)
8. Active record storage - for storing information to enable storage of images
 
Note we are using the AWS API for active record storage 

**Describe your project’s models in terms of the relationships (active record associations) they have with each other.**


Products - full CRUD resource enabling users to interact with and share products
 - Has many comments
 - Has many favourites 
 - Belongs to a department
 - Has an attached picture
 

Departments - describes the category the product belongs to
 - Has many products

Comments - full CRUD resources which enables users to comment on products
 - Belongs to a product
 - Belongs to a user
 
Favourites - enables users to favourite and unfavourite a product
 - Belongs to a product 
 - Belongs to a user
 
Followers - enables users to follow other users
 - Belongs to follower through the user model
 - Belongs to following through the user model
 
Donations
 - Belongs to donor (user who made the donation) through the user model
 - Belongs to donee (user who the donation is being made to) through the user model

Users
 - has many favourites
 - has many comments
 - has many products
 - has many followers through the follower_id foreign key
 - has many followings through the following_id foreign key
 - has many donations through the donor_id foreign key
 - has many donors through the donee_id foreign key
 - has an attached user profile image


**Provide your database schema design.**
[link to ERD] https://dbdiagram.io/d/5cc63f6cf7c5bb70c72fc97e .



**Provide User stories for your App.**

( Refer to the Project documentation above )

**Provide Wireframes for your App.**

[link to Balsamiq] https://balsamiq.cloud/stvbuz4/pjj5i2u


**Describe the way tasks are allocated and tracked in your project.**

Initially we ideated together using a white board to understand and break down the problem we were trying to solve. We then took this and both did seperate User stories to compare our understanding of the project aims and user experience we were aiming to create.

We developed wireframes in parrel and then compared and summarised these to ensure we both had a clear picture of what we were trying to build. 

Heading into developedment we brainstormed the routes, user endpoints and views that would create our desired user expierence. We then split up our work according to these routes. Initially we split the work 50/50 amongst the CRUD resources that would have to be created in order to implement these views (e.g. Dodam took the products model, view and controller and Billy worked on the User Favourites and Followings). That is for each of the resources we each did the M,V and C in order for full funcitoning as a CRUD resource.

We tracked tasks using a Trello Board and Slack Channel. We split tasks using by (backlog, to do, indevelopment, deployed) work flow. Whenever a new task was thought of it would be added to the the to-do section. To signfiy we working on something the task would be in the in development section. To signify it was done it would be moved to the deployed section.


**Discuss how Agile methodology is being implemented in your project.**

First we focused on having a clear idea of what we intend to do and the main goal of the app. Instead of planning the whole week, we spent the first two days to finalize the plan and then decided to meet 3 times a day to check progress and reiterate the plan for the next day. These meetings would go according to the following flow:

-meeting 1 would be first thing in the morning and we would do a stand up, discussing goals for the day and any potential road blocks
-meeting 2 would be at lunch and we would discuss any issues we were having. Here we would ensure to do a git pull and merge. 
-meeting 3 would be at the end of the day, we would review progress and review the plan for the week adjusting tasks according to our new estimates for how long things were taking and develop strategies for getting through road block


**Provide an overview and description of your Source control process.**

Git/github was used during this assignment for the process of source controll.

We utilised the command line interface of Git to push and pull from the remote repo. 

We each worked on seperate branches (other than the master) and when we had felt the code was ready to be merged with master we would push our branch to the remote repo and then merge it with the master on github.  We would then pull this master and branch from it to keep working with the latest version of the source code.



**Provide an overview and description of your Testing process.**

We conducted manual testing of our site. 

To do manual test we developed a spreadsheet whith 6 different coloums.
 -The feature we were testign
 -The test we were running
 -The data we used
 -The expected result
 -The actual result
 -Status
 
 Each time we developed a feature or changed the source code we would rerun the tests. Using the elements of the testing framework above  kept the tests consistent each time we ran them (including the test inputs) and ensured good communication around where there may have been bugs
 
For an overview of our testing process please visit this Google docs where we have stored our testing data:

https://docs.google.com/spreadsheets/d/1WI0e70DUcx4ojiJlFVRmS7s5ZRFa49m858gNYo147AM/edit?usp=sharing
 

Unfortunately we could not get the Cypress gem to work and therefor could not do automated browser testing. We wanted to use automated browser testing for the following reasons:
 - it ensures that users can actually utilise the funcionatility of our app in the way intended
 - we can easily and quickly re-run the tests each time we update the application
 - it avoids human biases and potential for human error in the testing process
 

**Discuss and analyse requirements related to information system security.**

Any personal data of the user we are required to keep secure and private. This could include things like the email addresses and credit card information of the user. Personal data should also not be sent via get query as this is easily exposed for malicous use.

We leverage Stripe so that we do not have to store user credit card information in our application. 

Heroku provide SSL certificate with HTTPS so the data is encrypt between server and the user.

**Discuss methods you will use to protect information and data.**
> We leverage Rails functionality to protect against hacking a malicous use of the application. This includes:
 - authenticity tokens and protection against cross site reference forgery
 - protection against sql injection through the ORM model
> In each controller we have whitelisted parameters provided by the user - this protects against users providing their own and potentially corrupt parameters to use application in unitended ways

**Research what your legal obligations are in relation to handling user data.**

To provide functionality and interaction to users, we will need to collect user activity data.

Although the cookie consent pop-up is not a mandatory requirement in Australia, since the app is not limited to just one market and in the future if we are aiming to expand to Europe, we will need to use cookie consent pop-ups because of the European Union’s (EU) General Data Protection Regulation  (The GDPR not only applies to businesses located within the EU, but also to all businesses , wherever they may be located, that collect personal data from individuals based in the EU)
