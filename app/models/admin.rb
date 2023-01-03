class Admin < User
    validates :title, presence: true
end