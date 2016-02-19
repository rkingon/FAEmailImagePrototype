include Magick

class PrototypeController < ApplicationController
  
  def index
    
    ratio = begin
      p = params[:potential].to_f
      c = params[:current].to_f
      raise unless p > 1 and c > 1
      p / c
    rescue
      1.5
    end
    
    i_width = 580
    i_height = 200
    right_offset = 20
    
    image = Image.new(i_width, i_height) {
      self.background_color = "white"
      self.format = "png"
    }
    
    # Draw background grid
    lft = 0
    while lft < i_width
      g = Draw.new {
        self.fill = 'black'
      }
      g.fill_opacity "10%"
      g.rectangle 1*lft, 0, 1*lft, i_height
      g.draw image
      lft += 75
    end
    
    # Draw Current Track
    c = Draw.new{
      self.fill = "#FF8952"
      self.stroke = "#E57B4A"
    }
    c.roundrectangle -3, 15, ((i_width-right_offset) / ratio), 15+75, 3, 3
    c.draw image
    
    # Draw Potential Track
    p = Draw.new{
      self.fill = "#5BC66D"
      self.stroke = "#42B070"
    }
    p.roundrectangle -3, 110, i_width-right_offset, 110+75, 3, 3
    p.draw image
    
    send_data image.to_blob, :type => 'image/png', :disposition => 'inline'
    
  end
  
end
