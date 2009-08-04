require 'encumber'
require 'rexml/document'
require 'time'

class Randomogrifier
  def initialize
    @gui = Encumber::GUI.new
  end
  
  def randomogrify!
    @gui.press '//UIButton'
  end

  def number
    xml = @gui.dump
    doc = REXML::Document.new xml

    xpath = '//UILabel'
    REXML::XPath.match(doc, xpath).first.text
  end
end
