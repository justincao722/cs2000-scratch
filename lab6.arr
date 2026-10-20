use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
import lists as L

fun absolute-values(num-list :: List<Number>) -> List<Number> block:
  var ans = [list:]
  for each(n from num-list):
    ans := ans + [list: num-abs(n)]
  end
  ans
where:
  absolute-values([list:-2, -3]) is [list:2, 3]
end

fun absolute-value(num :: Number) -> Number block:
  num-abs(num)
end

fun my-abs(nums :: List<Number>) -> List<Number>:
  L.map(absolute-value, nums)
where:
  my-abs([list: 1, 3, 5]) is [list: 1, 3, 5]
  my-abs([list: -2, 0, -4]) is [list: 2, 0, 4]
  my-abs([list:]) is [list:]
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

fun three-chars(str :: String) -> Boolean block:
  string-length(str) == 3    
end

fun my-chars(nums :: List<String>) -> List<String>:
  L.filter(three-chars, nums)
where:
  my-chars([list:"sun", "is"]) is [list:"sun"]
  my-chars([list:]) is [list:]
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

fun is-even(n :: Number) -> Boolean:
  num-modulo(n, 2) == 0
end

fun my-even(nums :: List<Number>) -> Boolean:
  L.length(L.filter(is-even, nums)) == L.length(nums)
where:
  my-even([list: 2, 3]) is false
  my-even([list: 2, 4]) is true
  my-even([list: 2]) is true
  my-even([list:]) is true
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

fun check-range(n :: Number, min :: Number, max :: Number) -> Boolean:
  (n <= max) and (n >= min)
end

fun my-range(nums :: List<Number>, min :: Number, max :: Number) -> List<Number>:
  L.filter(lam(n): check-range(n, min, max) end, nums)
where:
  my-range([list: 2, 3, 4, 10], 3, 6) is [list: 3, 4]
  my-range([list: 1, 10], 3, 6) is [list:]
end