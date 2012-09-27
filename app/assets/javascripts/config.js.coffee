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

    c = 

    contents = ""
    makeRange = (v) ->
      values = []
      ranges = v.split ","
      for range in ranges
        if "-" in range
          parts = range.split "-"
          values.concat [parts[0]..parts[1]]
        else
          values.concat range
      contents = values.join(",")
    for own name,info of settings
      if typeof info is "object"
        switch info.type
          when "integer" then makeRange info.values

    $(c).innerHTML(contents)
    return @
