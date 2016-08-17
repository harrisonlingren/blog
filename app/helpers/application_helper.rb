module ApplicationHelper
  def markdown(text)
    options = {
      filter_html: true,
      hard_wrap: true,
      lax_spacing: true,
      link_attributes: {rel: 'nofollow', target: '_blank'},
      space_after_headers: true,
      fenced_code_blocks: true,
      prettify: true,
    }

    extensions = {
      autolink: true,
      disable_indented_code_blocks: true,
      superscript: true,
      strikethrough: true,
      highlighted: true,
      tables: true,
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(text).html_safe
  end
end
