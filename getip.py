
from requests import get

print('My public IP address is: {}'.format(get('https://api.ipify.org').text))