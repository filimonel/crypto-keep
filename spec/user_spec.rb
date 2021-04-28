require "user"

describe User do

    describe "#count" do
        # context "return crypto count" do
        #     it "returns integer" do
        #         expect(UserCryptoCount.count()).to eq(Integer)
        #     end
        # end

        context "#user_count" do
            it "should return crypto count" do
                user = FactoryGirl.create(:user)
                allow_any_instance_of(UsersHelper).to receive(:current_user).and_return(user)

                count = user.cryptos.count

                expect(UserCryptoCount.count()).to eq(count)
            end
        end
    end

end

# describe UsersHelper do
#     describe '#current_user_link' do
#       it 'should return a link to the current user' do
#         user = FactoryGirl.create(:user)
#         allow_any_instance_of(UsersHelper).to receive(:current_user).and_return(user)
  
#         expected_link = link_to user.name, user
#         expect(current_user_link).to eq(expected_link)
#       end
#     end
#   end