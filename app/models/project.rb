class Project < ApplicationRecord

    belongs_to :user
    has_one :agenda, dependent: :destroy
    
    validates :title, uniqueness: {case_sensitive: false}
end
