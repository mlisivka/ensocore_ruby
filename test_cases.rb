require_relative 'test'
require_relative 'indices'

test = Test.new

list = [2, 7, 11, 15]
indices = Index.new(*list)
test.run(indices.indices_of(9),  [0, 1])
test.run(indices.indices_of(13), [0, 2])
test.run(indices.indices_of(26), [2, 3])
test.run(indices.indices_of(17), [0, 3])
test.run(indices.indices_of(22), [1, 3])

list2 = [1, 14, 7, 2, 4, 3]
indices2 = Index.new(*list2)
test.run(indices2.indices_of(3),  [0, 3])
test.run(indices2.indices_of(4),  [0, 5])
test.run(indices2.indices_of(5),  [0, 4])
test.run(indices2.indices_of(6),  [3, 4])
test.run(indices2.indices_of(7),  [4, 5])
test.run(indices2.indices_of(8),  [0, 2])
test.run(indices2.indices_of(21), [1, 2])
test.run(indices2.indices_of(13), [])
test.run(indices2.indices_of(22), [])

test.finish

puts
p indices.indices_of(9)
p indices.indices_of(13)
p indices.indices_of(26)
p indices.indices_of(17)
p indices.indices_of(22)
