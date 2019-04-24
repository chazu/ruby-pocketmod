require "pocketmod/panel"
require "pocketmod/pocketmod"
require "pocketmod/version"

module Pocketmod
  class Error < StandardError; end
end

a = Pocketmod::Pocketmod.new

a.add_panel Pocketmod::Panel.new "Some text"
a.add_panel Pocketmod::Panel.new "More text"
a.generate
