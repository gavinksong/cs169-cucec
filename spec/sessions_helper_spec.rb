require 'spec_helper'

describe MentorsController, :type => :controller do
  include Devise::Test::ControllerHelpers

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:mentor]
    sign_in FactoryGirlRails.create(:mentor)
  end

  describe 'maintaining sessions' do

    it 'should return mentor if mentor logged in' do

    end
  end
end