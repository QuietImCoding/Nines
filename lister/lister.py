from webbot import Browser
import os

files = []
for filedat in os.listdir('../bigpieces'):
    x=filedat.split('.')
    files.append({ 'id': x[0], 'shape': x[1].capitalize(), 'foreground': x[2].capitalize(), 'background': x[3].capitalize() })

print(files)

create_url = 'https://opensea.io/collection/nines-the-game/assets/create'

web = Browser()

web.go_to(create_url)
'''web.type('hello its me')  # or web.press(web.Key.SHIFT + 'hello its me')
web.press(web.Key.ENTER)
web.go_back()
web.click('Sign in')
web.type('mymail@gmail.com' , into='Email')
web.click('NEXT' , tag='span')
web.type('mypassword' , into='Password' , id='passwordFieldId')
web.click('NEXT' , tag='span') # you are logged in . woohoooo'''
