require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'displays the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.reddit.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.bbc.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');")

      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.reddit.com')
      expect(bookmarks).to include('http://www.bbc.co.uk')
      expect(bookmarks).to include('http://www.twitter.com')
    end
  end
end
