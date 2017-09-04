class Country
  include Mongoid::Document

  index({ name: 1 }, { unique: true })

  field :name,  type: String
  field :total, type: Integer
end
