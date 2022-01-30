class Post < ApplicationRecord
  belongs_to :user


  enum display: {show: 0, draft: 1, post_delete: 2}
end
