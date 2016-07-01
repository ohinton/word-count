require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @sentence = params.fetch('sentence')
  @word_to_count = params.fetch('word_to_count')
  @result = params.fetch('sentence').counter(@word_to_count)
  @total_word_count = @sentence.word_counter()
  erb(:result)
end
