feature 'viewing bookmarks' do
  scenario 'displays all bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.reddit.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.bbc.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.twitter.com');")

    visit('/bookmarks')

    expect(page).to have_content 'http://www.reddit.com'
    expect(page).to have_content 'http://www.bbc.co.uk'
    expect(page).to have_content 'http://www.twitter.com'
  end
end
