require 'spec_helper'

describe ConversationsController, :type => :controller do
  include Devise::Test::ControllerHelpers

  describe 'Conversations page' do
    it 'should return to student login page if student not signed in' do
      get :index
      expect(response).to render_template(root_path)
    end
  end
end