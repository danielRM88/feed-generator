class Book < ApplicationRecord
  belongs_to :author
  has_many :upvotes

  def published_on_formatted
    I18n.l(self.published_on)
  end
end
