class LogFile
  def initialize(data)
    @parse = parse_data(data)
    @count = count_data(data)
  end

  def parse
    @parse
  end

  def count
    @count
  end

  def count_data(data)
    data.split("\n").length
  end

  def parse_data(data)
    data_array = []
    string = data.split('T')[0].to_s
    new_string = string.reverse.slice(0..9).reverse
    data_array << new_string
  end
end