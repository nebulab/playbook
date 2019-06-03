class Playbook < Middleman::Extension
  def initialize(app, options_hash = {}, &block)
    super
  end

  helpers do
    def current_chapter
      Playbook::Chapter.new(current_resource)
    end

    def current_section
      current_chapter.try :section
    end
  end
end

::Middleman::Extensions.register(:playbook, Playbook)
