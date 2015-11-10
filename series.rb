class Series

  def initialize(slice_string)
    @slice_string = slice_string
  end

  def slices(length)
    raise ArgumentError.new if length > @slice_string.length
    outer_array = []
    index = 0
      until index == @slice_string.length do
        string = @slice_string[index, length]
        fixnum_array = string.chars.map(&:to_i)
        outer_array << fixnum_array if fixnum_array.length == length
        index += 1
      end
    outer_array
  end
end
