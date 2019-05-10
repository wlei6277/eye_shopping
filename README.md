# EYEHOPPING (Marketplace Platform)
## Link: https://eye-shopping.herokuapp.com/
## Repo: https://github.com/wlei6277/eye_shopping

### Description of platform
**Problem/Purpose**
- Problem: As the internet has become increasingly integrated and adopted by mainstream society the number of online products and services has grown exponentially. Almost any product which is available for purchase offline can be found on the internet. The problem with today's online shopping experience is that although the range of online products is massive, filtering this range to find the product which will fulfill each individual consumers needs and wants is becoming increasingly difficult. Pioneriing behavourial economics and psychology studies reveal that humans find it increasingly difficult to make a decision when the number of choices grows. 

Giant companies are getting better and better at targeting individual consumer wants and needs through avenues such as paid SEO, programmatic advertising (Google AdWords / Facebook Marketing) and influencer campaigns. As the competition instensifies, industries with more constrained resources are finding it increasingly difficult to reach consumers. From the consumers perspective this means that finding products which are outside of the boundarys of well funded marketing budgets is more cubersome.  

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
![alt text](   )
![alt text](   )
![alt text](   )
![alt text](   )

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





- Design Documentation

  - Design Process
 
 
  - User stories
 Age: 15 (High school)
Sex: Male

I'm Damien, I want to see which skate board most of my friends like
so it I can tell my mum what to buy me for christmas

I'm Damien, I want to see what colour jewelery girlfriend likes
so that i know what to buy her for valentines day

I'm Damien, I want to make a cool selection of products
so that all the girls can see im trendy

I'm Damien, I want to see what Christiano Ronaldo wears
so that I can pretend I am him


Age: 20
Sex: Female

I'm Sally, I want to build a big following
so that brands can contact for sponsership / partnership opportunities

I'm Sally, I want to see Amy is posting so I can get some inspiration from her style.

I'm Sally, I want create the moodboar so my boyfriend can stop buy me crappy presents

I'm Sally, I want to see what skateboards my little brother likes
so that I can buy him a cool present

Age: 35
Sex: Female

I'm Amy, I want to create my baby registry list  so my friends can get the items I need for my new baby.

I'm Amy, I want to create my product moodboard so I can present to my followers new upcoming trend.


 - Workflow diagram of the user

 
 - Wireframes
<p align="center">
<img src="https://github.com/wlei6277/eye_shopping/blob/master/images/wireframe/MY%20BOARD.png" width="400">
<img src="https://github.com/wlei6277/eye_shopping/blob/master/images/wireframe/MY%20FAVOURITES%20.png" width="400">
</p>

 - Database ERD

   
 - Project plan&Timeline
 
 - Trello
 
 

**1.What is the need (i.e. challenge) that you will be addressing in your project?**

**2.Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?**
Online shopping has obtained very important position in the 21 st century as most of the people are busy, loaded with hectic schedule.
But rapidly grown numbers of offers are massive that the consumers are impossible to track all the information provided.

The advantage of the online shopping which is time-saving and having more comparable information is losing its benefits.

**3.Describe the project will you be conducting and how. your App will address the needs.**
We will provide the marketplace where customers can create their product whishlist and and share with other users. 

They will be able to find innovative and updated products available online to provide them with an even better way to find what they need. It can be a tool to find yours out of a million.



**4.Describe the network infrastructure the App may be based on.**


**5.Identify and describe the software to be used in your App.**
		Balsamiq
		HTML5
		CSS3
		Bootstrap (CSS Framework for styling)
		Ruby on Rails 5.2.1
		Ruby 2.5.1
		Visual Studio Code (text editor)
		Trello ( project management)
		Git & Github (source countrol)
		Heroku (deployment)
		Google Fonts
		html5 and css3
		Slack

**6.Identify the database to be used in your App and provide a justification for your choice.**
Postgresql- A relational, SQL database.
The object-relational database based on spreadsheet with a collection of tables provide easier visualization of the datas.




**Identify and describe the production database setup (i.e. postgres instance).**
Creating our database with Postgres, we generate the empty directory. In order to save our data, we have to create the table to specify the position of storage.
Our postgres instance is one to many relationships using 6 tables. [link to ERD] https://dbdiagram.io/d/5cc63f6cf7c5bb70c72fc97e .



**Describe the architecture of your App.**

Our app is written in Rails MVC architectural pattern. 
The code regarding data storage is written inside of a model, code shown to the user inside of a view and the logic or glue that connect the model and view into the controller.


**Explain the different high-level components (abstractions) in your App.**


**Detail any third party services that your App will use.**
AWS cloud services platform
STRIPE Implementing a payment system

**Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).**
At the level of our first prototype, the structure is very similar with PINTEREST or INSTAGRAM. But our goal is to develop the features of being able to retrieve the sales commissions of the posts that users have created. So the final version of our app will be the mix of PINTEREST and all other online redirect shopping sites like LYST.

**Discuss the database relations to be implemented.**
Currently the database have six tables. The main table which is products, is conntected to users(who create the product_id),departments,colors and have many comments and favourites.
The users have many followers,comments and favourites.

**Describe your project’s models in terms of the relationships (active record associations) they have with each other.**
Once the user is signed in to the app, so is associated to the user_id,will be able to create the product ( which will created the product_id associated to the user_id) with name,price,department(department_id),color(color enum),url_link and description. 
Once the product is created, the user will be able to comment and favourite ( product: has many comments and followers).
Finally, the other users will be able to follow the other users.

**Provide your database schema design.**
[link to ERD] https://dbdiagram.io/d/5cc63f6cf7c5bb70c72fc97e .



**Provide User stories for your App.**

( Refer to the Project documentation above )

**Provide Wireframes for your App.**

[link to Balsamiq] https://balsamiq.cloud/stvbuz4/pjj5i2u


**Describe the way tasks are allocated and tracked in your project.**

The main tools we used is Trello . We have allocated the task for each purpose and kept on track. Our task was divided to the Model,View and Controller for each routes.

**Discuss how Agile methodology is being implemented in your project.**
First we focused on having a clear idea of what we intend to do and the main goal of the app. Instead of planning the whole week, we spent the first two days to finalize the plan and match the database with wireframe-based actions and ERD. We constantly joined in git to test the code.

**Provide an overview and description of your Source control process.**
Git/github was used during this assignment for the process of source controll.
We found it very useful to track all the codes previously written in repository so we could compare and verify with the recend code. We both worked in different branch and pushed in master.


**Provide an overview and description of your Testing process.**




**Discuss and analyse requirements related to information system security.**

Heroku provide SSL certificate with HTTPS so the data is encrypt between server and the user.

**Discuss methods you will use to protect information and data.**
Devise/Heroku

**Research what your legal obligations are in relation to handling user data.**
