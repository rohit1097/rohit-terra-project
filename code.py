import requests
import json
import pandas as pd
# define the payload that will be sent to the api endpoint, and the endpoint url
URL = "https://2xfhzfbt31.execute-api.eu-west-1.amazonaws.com/candidate-email_serverless_lambda_stage/data"
payload = {
  "subnet_id": "",
  "name": "rohit patil",
  "email": "rohit@gmail.com"
}
