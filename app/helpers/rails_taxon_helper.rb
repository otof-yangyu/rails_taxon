module RailsTaxonHelper

  # first locals must be node
  def draw_tree(partial: , object: )
    str = ''
    
    object.children.each do |child|
      concat(render partial: partial, object: child)

      if child.children.any?
        draw_tree(partial: partial, object: child)
      end
    end
   
    str
  end

end
