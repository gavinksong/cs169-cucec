module ApplicationCable
  include SessionsHelper

  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = current_user
    end

  end
end
