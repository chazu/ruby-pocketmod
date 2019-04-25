require "pocketmod/panel"
require "pocketmod/pocketmod"
require "pocketmod/version"

module Pocketmod
  class Error < StandardError; end
end

######################

a = Pocketmod::Pocketmod.new

a.add_panel Pocketmod::Panel.new text: "normal1"
a.add_panel Pocketmod::Panel.new text: "normal2"
a.add_panel Pocketmod::Panel.new text: "normal3"
a.add_panel Pocketmod::Panel.new text: "normal4"

a.add_panel Pocketmod::Panel.new text: "flipped1"
a.add_panel Pocketmod::Panel.new text: "flipped2"
a.add_panel Pocketmod::Panel.new text: "flipped3"
a.add_panel Pocketmod::Panel.new text: "flipped4"
a.generate
