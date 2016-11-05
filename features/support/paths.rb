module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/, /^the landing page$/
      '/'
      
    # mentor paths
    when /^the mentor dashboard page$/
      mentors_path
    when /^the mentor login page$/
      new_mentor_session_path   
    when /^the mentor signup page$/
      new_mentor_registration_path
      
    when /^the mentor call page$/
      mentors_call_path  
    when /^the mentor chat page$/
      mentors_chat_path 
      
    # student paths
    when /^the student dashboard page$/
      students_path
    when /^the student login page$/
      new_student_session_path
    when /^the student signup page$/
      new_student_registration_path
      
    when /^the student listen page$/
      students_listen_path
    when /^the student watch page$/ 
      students_watch_path
    when /^the student speak page$/
      students_speak_path
    when /^the student read page$/
      students_read_path
    when /^the student write page$/
      students_write_path
    when /^the student chat page$/
      students_chat_path
      
    when /^the conversation page$/
      conversations_path
      #doing this because there is no need for new chat
      # chat_path
    when /^the donation page$/
      new_donate_path
    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
