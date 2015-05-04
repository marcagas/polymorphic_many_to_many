class MessagePart < ActiveRecord::Base

  belongs_to :messageable, polymorphic: true
  belongs_to :part

  def messageable_type=(class_name)
    super(class_name.constantize.base_class.to_s)
  end

end