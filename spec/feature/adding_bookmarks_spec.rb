feature 'Adding a new bookmark' do
  scenario 'A user can see a link to add a bookmark in the page' do
    visit('/')
    expect(page).to have_link('Add Bookmark')
  end

  scenario 'A user can enter the bookmark' do
    visit('/')
    click_link('Add Bookmark')
    fill_in('new_bookmark', with: 'https://www.codecademy.com/')
    expect(page).to have_button('Save')
  end

  scenario 'expect to return back to the homepage upon clicking the Save button' do
    visit '/'
    click_link('Add Bookmark')
    fill_in('new_bookmark', with: 'https://www.codecademy.com/')
    click_button('Save')
    expect(page).to have_link('Add Bookmark')
  end
end
