class Sku
    attr_reader :sku_id, :price
    def initialize(sku_id, price)
        @sku_id = sku_id
        @price = price
    end
end