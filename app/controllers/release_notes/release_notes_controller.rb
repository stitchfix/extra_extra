require 'redcarpet'
require 'release_notes/semantic_html_renderer'

module ReleaseNotes
  class ReleaseNotesController < ReleaseNotes::ApplicationController
    layout ReleaseNotes.layout_name


    def index
      file_content = File.read("#{Rails.root}/RELEASE_NOTES.md")
      markdown_renderer = Redcarpet::Markdown.new(SemanticHtmlRenderer.new(ReleaseNotes.renderer_options),
                                                  autolink: true, 
                                                  no_intra_emphasis: true,
                                                  space_after_headers: true, 
                                                  fenced_code_blocks: true)
      @content = markdown_renderer.render(file_content)
    end

  end
end
