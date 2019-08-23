module TitleTagContentHelper
  DEFAULT_TITLE_TAG_CONTENT = 'The Nebulab playbook'

  def title_tag_content
    [@title_tag_content, DEFAULT_TITLE_TAG_CONTENT].compact.join ' | '
  end
end
