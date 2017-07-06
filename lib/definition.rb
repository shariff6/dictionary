class Definition
  attr_reader = (:definition)
  @@definition = []
  define_method(:initialize) do |definition|
    @definition = definition
  end
  define_method(:save) do
    @@definition.push(self)
  end
  define_method(:clear) do
    @@definition = []
  end
end
