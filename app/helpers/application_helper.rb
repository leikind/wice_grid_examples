# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  @@code = Hash.new

  def controller_code(filename = nil)

    filename_for_view ||=  File.join('app/controllers/' + @current_example_map[0].to_s.sub(/(_index)?_path/, '') + '_controller.rb')
    filename ||= File.join(Rails.root, filename_for_view)
    return @@code[filename] if @@code.has_key?(filename)
    code = ''
    index_started = false
    File.readlines(filename).each do |line|
      if line =~ /# <example>/
        index_started = true
        next
      end
      break if line =~ /# <\/example>/
      code << line if index_started
    end

    filename_and_code(filename, filename_for_view, code, :ruby)
  end
  
  def view_code(filename = nil)
    if filename.is_a? Array
      return filename.collect{|fn| view_code(fn)}.join('')
    elsif filename.nil?
      filename_for_view =  File.join('app/views/' + @current_example_map[0].to_s.sub(/(_index)?_path/, '') + '/index.html.erb')
      filename =  File.join(Rails.root, filename_for_view)
    end
    return @@code[filename] if @@code.has_key?(filename)
    code = File.read(filename)
    filename_and_code(filename, filename_for_view, code, :rhtml)
  end
  
  
  def filename_and_code(filename, filename_for_view, code, format)
    @@code[filename] = content_tag(:div, filename_for_view, :class => 'filename') + 
      CodeRay.scan(code, format).div(:line_numbers => :table)
  end

  def page_title
    @current_example_map[1]
  end
  
  def page_description
    if @current_example_map[2].blank?
      nil
    else
      %@<a href="#{README_URL}##{@current_example_map[2]}" target="_new">Documentation</a>@
    end
  end

  if self.respond_to?(:safe_helper)
    safe_helper :page_description, :view_code, :controller_code
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
