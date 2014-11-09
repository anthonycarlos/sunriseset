require 'httparty'

# Grabs an HTML file from USNO.
# TODO: Allow for a different year.
# TODO: Allow for a different location.
class UsnoGrabber
  def self.grab
    opts = { 'FFX' => '1', 'xxy' => '2014', 'type' => '0', 'st' => 'OH', 'place' => 'westerville', 'ZZZ' => 'END' }
    body = { :body => opts }
    response = HTTParty.post('http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl', body)
    response.parsed_response
  end
end
