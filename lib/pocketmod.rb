require "pocketmod/panel"
require "pocketmod/pocketmod"
require "pocketmod/version"

module Pocketmod
  class Error < StandardError; end
end

a = Pocketmod::Pocketmod.new

a.add_panel Pocketmod::Panel.new "Some text1"
a.add_panel Pocketmod::Panel.new "More text2"
a.add_panel Pocketmod::Panel.new "Some text3"
a.add_panel Pocketmod::Panel.new "More text4"
a.add_panel Pocketmod::Panel.new "Some text5"
a.add_panel Pocketmod::Panel.new "More text6"
a.generate
