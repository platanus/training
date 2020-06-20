class Comment < ApplicationRecord
  belongs_to :blog

  validates :name, :body, presence: true
end

# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  body       :text
#  blog_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_comments_on_blog_id  (blog_id)
#
# Foreign Keys
#
#  fk_rails_...  (blog_id => blogs.id)
#
