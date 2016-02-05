class Upvote < ActiveRecord::Base
  belongs_to :user
  belongs_to :upvotable, counter_cache: true, polymorphic: true
end
