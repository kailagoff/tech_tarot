# TECH TAROT
## Epicodus Capstone

#### _By Kaila Goff_   

#### _My capstone website built with Ruby on Rails. 5-11-18_

<kbd><img src="app/assets/images/tarot.gif"></kbd>

## Description
_Tech Tarot is my capstone project for Epicodus. It was built with Ruby on Rails. I used Materialize and Sass to help style the website. The Ruby gem Devise was used for authentication on the site, and Paperclip was used for image upload. ActiveRecord was utilized in order to store information to a pSQL relational database._

_The website is divided into several different sections. There is a home page that displays all the cards in the deck. There is A major and minor arcana section that shows the cards that are within that arcana. There are also two API calls within the project. The first is to New York Times, to view recent articles about Tarot, and the second is to NASA to view their photo of the day. There is also a page to get a four card reading._

##### Site will potentially also include:

  * - [ ] Animations
  * - [ ] Hand drawn versions of all the cards

## Install the DATABASE instructions

  * _Enter into the terminal:_ ``` $bundle install```
  * _In the following line enter:_ ```$rake db:create```
  * _In the following line enter:_ ```$rake db:migrate```
  * _In the following line enter:_ ```$rake db:test:prepare```

## Nasa API key

  * Visit https://api.nasa.gov/ to obtain a free API key
  * Create a file called `.env`
  * Add NASA_API_KEY=DEMO_KEY [replace DEMO_KEY with your API key] to .env
  * ADD .env to your .gitignore file

## New York Times API key

    * Visit https://developer.nytimes.com/ to obtain a free API key
    * Create a file called `.env`
    * Add NYT_API_KEY=DEMO_KEY [replace DEMO_KEY with your API key] to .env
    * ADD .env to your .gitignore file


## Setup/Installation Requirements

    * _Clone down project from GitHub_
    * _Run ```bundle install``` in the terminal to install all necessary gems
    * _Enter in the terminal:_ ``` $rails server```
    * _Using a web browser, type in the url_ ``` localhost:3000 ```


## Known Bugs

  * _No known bugs at this time._

## Support and contact details

  _To suggest changes, submit a pull request in the GitHub repository._

## Technologies Used

  * HTML5
  * Ruby on Rails
  * pSQL/ActiveRecord
  * Materialize/Sass

### License

  *MIT License*

Copyright (c) 2018 **_Kaila Goff_**
