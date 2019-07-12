module TitleTagContentHelper
  DEFAULT_TITLE_TAG_CONTENT = 'The Nebulab playbook'

  def title_tag_content
    [@current_chapter_title_tag_content, DEFAULT_TITLE_TAG_CONTENT].compact.join ' | '
  end

  def current_chapter_title_tag_content=(current_chapter_title_tag_content)
    @current_chapter_title_tag_content = current_chapter_title_tag_content
  end
end
