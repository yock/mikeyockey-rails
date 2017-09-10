require './lib/app/post_markdown_renderer'

module ApplicationHelper
  def markdown(content)
    @markdown ||= Redcarpet::Markdown.new(PostMarkdownRenderer, {
        autolink: true,
        underline: true,
        highlight: true,
      })
    @markdown.render(content).html_safe
  end
end
