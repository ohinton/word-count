require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the counter path', {:type => :feature}) do
  it('processes the user entry and returns the number of times a given word appears in the given sentence') do
    visit('/')
    fill_in('sentence', :with => 'I love cats, cats and more cats!')
    fill_in('word_to_count', :with => 'cats')
    click_button('Submit')
    expect(page).to have_content(3)
  end
end
