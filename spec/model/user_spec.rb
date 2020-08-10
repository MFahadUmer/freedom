require 'rails_helper'
RSpec.describe User, type: :model do
  let(:user) { User.create(username: 'James', fullname: 'james james') }
  let(:user2) { User.create(id: 2, username: 'James', fullname: 'james james') }
  let(:post) { user.opinions.build(id: 1, opinion: 'its a great opinion').save }
  let(:like) { user.likes.build(opinion_id: 1).save }
  let(:following) { user.followings.build(followed_id: 2).save }
  it 'should be invalid if name is less than 6 characters' do
    user.username = 'na' * 2
    expect(user).to_not be_valid
  end

  it 'should be valid if username is greater than 6 characters' do
    user.username = 'nam22' * 2
    expect(user).to be_valid
  end

  it 'should be invalid if fullname is empty' do
    user.fullname = ''
    expect(user).to_not be_valid
  end

  it 'should be valid if association between user and opinions works' do
    user
    post
    expect(user.opinions.first.opinion).to eql('its a great opinion')
  end

  it 'should be valid if association between user and like works' do
    user
    post
    like
    expect(user.likes.first.opinion_id).to eql(1)
  end

  it 'should be valid if association between user and following works' do
    user
    user2
    following
    expect(user.followings.first.followed_id).to eql(2)
  end
end
