  Given("following user exists") do |table|
    table.hashes.each do |user|
      FactoryBot.create(:user, user)
    end
  end

  And ("I visit the site") do
    visit root_path
  end

  When("I fill in {string} with {string}") do |field, input|
    fill_in field, with: input
  end

  When("I click on {string}") do |button|
    click_on button
  end

	When("I am in my inbox") do
		expect(current_path).to eq mailbox_inbox
	end





  Given("I am logged in as {string}") do |name|
    user = User.find_by(name: name)
    login_as user, scope: :user
  end

  Given("I am visiting the {string}") do |path|
    case path
      when "Inbox"
       visit mailbox_inbox_path
     else
       return false
    end
  end


  When("select {string} as {string}") do |names, string2|
    select names, from: string2
  end



