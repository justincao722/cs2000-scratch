use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")


fun absolute-values(num-list :: List<Number>) -> List<Number> block:
  var ans = [list:]
  for each(n from num-list):
    ans := ans + [list: num-abs(n)]
  end
  ans
where:
  absolute-values([list:-2, -3]) is [list:2, 3]
end


fun exactly-three-chars(i :: List<String>) -> List<String> block:
  var ans = [list:]
  for each(n from i):
    if string-length(n) == 3:
      ans := ans + [list:n]
    else:
      ans
    end
  end
  ans
where:
  exactly-three-chars([list:"this", "is", "sun"]) is [list:"sun"]
end


fun all-even(num-list :: List<Number>) -> Boolean block:
  var ans = true
  for each(n from num-list):
    if num-modulo(n, 2) == 0:
      ans
    else:
      ans := false
    end
  end
  ans
where:
  all-even([list: 2, 3]) is false
end


fun count-in-range(num-list :: List<Number>, min :: Number, max :: Number) -> List<Number> block:
  var ans = [list:]
  for each(n from num-list):
    if (n <= max) and (n >= min):
        ans := ans + [list:n]
    else:
      ans
    end
  end
  ans
where:
  count-in-range([list: 2, 3, 4, 10], 3, 6) is [list: 3, 4]
end