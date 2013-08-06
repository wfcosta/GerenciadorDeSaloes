class Permission < ActiveRecord::Base
  belongs_to :role
  attr_accessible :action, :subject_class
  has_and_belongs_to_many :roles

  validates_uniqueness_of :action, :scope => :subject_class
  validates_presence_of :action, :subject_class
end
