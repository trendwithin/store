require "test_helper"

feature "VerifyStylesheet is Zurb" do
  scenario "When page loads it uses the correct stylesheet" do
    visit products_path
    page.must_have_content "Listing"
    page.must_have_css '[class="top-bar"]'
    page.wont_have_content "Goobye All!"
  end
end
