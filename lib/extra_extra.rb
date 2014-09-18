require "extra_extra/engine"

module ExtraExtra
  mattr_accessor :layout_name
  mattr_accessor :renderer_options
end

ExtraExtra.layout_name = 'application'
ExtraExtra.renderer_options = {
  header_level_offset: 1,
  header_class_prefix: "h",
  header_class_prefix_offset: 2,
}
