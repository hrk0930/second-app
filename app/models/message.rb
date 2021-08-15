class Message < ApplicationRecord

  validates :text, presence: true, unless: :was_attached?

  belongs_to :user
  has_one_attached :image
  def was_attached?
    self.image.attached?
  end
end
