window.game = "Connect 4"
window.asset = "c4"
window.parameters = {
  width: { type: "integer", values: [4,5,6,7], desc: "Number of Columns" }, 
  height: { type: "integer", values: [4,5,6], desc: "Number of Rows" },
}

window.getInitialBoard = (p) ->
  retval = ""
  for a in [1..p.width]
    for b in [1..p.height]
      retval += " "
  return retval

window.notifier = class
  constuctor: (@canvas) ->
  drawBoard: (board) ->
    alert(board)

  drawMoves: (board) ->
    alert(board)
