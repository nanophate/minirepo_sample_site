require 'spec_helper'

describe 'app', type: :feature, js: true do
  it 'clicks greeting to change welcome message' do
    visit '/sample/index.html'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for clicking! Double')
    click_on 'Greeting! Double'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for clicking! Double')
  end
end
