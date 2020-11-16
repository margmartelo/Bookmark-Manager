require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'displays the bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.reddit.com')
      expect(bookmarks).to include('http://www.bbc.co.uk')
      expect(bookmarks).to include('http://www.twitter.com')
    end
  end
end
