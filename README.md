# ECE444-F2020-Lab6: Amar Arefeen

This repo is a clone of https://github.com/mjhea0/flaskr-tdd

## Activity 1

### Development

This project targets the latest Python 3.9. You can install dependencies as follows:

```sh
cd /path/to/repo
pip install -r requirements.txt
```
To run the app locally, perform the following:

```sh
cd /path/to/repo

# Step 1: Create a local database
python create_db.py

# Step 2: Run the flask app using one of the following methods
## Option 1: using flask's development server
python -m project.app
# note: could also use `flask run` CLI wrapper after setting FLASK_APP variable

## Option 2: using gunicorn WSGI server (unix-like systems only)
gunicorn --bind 0.0.0.0:5000 project.app

# app should now be accessible at http://localhost:5000
```

### Deployment

The application has been deployed to Heroku and can be found at the following URL: https://rocky-springs-16691.herokuapp.com/

Deployment was done through the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli). Please contact the maintainer [@arefeena](https://github.com/arefeena/) for access.

## Activity 2

Here are two tests I wrote for our project: [LINK](https://github.com/ECE444-2020Fall/project1-webapp-group8-localghosts/blob/0ca2afcfab969c9bbb64036816b55ec65531ec0b/apprentice/tests/test_epic_recipe_search.py#L7-L32)

I also did the initial `unittest` [framework setup](https://github.com/ECE444-2020Fall/project1-webapp-group8-localghosts/commit/e6f8d78ecfc2a8020ca623e12b79152436262cff) as part of the initial project structuring, and more recently set up [automated testing through GitHub Actions](https://github.com/ECE444-2020Fall/project1-webapp-group8-localghosts/blob/ca16ff91e58b1834e6d17fd1c0957337879f8ff0/.github/workflows/on-pull-request.yml#L50-L64).

## Activity 3

> What are the pros and cons of test driven development?

Short answer: test-driven development introduces a lot of overhead to a project (especially in the early stages) but if done correctly, it will save time (debugging smaller parts of the application) and money (defects are cheaper to correct the earlier they are identified).

Below is a longer list of pros and cons, largely sourced from the introductory tutorial to this lab:

Pros:

- Forces you to automate your testing process
- Brings everyone on the same page before implementation begins
- Gives higher degree of confidence at the time of deployment
- Testing process not rushed anymore thus better quality of products created
- Fits well with Agile Methodology

Cons:

- Time consuming
- Application is only as good as the test cases
  - Need to consider all possible scenarios, avoid creating "brittle" tests that may break in the future
  - Tests are assumed to be correct (if the tests are poorly written, the application will be poorly written to meet those standards)
- Many different levels of tests that need to be considered
  - Unit tests, integration tests, end-to-end tests
  - Load testing