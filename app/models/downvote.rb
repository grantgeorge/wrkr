class Downvote < ActiveRecord::Base
  belongs_to :user
  belongs_to :downvotable, counter_cache: true, polymorphic: true
end
