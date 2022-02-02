class Post < ApplicationRecord
  belongs_to :user
  # validates :title, format: {with: /\A[\w+\s+]{1,}\z/, message: 'must be present'}, presence: true
  # validates :description, format: {with: /(.){10,}/}

  mount_uploader :file, AvatarUploader


  enum display: {show: 0, draft: 1, post_delete: 2}
end
