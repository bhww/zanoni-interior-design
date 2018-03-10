class Gallery < ApplicationRecord
    has_many :pictures, dependent: :destroy
    
    has_attached_file :image, styles: { large: "600x600>", thumb: "100x100>" }  #, default_url: "/images/:style/missing.png"
    
    validates_attachment :image,
    content_type: { content_type: ["image/jpeg", "image/jpg", "image/png"]  },
    size: { in: 0..6000.kilobytes }
    
    
end
