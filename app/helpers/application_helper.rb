module ApplicationHelper

def title
  base_title ="Tienda LaBanca"
  if @title
   "#{base_title}: #{@title}"
  else
   base_title
  end
end


end
