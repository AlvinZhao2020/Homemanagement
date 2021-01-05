class House < ApplicationRecord
    # validation 
    # validates will help avoid 500 error. not a database error but a ruby error
    # t.string "address", null: false
    # t.integer "buyin_price", null: false
    # t.integer "current_price", null: false
    # t.integer "rent", null: false
    # t.integer "ownner_id", null: false
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    validates :address, :buyin_price, :current_price,:rent, :ownner_id , presence: true 

    belongs_to :owner,
    primary_key: :id,
    foreign_key: :ownner_id,
    class_name: :User
end
