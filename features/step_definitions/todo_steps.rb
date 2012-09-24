Given /^I have signed in$/ do
  visit root_path
  fill_in 'Email', with: 'person@example.com'
  click_button 'Sign In'  
end

When /^I create a todo titled "(.*?)"$/ do |title|
  find('a[rel="create-todo"]').click
  fill_in 'Title', with: title
  click_button 'Create Todo' # this could be another <find(selector-for-submit-button), etc...>
end

Then /^I should see the todo "(.*?)"$/ do |title|
  within 'ul.todos' do
    expect(page).to have_css 'li', text: title
  end
end