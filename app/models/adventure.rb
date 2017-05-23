class Adventure < ApplicationRecord
  validates :what, presence: true,
                   length: { minimum: 3 }
end
