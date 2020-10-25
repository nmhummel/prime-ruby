require 'benchmark'
require 'bigdecimal/math'


def prime?(numbers)
    if numbers <= 1
        return false
    end
    (2..numbers-1).each do |i| 
        if numbers % i == 0 
            return false
        end
    end
    return true
end


array = Array(1..10_000_000)

Benchmark.bmbm(7) do |bm|
  bm.report('reverse') do
    array.dup.reverse
  end

  bm.report('reverse!') do
    array.dup.reverse!
  end
end

# user     system      total        real
# 0.226600   0.000096   0.226696 (  0.226731)
# 0.153177   0.000331   0.153508 (  0.153525)