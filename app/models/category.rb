class Category
  include Mongoid::Document
  field :name, :type => String
  field :active, :type => Boolean
  has_many :documents
end
