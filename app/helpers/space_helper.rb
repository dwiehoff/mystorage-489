module SpaceHelper
  def display_li_if_exists(attr, label, after = '')
    "<li><strong>#{label}:</strong> #{@space[attr]} #{after.html_safe}</li>".html_safe if @space[attr].present?
  end
end
