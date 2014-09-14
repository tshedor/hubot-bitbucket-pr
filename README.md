# Hubot Bitbucket Pull Request

Holler whenever anything happens around a Bitbucket pull request

## Features

* 
* Pretty formatting for [Slack](https://github.com/tinyspeck/hubot-slack)

## Installation

In your hubot repository, run:

`npm install hubot-bitbucket-pr --save`

Then add *hubot-bitbucket-pr* to your external-scripts.json:

```json
["hubot-bitbucket-pr"]
```

## Configuration

Set up a Bitbucket Pull Request hook by checking all boxes and setting the URL to:
`{your_hubot_base_url}/hubot/bitbucket-pr?name={your_repo_name}`

A default room can be set with `HUBOT_BITBUCKET_PULLREQUEST_ROOM`. If this is not set, a room param is required in the URL:
`...bitbucket-pr?name={your_repo_name}&room={your_room_id}`

## Commands

This is only a notifier, nothing more.