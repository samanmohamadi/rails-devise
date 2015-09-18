class Journal < ActiveRecord::Base
  resourcify
  has_many :issues
  has_many :articles , through: :issues
end
