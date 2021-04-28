require "user"

describe User do

    describe "#count" do
        context "return crypto count" do
            it "returns integer" do
                expect(User.count()).to eq(Integer)
            end
        end

        # context "#user_count" do
        #     it "should return crypto count" do


        #         expect(UserCryptoCount.count()).to eq(count)
        #     end
        # end
    end

end