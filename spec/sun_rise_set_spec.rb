require 'spec_helper'

describe SunRiseSet do
  context "with data file" do
    Given(:stub_data) { {"20141106"=>{:rise=>"0707", :set=>"1723"}} }
    Given { File.open('data.yml', 'w') { |f| f.write stub_data.to_yaml } }
    Then { SunRiseSet.rise('20141106') == '0707' }
    Then { SunRiseSet.set('20141106') == '1723' }
  end

  context "without data file" do

  end
end
