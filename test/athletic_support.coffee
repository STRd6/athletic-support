assert = require('assert')

require("../source/athletic_support")

describe 'AthleticSupport', ->
  it "should support my node", ->
    assert "String".constantize

    assert "".blank()

  describe "Deferred", ->
    it "should be an ok implementation", (done) ->

      Deferred()
      .resolve("Radical")
      .then ->
        done()

    it "should have a promise method that returns promises", ->
      assert Deferred().promise()

  describe "Base64", ->
    it "should encode", ->
      assert.equal Base64.encode("hello"), "aGVsbG8="

    it "should decode", ->
      assert.equal Base64.decode("aGVsbG8="), "hello"

    it "should work with utf-8", ->
      assert.equal Base64.decode("ZMO8ZGVy"), "düder"

    it "should work with utf-8", ->
      assert.equal Base64.encode("düder"), "ZMO8ZGVy"

    it "should decode long strings", ->
      encoded = """
        VE9ETwotLS0tCkJ1bmRsZWQgRGVwZW5kZW5jaWVzCi0gQnVpbGQgYnVuZGxl
        ZCBkZXBlbmRlbmNpZXMgaW50byBwdWJsaXNoZWQgc2NyaXB0Ci0gRGVwZW5k
        ZW5jeSBzb3VyY2Ugc2hvdWxkIG5vdCBiZSBpbiByZXZpc2lvbiBjb250cm9s
        Ci0gcmVxdWlyZXMgYW5kIG1vZHVsZS5leHBvcnRzCi0gaW50ZXItY29tcG9u
        ZW50IGFuZCBpbnRyYS1jb21wb25lbnQgZGVwZW5kZW5jaWVzCi0gT25lIGRh
        eSB3ZSdsbCBuZWVkIHRvIGltcGxlbWVudCBhIGJ1bmRsZXJlc3F1ZSBzeXN0
        ZW0sIGJ1dCBub3QgdG9kYXkKCkxpdmUgVXBkYXRlIERlbW8KLSBIb3QgcmVs
        b2FkIGNzcwotIERpc3BsYXkgRGVtbyBSdW50aW1lIEVycm9ycyBpbiBjb25z
        b2xlCgpPcGVuIHB1Ymxpc2hlZCBwYWdlIGluIGVkaXRvciBhbmQgcnVuIGxp
        dmUgZGVtbyB3aXRoIHNhbWUgc3RhdGUgYXMgd2hlbiBlZGl0b3Igd2FzIG9w
        ZW5lZAotIFBhc3MgZ2l0IHJlcG8vYnJhbmNoIG1ldGFkYXRhIHRvIHB1Ymxp
        c2hlZCBwYWdlIGZvciB1c2UgaW4gZWRpdG9yCgpQZXJzaXN0IHN0YXRlIGFj
        cm9zcyBkZW1vIHJlbG9hZHMKCk9yZ2FuaXplIEZpbGUgdHJlZSBieSB0eXBl
        CkZpbGUgaWNvbnMKCkRpc3BsYXkgRGlmZnMKCkZpcnN0IGF1dGggZG9lc24n
        dCBkaXNwbGF5IGluIGJhcgoKQ2FjaGUgR2l0IHRyZWVzIGFuZCBmaWxlcyBp
        biBzb21lIGZvcm0gb2YgbG9jYWwgc3RvcmFnZQoKU29tZXRpbWVzIGVkaXRv
        ciBhcHBlYXJzIGJsYW5rIHdoZW4gc3dpdGNoaW5nIGZpbGVzCgpFZGl0b3Ig
        cGx1Z2lucwotIHN0YXRpYyBhbmFseXNpcwotIGZpbmQgaW4gZmlsZXMKLSBz
        b3VyY2UgZmlsZSBoeWdpZW5lCg==
      """

      decoded = """
        TODO
        ----
        Bundled Dependencies
        - Build bundled dependencies into published script
        - Dependency source should not be in revision control
        - requires and module.exports
        - inter-component and intra-component dependencies
        - One day we'll need to implement a bundleresque system, but not today

        Live Update Demo
        - Hot reload css
        - Display Demo Runtime Errors in console

        Open published page in editor and run live demo with same state as when editor was opened
        - Pass git repo/branch metadata to published page for use in editor

        Persist state across demo reloads

        Organize File tree by type
        File icons

        Display Diffs

        First auth doesn't display in bar

        Cache Git trees and files in some form of local storage

        Sometimes editor appears blank when switching files

        Editor plugins
        - static analysis
        - find in files
        - source file hygiene

      """

      assert.equal Base64.decode(encoded), decoded

    it "should encode long strings", ->
      encoded = """
        VE9ETwotLS0tCkJ1bmRsZWQgRGVwZW5kZW5jaWVzCi0gQnVpbGQgYnVuZGxl
        ZCBkZXBlbmRlbmNpZXMgaW50byBwdWJsaXNoZWQgc2NyaXB0Ci0gRGVwZW5k
        ZW5jeSBzb3VyY2Ugc2hvdWxkIG5vdCBiZSBpbiByZXZpc2lvbiBjb250cm9s
        Ci0gcmVxdWlyZXMgYW5kIG1vZHVsZS5leHBvcnRzCi0gaW50ZXItY29tcG9u
        ZW50IGFuZCBpbnRyYS1jb21wb25lbnQgZGVwZW5kZW5jaWVzCi0gT25lIGRh
        eSB3ZSdsbCBuZWVkIHRvIGltcGxlbWVudCBhIGJ1bmRsZXJlc3F1ZSBzeXN0
        ZW0sIGJ1dCBub3QgdG9kYXkKCkxpdmUgVXBkYXRlIERlbW8KLSBIb3QgcmVs
        b2FkIGNzcwotIERpc3BsYXkgRGVtbyBSdW50aW1lIEVycm9ycyBpbiBjb25z
        b2xlCgpPcGVuIHB1Ymxpc2hlZCBwYWdlIGluIGVkaXRvciBhbmQgcnVuIGxp
        dmUgZGVtbyB3aXRoIHNhbWUgc3RhdGUgYXMgd2hlbiBlZGl0b3Igd2FzIG9w
        ZW5lZAotIFBhc3MgZ2l0IHJlcG8vYnJhbmNoIG1ldGFkYXRhIHRvIHB1Ymxp
        c2hlZCBwYWdlIGZvciB1c2UgaW4gZWRpdG9yCgpQZXJzaXN0IHN0YXRlIGFj
        cm9zcyBkZW1vIHJlbG9hZHMKCk9yZ2FuaXplIEZpbGUgdHJlZSBieSB0eXBl
        CkZpbGUgaWNvbnMKCkRpc3BsYXkgRGlmZnMKCkZpcnN0IGF1dGggZG9lc24n
        dCBkaXNwbGF5IGluIGJhcgoKQ2FjaGUgR2l0IHRyZWVzIGFuZCBmaWxlcyBp
        biBzb21lIGZvcm0gb2YgbG9jYWwgc3RvcmFnZQoKU29tZXRpbWVzIGVkaXRv
        ciBhcHBlYXJzIGJsYW5rIHdoZW4gc3dpdGNoaW5nIGZpbGVzCgpFZGl0b3Ig
        cGx1Z2lucwotIHN0YXRpYyBhbmFseXNpcwotIGZpbmQgaW4gZmlsZXMKLSBz
        b3VyY2UgZmlsZSBoeWdpZW5lCg==
      """

      decoded = """
        TODO
        ----
        Bundled Dependencies
        - Build bundled dependencies into published script
        - Dependency source should not be in revision control
        - requires and module.exports
        - inter-component and intra-component dependencies
        - One day we'll need to implement a bundleresque system, but not today

        Live Update Demo
        - Hot reload css
        - Display Demo Runtime Errors in console

        Open published page in editor and run live demo with same state as when editor was opened
        - Pass git repo/branch metadata to published page for use in editor

        Persist state across demo reloads

        Organize File tree by type
        File icons

        Display Diffs

        First auth doesn't display in bar

        Cache Git trees and files in some form of local storage

        Sometimes editor appears blank when switching files

        Editor plugins
        - static analysis
        - find in files
        - source file hygiene

      """

      # Note: loses new lines
      assert.equal Base64.encode(decoded), encoded.replace(/\n/g, "")
