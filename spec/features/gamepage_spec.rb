feature "Playing the game" do
  before :each do
    visit '/'
    click_on 'Submit'
  end

  context 'when on new game screen' do
    scenario 'user is asked to enter name' do
      expect(page).to have_content("Make your selection!")
    end
  end

  context 'clicks on radio button' do
    # before { @outcome = outcome }
    scenario "User makes a selection and the game outcome is evaluated" do
      # byebug
      find(:css, ".radio[value='Rock']").set(true)
      click_on 'Shoot'
      byebug
      expect(page).to have_content("And the winner is...Player 1")
    end
  end
end
