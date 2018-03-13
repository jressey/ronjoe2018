require "rails_helper"

RSpec.describe :course do

  before(:all) do
    @course = FactoryBot.create(:course)
  end

  context "valid course" do
    let(:valid_course) { FactoryBot.create(:course) }

    it "is valid with valid attributes" do
      expect(valid_course).to be_valid
    end
  end

  context "course has a name with fewer than 6 character" do
    let(:short_name_course) { FactoryBot.create(:course, name: "abc")}
    it "is not valid" do
      #Hey Ron, make this spec pass!
      expect(short_name_course).to_not be_valid
    end
  end
end