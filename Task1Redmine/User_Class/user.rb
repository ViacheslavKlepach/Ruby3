class User
  attr_reader :user, :password, :mail
  #attr_writer

  def initialize(user,password)
    @user = user
    @password = password
    @mail = user + '@i.ua'
    @first_name = user + '_firstname'
    @last_name = user + '_lastname'
  end
end