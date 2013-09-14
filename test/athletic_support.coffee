assert = require('assert')

require("../source/athletic_support")

describe 'AthleticSupport', ->
  it "should support my node", ->
    assert "String".constantize

    assert "".blank()

  describe "Base64", ->
    it "should encode", ->
      assert.equal Base64.encode("hello"), "aGVsbG8="

    it "should decode", ->
      assert.equal Base64.decode("aGVsbG8="), "hello"

    it "should work with utf-8", ->
      assert.equal Base64.decode("ZMO8ZGVy"), "düder"

    it "should work with utf-8", ->
      assert.equal Base64.encode("düder"), "ZMO8ZGVy"
