class MedicineSerializer < ActiveModel::Serializer
  attributes :id, :name, :dosage, :manufacturer, :quantity, :expiry_date, :price

  def price
    "$ #{'%.2f' % self.object.price}"
  end
  
end
