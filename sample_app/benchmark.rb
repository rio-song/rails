require 'benchmark/ips'

string = {"string" => "hogehoge"}
symbol = {:symbol => "hogehoge"}
int = {1 => "hogehoge"}

Benchmark.ips do |x|

  x.report("string") { string["string"] }
  x.report("symbol") { symbol[:symbol] }
  x.report("int") { int[1] }
  x.compare!
end