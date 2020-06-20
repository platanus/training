class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, :body, presence: true
end

# == Schema Information
#
# Table name: blogs
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  body       :text
#  user_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_blogs_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
