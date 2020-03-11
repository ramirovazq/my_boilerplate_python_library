import requests

def a_request():
    response = requests.get('https://api.github.com')
    return response