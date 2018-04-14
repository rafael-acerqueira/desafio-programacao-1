![ruby](https://img.shields.io/badge/Ruby-2.4.2-red.svg)
![rails](https://img.shields.io/badge/Rails-5.0.7-red.svg)

# Import File

----
## About this project
This project is a development challenge that is part of a selective proccess(https://github.com/myfreecomm/desafio-programacao-1).


----
## How it works?
The user uploads a formatted .txt file with purchase information. This data is normalized and store at database. Afterwards is calculated which is the gross revenue.

----
## Initial Setup
`git clone`the repository

Run `bundle`

Database: `rake db:create && rake db:migrate`

Rename `.env_example` to `.env` and fill in with your `GOOGLE_CLIENT_ID` and `GOOGLE_CLIENT_SECRET` that you're getting in the next section

----
## Getting Google Credentials
* Navigate to 'https://console.developers.google.com'

* Click “Create Project” and give it a name.

* Click 'Enable and manage APIs'.

* Make sure "Contacts API" and "Google+ API" are on.

* Go to Credentials, then select the "OAuth consent screen" tab on top, and provide an 'EMAIL ADDRESS' and a 'PRODUCT NAME'

* Enter your app’s URL in the “Authorized JavaScript origins” (“http://localhost:3000” for local machine).

* Enter your app’s URL plus “http://localhost:3000/users/auth/google_oauth2/callback” in “Authorized redirect URIs”.

----
## Access
Sign up and Sign in or Sign in using your Google Account


## Tests

Run test execute `rspec`
