class Project < ApplicationRecord

    belongs_to :user
    has_one :agenda, dependent: :destroy 
end
