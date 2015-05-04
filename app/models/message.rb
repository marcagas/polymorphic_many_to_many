class Message < ActiveRecord::Base
  has_many :parts, through: :message_parts, source: :messageable, source_type: 'Part'
  has_many :message_parts, foreign_key: :part_id
end
