require 'spec_helper'

describe UsnoParser do
  context "when initializing" do
    Given(:parser) { UsnoParser.new(File.join(File.dirname(__FILE__), '..', 'usno_data.html')) }
    Then { !parser.data.nil? }
  end

  context "#parse" do
    Given(:parser) { UsnoParser.new(File.join(File.dirname(__FILE__), '..', 'usno_data.html')) }
    When(:result) { parser.parse }
    Then { result['20140101'][:rise] == '0754' }
    Then { result['20140101'][:set]  == '1717' }
    Then { result['20141201'][:rise] == '0735' }
    Then { result['20141201'][:set]  == '1707' }

    Then { result['20140102'][:rise] == '0754' }
    Then { result['20140102'][:set]  == '1718' }
    Then { result['20141202'][:rise] == '0736' }
    Then { result['20141202'][:set]  == '1706' }

    Then { result['20140131'][:rise] == '0741' }
    Then { result['20140131'][:set]  == '1749' }
    Then { result['20140231'][:rise] == nil }
    Then { result['20140231'][:set]  == nil }
    Then { result['20141131'][:rise] == nil }
    Then { result['20141131'][:set]  == nil }
    Then { result['20141231'][:rise] == '0754' }
    Then { result['20141231'][:set]  == '1716' }
  end

end
