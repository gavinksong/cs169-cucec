Then (/^I should see "(.*)" in "(.*)"$/) do |text, box|
    within("#" + box) {expect(page).to have_content(text)}
end
