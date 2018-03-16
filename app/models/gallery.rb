class Gallery < ApplicationRecord
    has_many :pictures, dependent: :destroy

    # has_attached_file :image, styles: { large: "800x800>", thumb: "100x100>" }  #, default_url: "/images/:style/missing.png"
    # validates_attachment :image, 
    # content_type: { content_type: ["image/jpeg", "image/jpg", "image/png"] },
    # size: { in: 0..6000.kilobytes }
    
    has_attached_file :image, 
                    :styles => { :large => "1000x1000>", :thumb => ["150x150>", :png] }
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/JPG", "image/JPEG", "image/png", "image/PNG"]
    validates_attachment_file_name :image, :matches => [/png\Z/, /PNG\Z/, /jpe?g\Z/, /JPE?G\Z/  ]
    validates_attachment :image, size: { less_than: 5.megabytes }
    
    



end
