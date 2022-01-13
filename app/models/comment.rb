class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATUSES = %w[public private archived].freeze

  validates :status, inclusioin: { in: VALID_STATUSES }

  def archived?
    status == "archived"
  end
end
