should = require 'should'

# Taken from https://github.com/tinyspeck/hubot-slack/blob/master/test/slack.coffee
# Stub a few interfaces to grease the skids for tests. These are intentionally
# as minimal as possible and only provide enough to make the tests possible.
# Stubs are recreated before each test.
stubs = null
beforeEach ->
  stubs =
    # Hubot.Robot instance
    robot:
      name: 'Kitt'

    # Express request object
    request: ->
      data: {}
      param: (key) ->
        @data[key]

  require('../src/bitbucket-pr')(stubs.robot)

describe 'Pull Request', ->
  it 'receives a Bitbukcet Pull Request POST hook', ->

    # Taken from the Bitbucket documentation
    # https://confluence.atlassian.com/display/BITBUCKET/Pull+Request+POST+hook+management
    bbmessage =
      pullrequest_approve:
        date: "2013-11-05T02:03:03.551896+00:00",
        user:
          display_name: "Erik van Zijst",
          links:
            avatar:
              href: "https://bitbucket-staging-assetroot.s3.amazonaws.com/c/photos/2013/Oct/28/evzijst-avatar-3454044670-3_avatar.png"
            self:
              href: "http://api.bitbucket.org/2.0/users/evzijst"
          username: "evzijst"

    req = stubs.request().post('hubot/bitbucket-pr').send(bbmessage)
    res.should.have.status(204)
