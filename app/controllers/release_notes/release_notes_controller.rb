require 'redcarpet'

module ReleaseNotes
  class ReleaseNotesController < ReleaseNotes::ApplicationController
    layout ReleaseNotes.layout_name

    class SemanticHtmlRenderer < Redcarpet::Render::HTML
      def header(text, header_level,anchor=nil)
        anchor ||= text.parameterize
        "<a name='#{anchor}'></a><h#{header_level+1} class='h#{header_level+2}'>#{text}</h#{header_level+1}>"
      end
    end

    def index
      file_content = File.read("#{Rails.root}/RELEASE_NOTES.md")
      markdown_renderer = Redcarpet::Markdown.new(SemanticHtmlRenderer.new,
                                                  autolink: true, 
                                                  no_intra_emphasis: true,
                                                  space_after_headers: true, 
                                                  fenced_code_blocks: true)
      @content = markdown_renderer.render(file_content)
    end

  end
end
