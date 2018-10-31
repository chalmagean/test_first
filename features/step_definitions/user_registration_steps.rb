Given("I am on the homepage") do
  visit "/"
end

Given("I click on the registration link") do
  click_on "registration-link"
end

When("I fill in and submit the registration from") do
  fill_in "user_name", with: "jdoe"
  fill_in "user_email", with: "jdoe@example.com"
  fill_in "user_password", with: "secret1234"
  fill_in "user_password_confirmation", with: "secret1234"
  click_on "user_registration_submit"
end

Then("I should see a registration confirmation message") do
  expect(page).to have_content("Welcome")
end

Then("I should receive a confirmation email") do
  step %{"jdoe@example.com" should receive an email}
end

Given("I already have an account") do
  visit "/"
  click_on "registration-link"
  fill_in "user_name", with: "jdoe"
  fill_in "user_email", with: "jdoe@example.com"
  fill_in "user_password", with: "secret1234"
  fill_in "user_password_confirmation", with: "secret1234"
  click_on "user_registration_submit"
end

When("I sign out") do
  click_on "signout_link"
  expect(page).to have_content("Signed out successfully")
end

When("I try to register with the same email") do
  step %{I sign out}
  step %{I already have an account}
end

Then("I should see an error message") do
  expect(page).to have_content("Email has already been taken")
end
