require_relative 'test'
require_relative 'indices'
require_relative 'array_with_flatten'

Test.start do |t|

  list = [2, 7, 11, 15]
  indices = Index.new(*list)
  t.run(indices.indices_of(9),  [0, 1])
  t.run(indices.indices_of(13), [0, 2])
  t.run(indices.indices_of(26), [2, 3])
  t.run(indices.indices_of(17), [0, 3])
  t.run(indices.indices_of(22), [1, 3])

  list2 = [1, 14, 7, 2, 4, 3]
  indices2 = Index.new(*list2)
  t.run(indices2.indices_of(3),  [0, 3])
  t.run(indices2.indices_of(4),  [0, 5])
  t.run(indices2.indices_of(5),  [0, 4])
  t.run(indices2.indices_of(6),  [3, 4])
  t.run(indices2.indices_of(7),  [4, 5])
  t.run(indices2.indices_of(8),  [0, 2])
  t.run(indices2.indices_of(21), [1, 2])
  t.run(indices2.indices_of(13), [])
  t.run(indices2.indices_of(22), [])

  t.run(ArrayWithFlatten.new([1, 2, 3, 4]).flatten, [1, 2, 3, 4])
  t.run(ArrayWithFlatten.new([1,[2,[3]],[4]]).flatten, [1, 2, 3, 4])
  t.run(ArrayWithFlatten.new([1,[2,[[3]]],[4]]).flatten, [1, 2, 3, 4])

  puts
  p indices.indices_of(9)
  p indices.indices_of(13)
  p indices.indices_of(26)
  p indices.indices_of(17)
  p indices.indices_of(22)
end
