module DebugHelpers
  def debug(*args)
    content_tag(:pre) do
      escape_html args.map(&:inspect).join("\n")
    end
  end

  def js_debug(*args)
    content_tag(:script) { "console.debug(#{json_escape_html args.map(&:to_json).join(', ')})" }
  end
end
