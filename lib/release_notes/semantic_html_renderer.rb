require 'redcarpet'
module ReleaseNotes
  class SemanticHtmlRenderer < Redcarpet::Render::HTML
    def initialize(opts={})
      @header_level_offset = opts.delete(:header_level_offset) || 1
      @header_class_prefix = opts.delete(:header_class_prefix) || "h"
      @header_class_prefix_offset = opts.delete(:header_class_prefix_offset) || (@header_level_offset + 1)
      super(opts)
    end
    def header(text, header_level,anchor=nil)
      anchor ||= text.parameterize
      "<a name='#{anchor}'></a><h#{header_level+@header_level_offset} class='#{@header_class_prefix}#{header_level+@header_class_prefix_offset}'>#{text}</h#{header_level+@header_level_offset}>"
    end
  end
end
