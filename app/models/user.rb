class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :two_factor_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one_time_password
  
  def send_two_factor_authentication_code
    SinchSms.send('1800e8c0-2719-4a05-a7ed-b880cd324eee', 'W/5VQxamY0GVEXFArzrf9A==', "Your code is #{otp_code}", phone_number)
  end
end
