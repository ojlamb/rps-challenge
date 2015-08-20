require 'player'
describe Player do
  it "can take user selection and assign to attribute choice" do
    subject.selection("paper")
    expect(subject.choice).to eq :paper
  end

  it "can take user selection and assign to attribute" do
    subject.selection("scissors")
    expect(subject.choice).to eq :scissors
  end
  it "can take user selection and assign to attribute" do
    subject.selection("rock")
    expect(subject.choice).to eq :rock
  end
end
