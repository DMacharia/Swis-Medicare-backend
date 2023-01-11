class Medicine < ApplicationRecord
    validates :name, :dosage, :manufacturer, :quantity, :expiry_date, :price, presence: true
end
