module ApplicationHelper
  def current?(key,opts={})
      "#{key}" if current_page?(opts)
  end

  def full_title(page_title= '')
      base_title = "BuzzMinder"
      if page_title.empty?
          base_title 
      else
          "#{page_title} | #{base_title}"
      end
  end
end