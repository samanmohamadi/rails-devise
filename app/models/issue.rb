class Issue < ActiveRecord::Base
  has_many :articles
  belongs_to :journal
end
