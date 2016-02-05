class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, counter_cache: true, polymorphic: true
end
