class BlogArticle < ApplicationRecord
    validates :header, presence: true,
                        uniqueness: true
    validates :body, presence: true,
                        length: { minimum: 5}
end
