module ApplicationHelper
  def zurb_menu
      menu_items = Refinery::Menu.new(Refinery::Page.fast_menu)
      presenter = Refinery::Pages::ZurbMenuPresenter.new(menu_items, self)
      presenter
  end
end
