class Experience::TicketType < ApplicationRecord
  default_scope -> { reorder(:sold_out, :created_at) }
  monetize :price_fractional

  belongs_to :experience,
    inverse_of: :extras,
    touch: true

  validates :price,
    presence: true,
    money: { greater_than_or_equal_to: 0, allow_nil: true }
end
