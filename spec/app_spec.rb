require 'spec_helper'
require 'open-uri'

describe App do
  def app
    @app ||= App
  end

  it "returns index page" do
    get '/'
    expect(last_response).to be_ok
  end
end
