module Pocketmod
  class Panel

    def initialize text
      @text = text
    end

    def text
      @text
    end

    def draw &block
      if block_given?
        @block = block
      else
        puts "no block!!! TODO ERROR OUT HERE!!!"
      end
    end

    def render context
      @block.call context
    end

    def has_block?
      !@block.nil?
    end
  end
end
