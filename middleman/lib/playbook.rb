class Playbook < Middleman::Extension
  def initialize(app, options_hash = {}, &block)
    super
  end

  helpers do
    def current_chapter
      Playbook::Chapter.new(current_resource)
    end
  end
end

::Middleman::Extensions.register(:playbook, Playbook)
