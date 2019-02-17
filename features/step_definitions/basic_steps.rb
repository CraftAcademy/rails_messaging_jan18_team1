  Given("following users exist") do |table|
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
  

  Given("I am logged in as {string}") do |name|
    user = User.find_by(name: name)
    login_as user, scope: :user
  end
  
  
  When("select {string} as {string}") do |names, string2|
    select names, from: string2
  end
  
  Given("I am visiting the {string}") do |path|
    case path
    when "Inbox"
      visit mailbox_inbox_path
    else 
      return false
    end
  end

	Given("the following email exists") do |table|
    table.hashes.each do |email|
        sender = User.find_by(name: email[:sender])
        @receiver = User.find_by(name: email[:receiver])
        sender.send_message(@receiver, email[:body], email[:subject])
    end
  end 
    
  When("I should see alert message") do
  end
  
  
  Then("my message will be moved to Trash") do
    pending # Write code here that turns the phrase above into concrete actions
  end

  
  
 