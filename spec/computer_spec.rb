require 'computer'
describe Computer do
  it "randomly assigns computer selection" do
    options = [:paper, :scissors, :rock]
    choice = subject.selection
    expect(options).to include(choice)
  end
end
