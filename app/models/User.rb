class User < ApplicationRecord 
    has_many :portfolios 
    has_many :entries, through: :portfolios 
    # has_secure_password
end 