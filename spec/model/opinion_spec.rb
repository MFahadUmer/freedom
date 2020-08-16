require 'rails_helper'
RSpec.describe Opinion, type: :model do
  let(:user) { User.create(id: 1, username: 'James', fullname: 'james james') }
  let(:post2) { Opinion.create(author_id: 1, opinion: 'its a great opinion') }

  it 'should be invalid if opinion is less than 10 characters' do
    post2.opinion = 'na' * 3
    expect(post2).to_not be_valid
  end

  it 'should be invalid if author_id is incorrect' do
    post2.author_id = 0
    expect(post2).to_not be_valid
  end
end
