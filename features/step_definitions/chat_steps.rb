Given /^there exists a conversation between student "(.*)" and mentor "(.*)"$/ do |student, mentor|
  step "a student with email \"#{student}\" and password \"foobar\" exists"
  step "a mentor with email \"#{mentor}\" and password \"foobar\" exists"
  # TODO: Create a conversation between them


end