class Index
  def initialize(*arr)
    @numbers = arr
  end

  def indices_of(target)
    @numbers.each_with_index do |num, index|
      next if num >= target

      numbers2 = @numbers - [num]

      numbers2.each_with_index do |num2, index2|
        return [index, index2 + 1] if (num + num2) == target
      end
    end
    []
  end
end
