
feature "page loads" do
  scenario "will present 'Bookmark Manager'" do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end
