class Post < ActiveRecord::Base
  attr_accessible :address, :desire, :dob,
                  :hobby, :interest, :name,
                  :signature, :tags_attributes

  validates :address, :presence => true
  validates :signature, :presence => true,
            :length => { :minimum => 5}

  has_many :comments, :dependent => :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
                                :reject_if => proc { |attrs| attrs.all? { |k,v| v.blank? }}


end
