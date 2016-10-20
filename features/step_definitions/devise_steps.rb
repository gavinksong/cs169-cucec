# NO COMMENTS

Given (/^A student with email "(.*)" and password "(.*)" exists$/) do |email, password|
    Student.create!({:email => email, :password => password, :password_confirmation => password })
end