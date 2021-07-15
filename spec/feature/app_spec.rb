require 'spec_helper'

describe 'app', type: :system, js: true do
  it 'clicks greeting to change welcome message' do
    visit '/public/index.html'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for clicking!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for clicking!')
  end
end
