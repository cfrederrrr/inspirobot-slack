# Inspirobot for slack

This slack plugin will paste a randomly generated image from inspirobot to whatever channel you want -
It's a standard outgoing webhook app.

Currently, I'm hosting it on a cloud server at https://slack-integrations.cfrederrrr.com/inspirobot but feel free to clone this repo and host it on your own server.

## Installation / Starting

I am personally using docker using the following script:

```
git clone https://github.com/galvertez/inspirobot-slack.git
cd ./inspirobot-slack
docker build -t cfrederick/inspirobot .
docker run -p $IPADDR:9292:9292 -d cfrederick/inspirobot
```

However, the simplest way (assuming you have [https://rvm.io/rvm/install](ruby installed)) would be to run:

```
git clone https://github.com/galvertez/inspirobot-slack.git
cd ./inspirobot-slack/inspirobot
bundle install
rackup -D
```

## Integration with slack

Go to https://YOUR-SLACK-DOMAIN.slack.com/apps/manage/custom-integrations and select "Slash Commands" and enter the following settings (modify them at your own peril):

>Command

`/inspirobot`

>URL

`https://slack-integrations.cfrederrrr.com/inspirobot` or whatever the location of your personal instance of this will be

>Method

`GET`

>Token

Just generate a new one or leave it blank - I am not using this presently, but probably will eventually

>Customize Name

`inspirobot`

>Customize Icon

Optional: Your favorite image, or a green version of HAL

>Autocomplete Help Text

Optional: I didn't use it 'cause it's kind of obvious. `/inspirobot`

>Escape channels, users, and links

Optional, didn't use it. Not necessary

>Descriptive Label

Optional, didn't use it. Not necessary

## Comments
I love how easy Inspirobot is to use. This took me about 2 hours to put all together, and it works flawlessly.
