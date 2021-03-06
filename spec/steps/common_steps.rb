step "I signed in" do
  visit "/auth/developer"
  fill_in 'Name', with: 'antono'
  fill_in 'Email', with: 'self@antono.info'
  click_button 'Sign In'
  page.should have_content 'Signed in successfully'
  page.should have_content 'Profile'
  click_button 'Save'
end

step "I'm on the :path page" do |path|
  visit path
end

step "I visit :path page" do |path|
  visit path
end

step "I click link :title" do |title|
  click_link title
end

step "I should see :text" do |text|
  page.should have_content text
end

step "I should not see :text" do |text|
  page.should_not have_content text
end
