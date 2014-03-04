#
# * mdurl
# * https://github.com/hemanth/mdurl
# * Copyright (c) 2014 hemanth
# * Licensed under the MIT license.
#

urlMD = require 'urls-md'

mdURL = (editor) ->
  selection = editor.getSelection()
  text = selection.getText()
  urlMD text, (err, data) ->
    selection.insertText(data[0])

module.exports =
  activate: ->
    atom.workspaceView.command 'mdURL:mdURL', '.editor', ->
      paneItem = atom.workspaceView.getActivePaneItem()
      mdURL(paneItem)

  mdURL: mdURL
