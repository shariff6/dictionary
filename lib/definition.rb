class Definition
  attr_reader = (:definition, :id)
  @@definitions = []
  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@identification.lenght.+(1)
  end
  define_method(:save) do
    @@definitions.push(self)
  end
  define_singleton_method(:clear) do
    @@definition = []
  end
  define_singleton_method(:find) do |identity|
    found_definition = nil
    @@definitions.each do |definitions|
      found_definition = identification if identificationto_i
    end
    found_definition
  end
end
