class Airport < ApplicationRecord
  validates :code, length: {maximum: 3, minimum: 3}
end
