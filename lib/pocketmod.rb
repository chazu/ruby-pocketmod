require "pocketmod/panel"
require "pocketmod/pocketmod"
require "pocketmod/version"

module Pocketmod
  class Error < StandardError; end
end

######################

a = Pocketmod::Pocketmod.new

#a.add_panel Pocketmod::Panel.new "foobar"

b = Pocketmod::Panel.new text: "lol"
c = Pocketmod::Panel.new

# c.draw do |ctx|
#   ctx.text "DIS IS DA REAL THING YO WIGGITY WACK IM HIP AND WITH IT"
# end

a.add_panel b
a.add_panel c

a.add_panel Pocketmod::Panel.new text: "lol2"
a.add_panel Pocketmod::Panel.new text: "lol2"
a.add_panel Pocketmod::Panel.new text: "lol2"
# a.add_panel Pocketmod::Panel.new text: "lol2"
# a.add_panel Pocketmod::Panel.new text: "lol2"
# a.add_panel Pocketmod::Panel.new text: "lol2"
a.generate
