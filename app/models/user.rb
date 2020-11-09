class User < ApplicationRecord
    has_secure_password

    has_many :projects, dependent: :destroy
    has_many :stories, through: :projects

    # username validation
    validates :username, uniqueness: { case_sensitive: false }

end
