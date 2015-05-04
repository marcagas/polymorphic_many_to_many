class Part < ActiveRecord::Base
  has_many :messages, through: :message_parts, as: :messageable
  has_many :message_parts, as: :messageable
end
