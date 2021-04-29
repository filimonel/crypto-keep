require "user"

describe User do

    describe "#count" do
        context "return crypto count" do
            it "returns integer" do
                expect(User.count()).to eq(Integer)
            end
        end

        
    end

end