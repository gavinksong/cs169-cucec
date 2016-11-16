require 'spec_helper'

describe StudentsController, :type => :controller do
  include Devise::Test::ControllerHelpers

  describe 'Method current_user' do

    it 'should return student if student logged in' do
      @request.env["devise.mapping"] = Devise.mappings[:mentor]
      sign_in create(:student)
      expect(subject.current_user).to_not eq(nil)
    end

    it 'should return nil if not logged in' do
      expect(subject.current_user).to eq(nil)
    end

  end



end