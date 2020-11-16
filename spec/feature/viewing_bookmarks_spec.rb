feature 'viewing bookmarks' do
  scenario 'displays all bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'http://www.reddit.com'
    expect(page).to have_content 'http://www.bbc.co.uk'
    expect(page).to have_content 'http://www.twitter.com'
  end
end
