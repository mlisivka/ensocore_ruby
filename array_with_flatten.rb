class ArrayWithFlatten
  def initialize(arr)
    @array = arr
  end

  def flatten(arr = @array, flatted = [])
    arr.each do |elem|
      if elem.is_a?(Array)
        flatten(elem, flatted)
      else
        flatted << elem
      end
    end

    flatted
  end
end
