# Ms-Li's Panel

## Objective
Implementation of a fully functional high school administration platform built in Rails to track student, staff, and class listings.

### Built With
* Ruby on Rails v.5.2.0
* PostgreSQL
* User Authentication via Cookies
* Heroku
* Bootstrap
* ActiveRecord

### Heroku
  https://ms-li-panel.herokuapp.com
  
### Login Info
 username: test@gmail.com Password: 123456

## Purpose

To display proficency in Ruby on Rails, AJAX calls in Rails, relational databases with PostrgeSQl and heroku deployment.

## The Challenge

The implementation of an administrative panel is a very common request of a software engineer.  An admin panel, simply, is a site designed to allow a user to do simple administrative tasks.  In our case - a school.  The panel should have the following features

* have a way to create, display, edit and remove students and
  * first name
  * last name
  * age - must be less than 150
  * highest completed education - should be limited to HS, College, Masters, PHD
  * students have the following information associated with them
  * deletion should be enabled via an ajax call
* have a way to create, display, edit and remove instructors
  * first name
  * last name
  * age - must be less than 150
  * salary - cannot be less than 0
  * highest completed education - should be limited to HS, College, Masters, PHD
  * instructors have the following information associated with them
  * deletion should be enabled via an ajax call
* have a way to create, display, edit and remove courses
  * name
  * total in class hours - cannot be less than 0
  * courses have the following information associated with them
  * deletion should be enabled via an ajax call
* have a way to create, display, edit and remove cohorts
  * name
  * start date
  * end date
  * instructor teaching the cohort
  * students taking in the cohort
  * cohorts have the following information associated with them
  * deletion should be enabled via an ajax call
* have a way to add students to courses
* have a way to add instructors to courses
* be deployed to Heroku


## Design
  Front end design inspired by MTV's classic cartoon Daria, with style reflecting the show's high school.
  





