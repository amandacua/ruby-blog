class BlogArticle < ApplicationRecord
    has_one_attached :avatar
    
    validates :header, presence: true,
                        uniqueness: true
    validates :body, presence: true,
                        length: { minimum: 5}
end
