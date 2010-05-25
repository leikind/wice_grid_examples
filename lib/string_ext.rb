module StringExt #:nodoc:
  def html_safe_if_needed #:nodoc:
    if respond_to?(:html_safe)
      html_safe
    else
      self
    end
  end
end

class String #:nodoc:
  include StringExt
end