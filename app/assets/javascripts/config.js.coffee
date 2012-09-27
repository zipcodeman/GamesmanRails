# Configure a new game. read a parameters file in this format (like for
# TicTacToe)

# {
#  width: "3-4",
#  height: "3-4",
#  pieces: "3-4"
# }

$ = jQuery

$.fn.extend
  getConfigure: (options) ->
    settings = 
      debug: false

    settings = $.extend settings, options 

    log = (msg) ->
      console?.log msg if settings.debug

    c = @first()

    contents = ""
    makeRange = (n,i) ->
      v = i.values
      description = i.desc
      retval = description + ": "
      retval += "<select name='" + n + "' >"
      for value in i.values
        retval += "<option value='" + value + "'>" + value + "</option>"
      retval += "</select><br />"
      return retval

    makeInput = () ->
      retval = ""
      return retval

    contents = "<form action='play'>"
    for own name,info of settings
      if typeof info is "object"
        switch info.type
          when "integer" then contents += makeRange name,info
    contents += "<input type='submit' />"
    contents += "</form>"

    c.html contents
    return @
