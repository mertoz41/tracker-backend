class Agenda < ApplicationRecord
    belongs_to :project
    has_many :objectives, dependent: :destroy
end
