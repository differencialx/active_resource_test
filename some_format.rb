require 'activeresource'
require 'pry-byebug'

class SomeFormat < ActiveResource::Base
  self.site = 'http://localhost:4567'

  ATTRIBUTES = [
    'id',
    'title',
    'format'
  ].freeze

  schema do
    string(*ATTRIBUTES)
  end

  validate :validate_format

  def validate_format
    if self.format.present? && !%w(json msgpack).include?(self.format)
      errors.add(:format, 'format can only be either json or msgpack')
    end
  end
end