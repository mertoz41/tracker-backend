class Project < ApplicationRecord

    belongs_to :user
    has_many :objectives, dependent: :destroy
    
    validates :title, uniqueness: {case_sensitive: false}
end
