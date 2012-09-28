# Play a game

$ = jQuery

$.fn.extend
  startGame: (params) ->
    canvas = document.getElementById('game-canvas')
    canvas.width = window.innerWidth
    canvas.height = window.innerHeight
    $(window).resize ->
      canvas = document.getElementById('game-canvas')
      canvas.width = window.innerWidth
      canvas.height = window.innerHeight
      gameController.updateBoard()
    initialBoard = game.getInitialBoard(params)
    notify = new game.notifier(this, params)
    window.gameController = new GCAPI.Game(game.asset, params, notify, initialBoard)
    gameController.startGame()
