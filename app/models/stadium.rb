class Stadium
  include Mongoid::Document

  field :name         , type: String
  field :capacity     , type: Hash
  field :country      , type: String
  field :city         , type: String
  field :clubs        , type: String
  field :other_names  , type: String
  field :inauguration , type: String
  field :construction , type: String
  field :cost         , type: String
  field :design       , type: String
  field :contractor   , type: String
  field :address      , type: String
  field :description  , type: String
end
