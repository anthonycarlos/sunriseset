# Parse the USNO HTML file.
# TODO: Don't use magic numbers.
# TODO: Allow for different years.
class UsnoParser
  attr_accessor :data

  def initialize(file)
    @data = IO.readlines(file)
  end

  def parse
    result = {}
    (17..47).each do |input_line|
      line = UsnoLineParser.new(@data[input_line])
      result.merge!( {
        "201401#{line.day}" => {
          :rise => line.jan_rise,
          :set  => line.jan_set
        },
        "201402#{line.day}" => {
          :rise => line.feb_rise,
          :set  => line.feb_set
        },
        "201403#{line.day}" => {
          :rise => line.mar_rise,
          :set  => line.mar_set
        },
        "201404#{line.day}" => {
          :rise => line.apr_rise,
          :set  => line.apr_set
        },
        "201405#{line.day}" => {
          :rise => line.may_rise,
          :set  => line.may_set
        },
        "201406#{line.day}" => {
          :rise => line.jun_rise,
          :set  => line.jun_set
        },
        "201407#{line.day}" => {
          :rise => line.jul_rise,
          :set  => line.jul_set
        },
        "201408#{line.day}" => {
          :rise => line.aug_rise,
          :set  => line.aug_set
        },
        "201409#{line.day}" => {
          :rise => line.sep_rise,
          :set  => line.sep_set
        },
        "201410#{line.day}" => {
          :rise => line.oct_rise,
          :set  => line.oct_set
        },
        "201411#{line.day}" => {
          :rise => line.nov_rise,
          :set  => line.nov_set
        },
        "201412#{line.day}" => {
          :rise => line.dec_rise,
          :set  => line.dec_set
        }
      })
    end
    result
  end

end
