require 'spec_helper'

describe Answer do
  before do
    @answer = FactoryGirl.build(:answer)
  end

  subject { @answer }

  it { should belong_to(:category) }
  it { should belong_to(:contact) }

  it { should respond_to(:url) }
  it { should respond_to(:title) }
  it { should respond_to(:body) }

  it { should be_valid }
end