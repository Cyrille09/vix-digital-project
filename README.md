# vix digital project

## installation process

```bash
### Clone the repo

git clone https://github.com/Cyrille09/vix-digital-project.git

### the project contain two folder. The digital-laravel is used t create the Restful API. The digital-react is used to create the frontend websibe and the Content management system (CMS). Remove both project from the parent folder and past them in the htdocs root directory.  C:\xampp\htdocs

# --- How to run Laravel project --- #

# 1 - Download and install xampp in your device

https://www.apachefriends.org/download.html

# 2 - Download and install composer globally while following the step

https://getcomposer.org/doc/00-intro.md

# 3 - Download and install node.js

https://nodejs.org/en/

# 4 - redirect the project folder to the below command. The project must be in htdocs root. C:\xampp\htdocs

cd digital-laravel

# 5 - start the server with the below command.

php artisan serve

# 6 - copy and past env.example file and rename it with env . The database name is digital_api.

# 7 - create MYSQL database and name it  digital_api.

# 8 - import the digital_api.sql file that is in the parent folder into the database


# --- How to run React  project --- #

# 1 - redirect the project folder to the below command. The project must be in htdocs root. C:\xampp\htdocs

cd digital-react

# 2 - Install the dependencies

npm install

# 3 - start the project

npm start

# 4 - you need to sign into content managent system (CMS) so that you can be able to manage (add/remove/update) services via an API call

email: sample@gmail.com
password: london123


```
