class Definition
  attr_reader = (:definition)
  @@definition = []
  define_method(:initialize) do |definition|
    @definition = definition
  end
end
