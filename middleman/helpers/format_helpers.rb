module FormatHelpers
  # JSON version of Padrino's `js_escape_html`  helper. Useful to embed JSON data inside HTML <script> tags. See
  # `js_debug` helper for a use case.
  def json_escape_html(json_content)
    return '' unless json_content
    escaped_content = json_content.gsub %r{</}, '<\/'
    escaped_content = escaped_content.html_safe if json_content.html_safe?
    escaped_content
  end
end
