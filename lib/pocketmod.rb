require "pocketmod/pocketmod"
require "pocketmod/version"

module Pocketmod
  class Error < StandardError; end
end

a = Pocketmod::Pocketmod.new

a.generate
