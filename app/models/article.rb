class Article < ApplicationRecord
    #relationships
    has_to :category

    #validations
    validates_presence_of :title, :content

    #scopes
    scope :alphbetical -> {order(:title)}
    scope :active -> {where(active: true )}

end
