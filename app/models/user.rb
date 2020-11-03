class User < ApplicationRecord
    has_secure_password

    has_many :projects

    # username validation
    validates :username, uniqueness: { case_sensitive: false }

end
