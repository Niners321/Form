class User < ApplicationRecord
    validates :username, presence:true, uniqueness: true
    validates :email, presence:true, 
    format: {with: /^(.+)@(.+)$/, message: "Email invalid"  }, uniqueness: true
    validates :password, presence:true, length: { minimum: 8, too_short: 
        "Password must be a minimum of %{count} characters" }
end
