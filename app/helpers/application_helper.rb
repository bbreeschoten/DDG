module ApplicationHelper
  def zurb_menu
      menu_items = Refinery::Menu.new(Refinery::Page.fast_menu)
      presenter = Refinery::Pages::ZurbMenuPresenter.new(menu_items, self)
      presenter
  end
end

# Will print the content in the given tag if the condition is true. If
# no condition is provided then it will use the existance of real data
# in the content value to determine if content should be printed
def if_tag(tag_name, content, html_options={},condition=!content.blank?)
   content_tag(tag_name, content, html_options) if condition
end