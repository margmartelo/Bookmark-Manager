require_relative './database'

class Bookmark

  def self.connect
    if ENV['ENVIRONMENT'] == 'test'
      Database.setup('bookmark_manager_test')
    else
      Database.setup('bookmark_manager')
    end
  end

  def self.all
    result = Database.query('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
  end

  def self.add_bookmark(url)
    Database.query("INSERT INTO bookmarks (url) VALUES ('#{url}')")
  end
end
