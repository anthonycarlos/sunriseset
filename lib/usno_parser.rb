class UsnoParser
  attr_accessor :data
  def initialize(file)
    @data = IO.readlines(file)
  end

  def day(line)
    line[0,2]
  end
  def jan_rise(line)
    line[4, 4]
  end
  def jan_set(line)
    line[9, 4]
  end
end
