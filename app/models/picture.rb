class Picture < ApplicationRecord
  belongs_to :gallery
 
  has_attached_file :image, styles: { large: "800x800>", medium: "300x300>", thumb: "100x100>" }  #, default_url: "/images/:style/missing.png"
  validates_attachment :image, presence: true,
    content_type: { content_type: "image/jpeg" },
    size: { in: 0..10000.kilobytes }




end
