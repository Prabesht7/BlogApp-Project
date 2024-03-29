class Post < ApplicationRecord
    validates :title, presence:true, length:{minimum:5 , maximum:10000}
    validates :body, presence:true, length:{minimum:5 , maximum:10000}
    belongs_to :user
    has_many :comments, dependent: :destroy
end
