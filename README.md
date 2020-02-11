# feed-generator

To run the project you just need to clone the repo and have docker installed on your machine.

To run the project just write on your terminal:

`$ docker-compose build`

`$ docker-compose run`

In a different terminal window:

`$ docker-compose run web rails db:create db:migrate db:seed`

Go to your browser to localhost:3000

**Note: I did not invest any time in adding styles to the project. If you want to see some examples in that regard you can find them in any of my other repos.**

## Question 1

I am someone that values teamwork, new challenges and is constantly trying
to improve himself.

Among my hobbies, reading plays a major role. Also playing sports, video games and dancing.

The achievement I am most proud of is completing my Masters degree, which I acomplished in December of 2018.

I have over 6 years of experience as a software developer. I worked in several projects in the online banking system of the biggest bank of Venezuela, seeing them through the whole development process from deployment to production.

Developed from scratch several key features for a SaaS warehouse management system in one of the most renowned software house in logistics of the UK with over 30 years of history in the industry. Worked in several integrations with other companies and performed as product owner as well during my time there.

## Question 2

The solution can be found in the app/models/feed.rb file.
The basic structure of the algorithm is as follows:
For each user the books are fetched in the following order:

1. ordered by followed authors
2. ordered by authors with the greatest number of upvotes from the user
3. ordered by upvotes
4. ordered by published dates

## Question 3

For this question I was not sure how to tackle it. I basically created
a PaymentFactory class that receives the payment adapter instance (Dependency Injection) of choice and contains a method called process_payment which calls the respective method of the adapter (PaypalAdapter, StripeAdapter, etc...).

Each adapter implements the same interface:

1. initialize method that receives params to execute the transaction
2. process_payment method that executes the payment
3. success? method that signals whether the transaction was successful or not

## Question 4

I would use python and tensorflow as the framework.
The algorithm to use would be the WALS (Weighted Alternating Least Squares).
This is done by finding the latent factors that a user finds interesting in the
books that are presented in the platform.
