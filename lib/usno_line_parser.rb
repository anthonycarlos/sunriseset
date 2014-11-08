class UsnoLineParser
  def initialize(line)
    @line = line
  end

  def clean(data)
   data.strip.length > 0 ? data.strip : nil
  end

  def day
    clean @line[0,2]
  end

  def jan_rise
    clean @line[4, 4]
  end

  def jan_set
    clean @line[9, 4]
  end

  def feb_rise
    clean @line[15, 4]
  end

  def feb_set
    clean @line[20, 4]
  end

  def mar_rise
    clean @line[26, 4]
  end

  def mar_set
    clean @line[31, 4]
  end

  def apr_rise
    clean @line[37, 4]
  end

  def apr_set
    clean @line[42, 4]
  end

  def may_rise
    clean @line[48, 4]
  end

  def may_set
    clean @line[53, 4]
  end

  def jun_rise
    clean @line[59, 4]
  end

  def jun_set
    clean @line[64, 4]
  end

  def jul_rise
    clean @line[70, 4]
  end

  def jul_set
    clean @line[75, 4]
  end

  def aug_rise
    clean @line[81, 4]
  end

  def aug_set
    clean @line[86, 4]
  end

  def sep_rise
    clean @line[92, 4]
  end

  def sep_set
    clean @line[97, 4]
  end

  def oct_rise
    clean @line[103,  4]
  end

  def oct_set
    clean @line[108, 4]
  end

  def nov_rise
    clean @line[114, 4]
  end

  def nov_set
    clean @line[119, 4]
  end

  def dec_rise
    clean @line[125, 4]
  end

  def dec_set
    clean @line[130, 4]
  end

end
