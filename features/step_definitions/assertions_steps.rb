Then("I should see {string}") do |content|
	expect(page).to have_content content
end

Then("I am logged into my account") do
	expect(current_path).to eq welcome_index
end

Then("I should see all my messages") do
	expect(current_path).to eq mailbox_inbox
end

Then("I should see my message") do
	expect(conversation).to have_content
end
