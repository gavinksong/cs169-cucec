# NO COMMENTS

Given (/^a student with email "(.*)" and password "(.*)" exists$/) do |email, password|
  #check that the the student already exists in the database before creating a new student record. If the record esists, then pull it from the database and return it instead
    Student.create!({:email => email, :password => password, :password_confirmation => password })
end

Given (/^a mentor with email "(.*)" and password "(.*)" exists$/) do |email, password|
  #same thing as the comment above
    Mentor.create!({:email => 'email@gmail.com', :password => password, :password_confirmation => password })
end