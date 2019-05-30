class Playbook::Section < SimpleDelegator
  ROOT_FILES_EXCLUDED_BY_PLAYBOOK_SECTIONS = %w[
    README.md
    index.html.md
  ]

  attr_reader :resource

  class << self
    def all(app)
      sections_files(app).map { |file| new(app.sitemap.find_resource_by_path(app.sitemap.file_to_path(file))) }
    end

    def find_by_topic(topic)
      all(topic.app).find { |section| section.topics_dir == topic.file_descriptor.relative_path.dirname.to_s }
    end

    private

    def sections_files(app)
      app
        .extensions[:file_watcher]
        .sources
        .by_type(:source)
        .files
        .select { |file| section_file?(file) }
    end

    def section_file?(file)
      file.relative_path.dirname.to_s == '.' &&
        !ROOT_FILES_EXCLUDED_BY_PLAYBOOK_SECTIONS.include?(file.relative_path.to_s)
    end
  end

  def initialize(resource)
    @resource = resource
    super @resource
  end

  def app
    @resource.instance_variable_get :@app
  end

  def topics
    Playbook::Topic.all_by_section(self)
  end

  def topics_files
    app
      .extensions[:file_watcher]
      .sources
      .by_type(:source)
      .files
      .select { |file| file.relative_path.dirname.to_s == topics_dir }
  end

  def topics_resources
    topics_files.map { |file| app.sitemap.find_resource_by_path(app.sitemap.file_to_path(file)) }
  end

  def topics_dir
    File.basename path, File.extname(path)
  end

  def has_many_topics_values
    data[app.config.playbook_section_has_many_topics_key]
  end

  def next
    self.class.all(app).find { |section| section.data.position == data.position.next }
  end
end
