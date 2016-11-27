class DonateController < ApplicationController
    def create
        values = {
            business: Rails.application.secrets.paypal_business,
            cmd: "_xclick",
            upload: 1,
            return: root_path,
            amount: params[:amount],
            item_name: "CUCEC Donation",
            item_number: 0,
            quantity: '1'
        }
        redirect_to "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
    end
end
