require "prawn"

module Pocketmod
  class Pocketmod

    PAGE_WIDTH = 792
    PAGE_HEIGHT = 612

    GUTTER = 10

    PANEL_HEIGHT = (PAGE_HEIGHT - GUTTER) / 2
    PANEL_WIDTH  = (PAGE_WIDTH - 3 * GUTTER) / 4

    def initialize
      @panels = []
    end

    def add_panel panel
      @panels << panel
    end

    def generate
      Prawn::Document.generate "pocketmod.pdf", page_layout: :landscape, margin: 0 do |pdf|
        pdf.define_grid columns: 4, rows: 2, gutter: 10

        @panels.each do |panel|
          puts panel_position(panel)
          puts "==="
          pdf.grid(panel_y(panel), panel_x(panel)).bounding_box do
            pdf.rotate rotate_panel?(panel) ? 180 : 0, origin: panel_center(panel) do
              pdf.stroke_bounds
              if panel.has_block?
                panel.render pdf
              else
                pdf.text panel.text
                #pdf.text "#{panel_x(panel)}, #{panel_y(panel)}"
              end
            end
          end
        end
      end
    end
    private

    def panel_x panel
      @panels.find_index(panel) % 4
    end

    def panel_y panel
      @panels.find_index(panel) <= 3 ? 0 : 1
    end

    def panel_position panel
      [panel_x(panel), panel_y(panel)]
    end

    def rotate_panel? panel
      index = @panels.find_index(panel)
      index <= 3 ? true : false
    end

    def panel_center panel
      [(panel_y(panel) + 1) * PANEL_WIDTH / 2,
       panel_y(panel) + PANEL_HEIGHT / 2]
    end
  end
end
