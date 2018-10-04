class ArrayWithFlatten
  def initialize(arr)
    @array = arr
  end

  def flatten(arr = @array, flatted = [])
    arr.each do |elem|
      unless elem.is_a?(Array)
        flatted << elem
        next
      end
      flatten(elem, flatted)
    end

    flatted
  end
end
