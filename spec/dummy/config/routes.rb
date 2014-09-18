Rails.application.routes.draw do

  mount ExtraExtra::Engine => "/release_notes"
end
