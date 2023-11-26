class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
end
