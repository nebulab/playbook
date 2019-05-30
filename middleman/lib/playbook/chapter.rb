class Playbook::Chapter < SimpleDelegator
  attr_reader :resource

  class << self
    def all_by_section(section)
      section.has_many_chapters_values.reduce([]) do |memo, section_chapter_value|
        chapter_resource = find_chapter_resource_by_section_and_section_chapter_value(section, section_chapter_value)

        memo << new(chapter_resource) if chapter_resource

        memo
      end
    end

    private

    def find_chapter_resource_by_section_and_section_chapter_value(section, section_chapter_value)
      section.chapters_resources.find do |chapter_resource|
        chapter_section_value = chapter_resource.data[section.app.config.playbook_chapter_belongs_to_section_key]

        section_chapter_value == chapter_section_value
      end
    end
  end

  def initialize(resource)
    @resource = resource
    super @resource
  end

  def app
    resource.instance_variable_get :@app
  end

  def section
    Playbook::Section.find_by_chapter(self)
  end

  def next
    section.chapters[section.chapters.find_index { |chapter| page_id == chapter.page_id }.next]
  end
end
