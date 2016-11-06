Given (/^a student with email "(.*)" and password "(.*)" exists$/) do |email, password|
    Student.create!({:email => email, :password => password, :password_confirmation => password })
end

Given (/^a mentor with email "(.*)" and password "(.*)" exists$/) do |email, password|
    Mentor.create!({:email => email, :password => password, :password_confirmation => password })
end

Given (/^an admin with email "(.*)" and password "(.*)" exists$/) do |email, password|
    Admin.create!({:email => email, :password => password, :password_confirmation => password })
end