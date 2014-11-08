require 'spec_helper'

describe UsnoLineParser do
  context "day 1" do
    Given(:line) {
      "01  0754 1717  0740 1751  0705 1823  0616 1856  0532 1927  0505 1955  0506 2005  0530 1946  0559 1903  0628 1814  0701 1729  0735 1707\n"
    }
    Given(:parser) { UsnoLineParser.new(line) }
    Then { parser.day == '01' }
    Then { parser.jan_rise == '0754' }
    Then { parser.jan_set  == '1717' }
    Then { parser.feb_rise == '0740' }
    Then { parser.feb_set  == '1751' }
    Then { parser.mar_rise == '0705' }
    Then { parser.mar_set  == '1823' }
    Then { parser.apr_rise == '0616' }
    Then { parser.apr_set  == '1856' }
    Then { parser.may_rise == '0532' }
    Then { parser.may_set  == '1927' }
    Then { parser.jun_rise == '0505' }
    Then { parser.jun_set  == '1955' }
    Then { parser.jul_rise == '0506' }
    Then { parser.jul_set  == '2005' }
    Then { parser.aug_rise == '0530' }
    Then { parser.aug_set  == '1946' }
    Then { parser.sep_rise == '0559' }
    Then { parser.sep_set  == '1903' }
    Then { parser.oct_rise == '0628' }
    Then { parser.oct_set  == '1814' }
    Then { parser.nov_rise == '0701' }
    Then { parser.nov_set  == '1729' }
    Then { parser.dec_rise == '0735' }
    Then { parser.dec_set  == '1707' }
  end

  context "day 29" do
    Given(:line) {
      "29  0743 1747             0620 1853  0534 1925  0506 1953  0505 2005  0527 1949  0557 1908  0626 1817  0658 1733  0733 1707  0753 1714\n"
    }
    Given(:parser) { UsnoLineParser.new(line) }
    Then { parser.day == '29' }
    Then { parser.jan_rise == '0743' }
    Then { parser.jan_set  == '1747' }
    Then { parser.feb_rise == nil }
    Then { parser.feb_set  == nil }
    Then { parser.mar_rise == '0620' }
    Then { parser.mar_set  == '1853' }
  end

  context "day 30" do
    Given(:line) {
      "30  0742 1748             0619 1854  0533 1926  0505 1953  0506 2005  0528 1948  0557 1906  0627 1816  0659 1731  0734 1707  0754 1715\n"
    }
    Given(:parser) { UsnoLineParser.new(line) }
    Then { parser.day == '30' }
    Then { parser.jan_rise == '0742' }
    Then { parser.jan_set  == '1748' }
    Then { parser.feb_rise == nil }
    Then { parser.feb_set  == nil }
    Then { parser.mar_rise == '0619' }
    Then { parser.mar_set  == '1854' }
  end

  context "day 31" do
    Given(:line) {
      "31  0741 1749             0617 1855             0505 1954             0529 1947  0558 1905             0700 1730             0754 1716\n"
    }
    Given(:parser) { UsnoLineParser.new(line) }
    Then { parser.day == '31' }
    Then { parser.jan_rise == '0741' }
    Then { parser.jan_set  == '1749' }
    Then { parser.feb_rise == nil }
    Then { parser.feb_set  == nil }
    Then { parser.apr_rise == nil }
    Then { parser.apr_set  == nil }
    Then { parser.jun_rise == nil }
    Then { parser.jun_set  == nil }
    Then { parser.sep_rise == nil }
    Then { parser.sep_set  == nil }
    Then { parser.dec_rise == '0754' }
    Then { parser.dec_set  == '1716' }
  end
end

