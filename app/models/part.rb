class Part < ActiveRecord::Base
  has_many :message_parts
  has_many :messages, through: :message_parts, source: :messageable, source_type: 'Message'
end
