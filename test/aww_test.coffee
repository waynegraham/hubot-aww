chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'aww', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/aww')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/aww( me)?/i)
