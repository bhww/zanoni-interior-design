class Picture < ApplicationRecord
  belongs_to :gallery
 
  has_attached_file :image, styles: { large: "800x800>", thumb: "100x100>" }  #, default_url: "/images/:style/missing.png"
    validates_attachment :image, presence: true,
    content_type: { content_type: ["image/jpeg", "image/jpg", "image/png"] },
    size: { in: 0..6000.kilobytes }




end
