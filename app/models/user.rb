    #   t.string :first_name, null:false
    #   t.string :last_name,null: false
    #   t.string :email, null:false
    #   t.string :password_digest ,null: false
    #   t.string :session_token, null: false

class User < ApplicationRecord
    validates :first_name, :last_name, :email, :password_digest, :session_token, presence: true
    
    has_many :houses, 
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :House

   
    
end
