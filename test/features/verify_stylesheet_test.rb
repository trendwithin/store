require "test_helper"

feature "VerifyStylesheet is Zurb" do
  scenario "When page loads it uses the correct stylesheet" do
    visit products_path
    page.must_have_content "Listing"
    save_and_open_page
    page.should have_xpath("//link[contains(@href, 'foundation')]")
    page.wont_have_content "Goobye All!"
  end
end
