class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable, :rememberable, :trackable

  has_many :report

  def get_ldap_email
    self.email = Devise::LDAP::Adapter.get_ldap_param(self.login,"mail")
  end

  def get_ldap_name
    self.name = Devise::LDAP::Adapter.get_ldap_param(self.login,"name")
  end

end
