class AddAttachmentImageToPosts < ActiveRecord::Migration
	# changing the table post and adding image
  def self.up
    change_table :posts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :posts, :image
  end
end
