class Playbook::Topic < SimpleDelegator
  attr_reader :resource

  class << self
    def all_by_section(section)
      section.has_many_topics_values.reduce([]) do |memo, section_topic_value|
        topic_resource = find_topic_resource_by_section_and_section_topic_value(section, section_topic_value)

        memo << new(topic_resource) if topic_resource

        memo
      end
    end

    private

    def find_topic_resource_by_section_and_section_topic_value(section, section_topic_value)
      section.topics_resources.find do |topic_resource|
        topic_section_value = topic_resource.data[section.app.config.playbook_topic_belongs_to_section_key]

        section_topic_value == topic_section_value
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
    Playbook::Section.find_by_topic(self)
  end

  def next
    section.topics[section.topics.find_index { |topic| page_id == topic.page_id }.next]
  end
end
