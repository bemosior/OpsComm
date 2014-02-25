class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable, :trackable

  has_many :report

  before_save :get_ldap_email, :get_ldap_name

  def get_ldap_email
    self.email = Devise::LDAP::Adapter.get_ldap_param(self.login,"mail").first
  end

  def get_ldap_name
    self.name = Devise::LDAP::Adapter.get_ldap_param(self.login,"name").first
  end

end
