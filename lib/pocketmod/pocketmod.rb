require "prawn"

module Pocketmod
  class Pocketmod

    POINTS_H = 792
    POINTS_V = 612

    PANEL_HEIGHT = POINTS_V / 2
    PANEL_WIDTH  = POINTS_H / 4

    def initialize
      @panels = []
    end

    def add_panel panel
      @panels << panel
    end

    def generate
      Prawn::Document.generate "pocketmod.pdf", page_layout: :landscape do |pdf|
        @panels.each do |panel|
          puts panel_position(panel)
          puts "--"
          pdf.bounding_box panel_position(panel), width: PANEL_WIDTH, height: PANEL_HEIGHT do
            pdf.text panel.text
          end
        end
      end
    end

    private

    def panel_x panel
      index = @panels.find_index(panel)
      ((index % 4) + 1) * PANEL_WIDTH
    end

    def panel_y panel
      index = @panels.find_index(panel)
      index <= 3 ? POINTS_V / 2 : 0
    end

    def panel_position panel
      [panel_x(panel), panel_y(panel)]
    end
  end
end

