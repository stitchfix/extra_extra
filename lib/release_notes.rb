require "release_notes/engine"

module ReleaseNotes
  mattr_accessor :layout_name
end

ReleaseNotes.layout_name = 'application'
