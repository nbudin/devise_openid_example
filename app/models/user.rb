class User < ActiveRecord::Base
  devise :openid_authenticatable, :lockable, :recoverable,
         :rememberable, :trackable, :timeoutable

  attr_accessible :identity_url
  
  def self.create_from_identity_url(identity_url)
    self.create(:identity_url => identity_url)
  end
end
