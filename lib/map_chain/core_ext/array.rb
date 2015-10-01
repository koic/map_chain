class Array
  def map_chain(method_names)
    case method_names
    when String
      map_chain(method_names.split('.').map(&:strip))
    when Array
      method_names.inject(self) {|result, method_name|
        result.map {|elem| elem.method(method_name).call }
      }
    else
      raise ArgumentError
    end
  end

  alias collect_chain map_chain
end
