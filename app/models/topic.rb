class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  self.per_page = 5

  default_scope {order ('topics.updated_at DESC')}
    scope :visible_to, -> (user) {user ? all : publicly_viewable}
    scope :publicly_viewable, -> {where(public: true)}
    scope :privately_viewable, -> {where(public: false)}
end
