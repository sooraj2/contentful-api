module RecipesHelper
  def markdown text
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: false).render(text).html_safe
  end

  def short_title title
    return title if title.blank? || title.length < 50

    title[1..50] + '...'
  end
end
