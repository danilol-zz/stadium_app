class Country
  include Mongoid::Document

  field :name,  type: String
  field :total, type: Integer
end
