class Stadium
  include Mongoid::Document
  include Mongoid::Search
  include Mongoid::Timestamps
  include Geocoder::Model::Mongoid

  geocoded_by :address, :skip_index => true
  after_validation :geocode
  #reverse_geocoded_by :coordinates
  #after_validation :reverse_geocode  # auto-fetch address

  #index({ name: 1 }, { unique: true })
  index name: 1
  index country: 1
  index city: 1

  #embeds_many :pictures

  search_in :name, :other_names, :city, :country, :address

  field :name,                 type: String
  field :capacity_total,       type: String
  field :capacity_additional,  type: String
  field :country,              type: String
  field :city,                 type: String
  field :clubs,                type: String
  field :other_names,          type: String
  field :inauguration,         type: String
  field :construction,         type: String
  field :cost,                 type: String
  field :design,               type: String
  field :contractor,           type: String
  field :address,              type: String
  field :description,          type: String
  field :latitude,             type: String
  field :longitude,            type: String
  field :coordinates,          type: Array
  field :website,              type: String
  field :record_attendance,    type: String
  field :images,               type: Hash
end
