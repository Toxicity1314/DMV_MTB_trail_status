
# DMV MTB Trail Status

Welcome to the Mountain Biking Rain Data Website! This is a full-stack web application that allows mountain bikers to check the recent rainfall data for their favorite trails. The application is built using React, React-Router-DOM, React-Bootstrap, Ruby on Rails, Puma, Bcrypt, HTTParty, Whenever, and PostgreSQL.

## Features

- Displays the last 3 days' rainfall data for specific trail pages.
- Provides future forecast from an external API call.
- Displays trail maps from Trailforks API.
- Allows users to leave comments and report trail issues.

## Installation

To run this application, you need to have Node.js and PostgreSQL installed on your local machine.

1. Clone this repository.

    > git clone https://github.com/YOUR-USERNAME/DMV_MTB_trail_status.git

2. Install dependencies.

> npm install --prefix client
>
> bundle install

3. Run the React application.

> npm start --prefix client

4. Open a new terminal window and migrate and seed the database.

> rails db:migrate
>
> rails db:seed

5. Run the Rails server.

> rails s

## Usage

Once you have the application running, navigate to http://localhost:4000/ in your web browser to use the Mountain Biking Rain Data Website.

## Updating Rain Data

The initial seeding of the database will fetch rain data for the past 4 days.  After that the application utilizes a cron job to update the database with relevant rain data from the past day and deletes old rain data that is no longer usefull. To get the cron job running you will need to run 

>whenever --update-crontab 

By default this job runs every day at 4:00 AM EST and 2:00 PM EST. If you want to change the time, you can modify the schedule in config/schedule.rb and run 

>whenever --update-crontab

to update the crontab file.