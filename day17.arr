use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

var score = 10

fun bonus-points(amt :: Number) -> Number block:
  score := score + amt
  penalty-check()
end
fun penalty-check() -> Number block:
  when score > 15:
    score := score - 3
  end
  score
end


var dta = [list: 1, 2, 3]
var position = 0
fun advance() -> Number block:
  result = dta.get(position)
  position := position + 1
  when position >= length(dta) block:
    position := 0
    dta := [list: 0] + dta
  end
  result
end
fun process-data() -> Number block:
  first = advance()
  second = advance()
  first + second
end

process-data()
process-data()
process-data()
