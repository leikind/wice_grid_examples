# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def controller_code
    filename = 'app/controllers/' + @current_example_map[0].to_s.sub(/(_index)?_path/, '') + '_controller.rb'
    code = ''
    index_started = false
    File.readlines(filename).each do |line|
      index_started = true if line =~ /def\s+index/
      break if  line =~ /protected/
      code << line if index_started
    end
    
    CodeRay.scan(code, :ruby).div(:line_numbers => :table)
  end
  
  def view_code
    filename = 'app/views/' + @current_example_map[0].to_s.sub(/(_index)?_path/, '') + '/index.html.erb'
    code = File.read(filename)
    CodeRay.scan(code, :rhtml).div(:line_numbers => :table)
  end
  

  def page_title
    @current_example_map[1]
  end
  
  def page_description
    if @current_example_map[2].blank?
      nil
    else
      content_tag :ul do
        @current_example_map[2].collect{|desc| content_tag(:li, desc) }
      end
    end
  end

  def navigation_bar
    content_tag :ol do
      @example_map.collect do |example|
        content_tag :li do
          link_to_unless(example[0] == @current_example_key,example[1], send(example[0]))
        end
      end
    end
  end
end
