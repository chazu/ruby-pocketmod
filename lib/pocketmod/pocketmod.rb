require "prawn"

module Pocketmod
  class Pocketmod

    def initialize
    end

    def generate
      Prawn::Document.generate("pocketmod.pdf", page_layout: :landscape) do
        text "Hello World!"
      end
    end
  end
end

