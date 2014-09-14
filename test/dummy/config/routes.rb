Rails.application.routes.draw do

  mount ReleaseNotes::Engine => "/release_notes"
end
