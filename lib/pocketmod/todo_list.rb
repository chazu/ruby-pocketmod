module Pocketmod
  module Panels
    class TodoList < Panel

      def initialize todos
        @todos = todos
      end

      draw do |ctx|
        ctx.text "This is defined as a class!"
      end
    end
  end
end
