require "release_notes/engine"

module ReleaseNotes
  mattr_accessor :layout_name
  mattr_accessor :renderer_options
end

ReleaseNotes.layout_name = 'application'
ReleaseNotes.renderer_options = {
  header_level_offset: 1,
  header_class_prefix: "h",
  header_class_prefix_offset: 2,
}
