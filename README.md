# Inspirobot for slack

This slack plugin will paste a randomly generated image from inspirobot to whatever channel you want -
It's a standard outgoing webhook app.

Currently, I'm hosting it on a cloud server at https://slack-integrations.cfrederrrr.xyz/inspirobot but feel free to clone this repo and host it on your own server.

## Installation / Starting

I am personally using docker using the following script:

```
git clone https://github.com/galvertez/inspirobot-slack.git
cd ./inspirobot-slack
docker build -t cfrederick/inspirobot .
docker run -p ${IPADDR}:9292:9292 -d cfrederick/inspirobot
```

However, the simplest way (assuming you have [ruby installed](https://rvm.io/rvm/install)) would be to run:

```
git clone https://github.com/galvertez/inspirobot-slack.git
cd ./inspirobot-slack/inspirobot
bundle install
rackup -D
```

## Integration with slack

Go to https://YOUR-SLACK-DOMAIN.slack.com/apps/manage/custom-integrations and select "Slash Commands" and enter the following settings:

### Command

`/inspirobot`

### URL

`https://slack-integrations.cfrederrrr.xyz/inspirobot` or whatever the location of your personal instance of this will be

### Method

`GET`

### Token

Just generate a new one or leave it blank - I am not using this presently, but probably will eventually

### Customize Name

`inspirobot`

### Customize Icon

Optional: I used the official [inspirobot image](http://inspirobot.me/favicon.ico)
