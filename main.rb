class Sku
    attr_reader :sku_id, :price
    def initialize(sku_id, price)
        @sku_id = sku_id
        @price = price
    end
end

class Cart
    @items = []
    @total = 0
    @a_count = 0
    @b_count = 0
    @c_count = 0
    @d_count = 0

    def self.add_to_cart(sku_id)
        @items.push(sku_id)
        puts "done"
    end

    def self.show_items
        puts @items
    end
end