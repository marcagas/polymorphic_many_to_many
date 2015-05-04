class CreateMessageParts < ActiveRecord::Migration
  def change
    create_table :message_parts do |t|
      t.belongs_to :part
      t.references :messageable, polymorphic: true


      # t.belongs_to :message
      # t.string :messageable_type
      t.timestamps
    end
  end
end
