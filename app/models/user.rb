class User < ActiveRecord::Base
    has_many :models
    has_many :brands, through: :models
       
end