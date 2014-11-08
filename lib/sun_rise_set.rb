require 'yaml'

class SunRiseSet
  def self.raw_data
    YAML::load_file('data.yml')
  end

  def self.rise(date_str)
    self.raw_data[date_str][:rise]
  end

  def self.set(date_str)
    self.raw_data[date_str][:set]
  end
end
