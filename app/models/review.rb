class Review < ApplicationRecord

  belongs_to :user

  belongs_to :place

  validate :rating_between_1_and_5

  def rating_between_1_and_5
    if rating > 5 || rating < 1
      errors.add(:rating, "Rating cannot be greater than 5 or less than 1")
    end
  end
end
