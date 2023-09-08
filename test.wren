var p3 = {|v|
  v=v+1
  return v+2
}

var even = {|v| v%2==0}

var sum = {|a,b|a+b}
var a = [1,2,3]

System.print(a|:p3|?even|.toList)
System.print(a |: p3 |? even |> 0, sum)
System.print(p3(4))

var printSome = Fn.new {|a, b| System.print(a, b)}

//System.print({|v| v+5}.call(4))


a |: p3 |. toList |$ printSome($[0], $[1])
