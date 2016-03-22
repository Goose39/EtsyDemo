class Listing < ActiveRecord::Base
has_attached_file :image, styles: { medium: "200x>", thumb: "100x>" }, default_url: "default.gif"
validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

validates :Name, :description, :price, presence: true
validates :price, numericality: {greater_than: 0}
validates_attachment_presence :image
end
