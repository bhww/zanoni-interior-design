class Gallery < ApplicationRecord
    has_many :pictures
    
    has_attached_file :image, styles: { large: "600x600>", thumb: "100x100>" }  #, default_url: "/images/:style/missing.png"
    
    validates_attachment :image, presence: true,
    content_type: { content_type: "image/jpeg" },
    size: { in: 0..5000.kilobytes }
end
