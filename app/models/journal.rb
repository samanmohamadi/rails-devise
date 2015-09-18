class Journal < ActiveRecord::Base
  has_many :issues
  has_many :articles , through: :issues
end
