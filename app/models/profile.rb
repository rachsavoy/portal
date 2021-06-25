class Profile < ApplicationRecord
  belongs_to :onboarding
  belongs_to :checklist

  include PgSearch::Model
  pg_search_scope :search,
    against: [:first_name, :last_name, :practice_area, :license],
    using: {
      tsearch: { prefix: true }
    }

end
