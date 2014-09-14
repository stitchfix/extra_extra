require 'redcarpet'

module ReleaseNotes
  class ReleaseNotesController < ReleaseNotes::ApplicationController

    def index
      file_content = File.read("#{Rails.root}/RELEASE_NOTES.md")
      markdown_renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, fenced_code_blocks: true)
      @content = markdown_renderer.render(file_content)
    end

  end
end
