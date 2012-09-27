# Play a game

$ = jQuery

$.fn.extend
  startGame: (params) ->
    initialBoard = game.getInitialBoard(params)

    notify = new game.notifier(this)
    gameController = new GCAPI.Game(game.asset, params, notify, initialBoard)
    gameController.startGame()
