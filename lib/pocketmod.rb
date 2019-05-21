require "pocketmod/panel"
require "pocketmod/pocketmod"
require "pocketmod/version"

module Pocketmod
  class Error < StandardError; end
end

######################

a = Pocketmod::Pocketmod.new

a.add_panel Pocketmod::Panel.new text: "normal1"
a.add_panel Pocketmod::Panel.new text: "normal1"
a.add_panel Pocketmod::Panel.new text: "normal1"
a.add_panel Pocketmod::Panel.new text: "normal1"
a.add_panel Pocketmod::Panel.new text: "flipped2"
a.add_panel Pocketmod::Panel.new text: "flipped2"

panel = Pocketmod::Panel.new

panel.draw do |ctx|
  ctx.text "Yo whaddup whaddup"
end

a.add_panel panel

a.generate
