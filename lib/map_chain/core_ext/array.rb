class Array
  def map_chain(method_names)
    raise ArgumentError unless method_names.is_a? String

    _map_chain(method_names)
  end

  alias collect_chain map_chain

  private

  def _map_chain(method_names)
    case method_names
    when String
      _map_chain(method_names.split('.').map(&:strip))
    when Array
      method_names.inject(self) {|result, method_name|
        result.map {|elem| elem.method(method_name).call }
      }
    else
      raise ArgumentError
    end
  end
end
