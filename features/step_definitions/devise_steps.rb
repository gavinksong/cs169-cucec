# NO COMMENTS

Given (/^a student with email "(.*)" and password "(.*)" exists$/) do |email, password|
    Student.create!({:email => email, :password => password, :password_confirmation => password })
end

Given (/^a mentor with email "(.*)" and password "(.*)" exists$/) do |email, password|
    Mentor.create!({:email => email, :password => password, :password_confirmation => password })
end