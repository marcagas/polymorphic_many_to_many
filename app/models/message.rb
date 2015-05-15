class Message < ActiveRecord::Base
  has_many :message_parts, as: :messageable
  has_many :parts, through: :message_parts
end
