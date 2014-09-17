require 'redcarpet'
require 'extra_extra/semantic_html_renderer'

module ExtraExtra
  class ReleaseNotesController < ExtraExtra::ApplicationController
    layout ExtraExtra.layout_name


    def index
      file_content = File.read("#{Rails.root}/RELEASE_NOTES.md")
      markdown_renderer = Redcarpet::Markdown.new(ExtraExtra::SemanticHtmlRenderer.new(ExtraExtra.renderer_options),
                                                  autolink: true, 
                                                  no_intra_emphasis: true,
                                                  space_after_headers: true, 
                                                  fenced_code_blocks: true)
      @content = markdown_renderer.render(file_content)
    end

  end
end
