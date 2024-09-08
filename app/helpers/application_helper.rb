module ApplicationHelper
  def breadcrumb(*args)
    content_for :breadcrumbs do
      args.each_with_index do |arg, index|
        if index == args.size - 1
          concat content_tag(:li, arg, class: "breadcrumb-item active", "aria-current" => "page")
        else
          concat content_tag(:li, link_to(arg[:text], arg[:path]), class: "breadcrumb-item")
        end
      end
    end
  end
  # def breadcrumb(*args)
  #   content_tag :nav, 'aria-label': 'breadcrumb' do
  #     content_tag :ol, class: 'breadcrumb' do
  #       args.each_with_index.map do |arg, index|
  #         if index == args.size - 1
  #           content_tag :li, arg, class: 'breadcrumb-item active', 'aria-current': 'page'
  #         else
  #           content_tag :li, class: 'breadcrumb-item' do
  #             link_to arg[:text], arg[:path]
  #           end
  #         end
  #       end.join.html_safe
  #     end
  #   end
  # end
end
