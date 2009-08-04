require 'encumber'
require 'rexml/document'
require 'time'

class Randomogrifier
  def initialize
    @gui = Encumber::GUI.new
  end

  def randomogrify!
    @gui.press '//UIRoundedRectButton'
  end

  NumberTag = 1000

  def number
    xml = @gui.dump
    doc = REXML::Document.new xml

    xpath = '//UILabel[tag="%d"]/text' % NumberTag
    REXML::XPath.match(doc, xpath).first.text
  end

  def seed=(seed)
    @gui.command 'setRandomSeed', 'seed', seed
  end
end
