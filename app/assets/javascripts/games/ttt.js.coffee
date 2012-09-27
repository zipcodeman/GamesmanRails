window.game = "Tic Tac Toe"
window.asset = "ttt"
window.parameters = {
  width: { type: "integer", values: "3-4" },
  height: { type: "integer", values: "3-4" },
  pieces: { type: "integer", values: "3-4" },
}
window.getInitialBoard = (p) ->
  retval = ""
  for a in [1..p.width]
    for b in [1..p.height]
      retval += " "
  return retval

window.notifier = class
  constructor: (@canvas) ->
  drawBoard: (board) ->
    alert(board)

  drawMoves: (data) ->
    alert(data)
