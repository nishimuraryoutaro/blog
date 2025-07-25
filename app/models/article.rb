# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  content    :text             not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
class Article < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { minimum: 2 }
  validates :title, format: { with: /\A(?!\@)/ }
  validates :content, length: { minimum: 10 }
  validates :content, presence: true
  validates :content, uniqueness: true

  validate :validate_title_and_content_length

  belongs_to :user



  def display_created_at
    I18n.l(self.created_at, format: :default)
  end

  def author_name
    user.display_name
  end

  private
  def validate_title_and_content_length
    char_count = self.title.length + self.content.length
    errors.add(:content, '100文字以上で') unless char_count > 100
  end
end
