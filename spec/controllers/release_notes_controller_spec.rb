require 'spec_helper'

describe ReleaseNotes::ReleaseNotesController do

  routes { ReleaseNotes::Engine.routes }

  render_views

  describe "#index" do
    it "should render nicely" do
      get :index
      expect(response.response_code).to eq(200)
    end
  end

end
