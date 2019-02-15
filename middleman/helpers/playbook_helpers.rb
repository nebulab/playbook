module PlaybookHelpers
  extend Forwardable

  def_delegator :config, :playbook_topic_belongs_to_section_key, :topic_belongs_to_section_key
  def_delegator :config, :playbook_section_has_many_topics_key, :section_has_many_topics_key

  SectionTopic = Struct.new(:section, :file, :content)

  def playbook_section_topics_files(section_page)
    topics_files_snapshot = topics_files(section_page)
    topic_content_snapshot = nil

    section_has_many_topics_values(section_page).reduce([]) do |memo, section_value|
      topic_file = topics_files_snapshot.find do |topic_file|
        topic_content_snapshot = topic_content(topic_file)
        topic_value = topic_belongs_to_section_value(topic_content_snapshot)
        topic_value == section_value
      end

      memo << SectionTopic.new(section_page, topic_file, topic_content_snapshot) if topic_file

      memo
    end
  end

  private

  def topics_files(section_page)
    section_topics_dir_snapshot = section_topics_dir(section_page)
    extensions[:file_watcher]
      .sources
      .by_type(:source)
      .files
      .select { |file| file.relative_path.dirname.to_s == section_topics_dir_snapshot }
  end

  def section_topics_dir(section_page)
    path = section_page.path
    File.basename path, File.extname(path)
  end

  def topic_content(topic_file)
    extensions[:front_matter].data(topic_file.relative_path.to_s)
  end

  def topic_belongs_to_section_value(topic_content)
    topic_content.first[topic_belongs_to_section_key]
  end

  def section_has_many_topics_values(section_page)
    section_page.data[section_has_many_topics_key]
  end
end
