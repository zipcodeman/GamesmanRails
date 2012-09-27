window.game or= {}

window.game.title = "Tic Tac Toe"
window.game.asset = "ttt"
window.game.parameters = {
  width: { type: "integer", values: [3,4,5], desc: "Board Width" },
  height: { type: "integer", values: [3,4,5], desc: "Board Height" },
  pieces: { type: "integer", values: [3,4,5], desc: "Number in a row" },
}
window.game.getInitialBoard = (p) ->
  retval = ""
  for a in [1..p.width]
    for b in [1..p.height]
      retval += " "
  return retval

window.game.notifier = class
  constructor: (@canvas) ->
  drawBoard: (board) ->
    @canvas.drawArc
      layer: true
      fillStyle: "black"
      x: 100, y: 100
      radius: 50
      click: (layer) ->
        alert "orly?"

  drawMoves: (data) ->
