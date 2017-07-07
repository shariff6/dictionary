require('sinatra')
    require('sinatra/reloader')
    also_reload('lib/**/*.rb')
    require('./lib/word')
    require('./lib/definition')


get('/') do
  erb(:index)
end
get('/words/new') do
     erb(:word_form)
end

post('/definitions') do
    definition = params.fetch('definition')
    @definition = Definition.new(definition)
    @definition.save()
    @dword = Word.find(params.fetch('word_id').to_i())
    @word.add_definition(@definition)
    erb(:word)
  end
