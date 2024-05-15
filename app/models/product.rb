class Product < ApplicationRecord
    validates :name, :brand, :price, presence: true
    validates :name, presence: true, uniqueness: true

    before_save :check_desc_present

    def check_desc_present
        self.desc = self.name if desc.nil?
    end
end
