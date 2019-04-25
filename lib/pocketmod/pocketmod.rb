require "prawn"

module Pocketmod
  class Pocketmod

    POINTS_H = 792
    POINTS_V = 612

    PANEL_MARGIN = 10

    PANEL_HEIGHT = (POINTS_V / 2) - (PANEL_MARGIN * 2)
    PANEL_WIDTH  = (POINTS_H / 4) - (PANEL_MARGIN * 2)

    def initialize
      @panels = []
    end

    def add_panel panel
      @panels << panel
    end

    def generate
      Prawn::Document.generate "pocketmod.pdf", page_layout: :landscape, margin: 0 do |pdf|
        @panels.each do |panel|
          puts panel_position(panel)
          puts "==="
          pdf.rotate rotate_panel?(panel) ? 180 : 0, origin: panel_center(panel) do
            pdf.bounding_box panel_position(panel),
                             width:  PANEL_WIDTH,
                             height: PANEL_HEIGHT,
                             margin: PANEL_MARGIN  do

              # Draw a border around the panel
              pdf.stroke_bounds

              if panel.has_block?
                panel.render pdf
              else
                pdf.text panel.text
              end
            end
          end
        end
      end
    end

    private

    def panel_x panel
      index = @panels.find_index(panel)
      (((index % 4)) * PANEL_WIDTH) + PANEL_MARGIN
    end

    def panel_y panel
      index = @panels.find_index(panel)
      index <= 3 ? (POINTS_V / 2 + PANEL_MARGIN) : (0 + PANEL_MARGIN)
    end

    def panel_position panel
      [panel_x(panel), panel_y(panel)]
    end

    def rotate_panel? panel
      index = @panels.find_index(panel)
      index <= 3 ? false : true
    end

    def panel_center panel
      [panel_x(panel) + PANEL_WIDTH / 2,
       panel_y(panel) + PANEL_HEIGHT / 2]
    end
  end
end
