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

    def self.which_promo_to_apply
        for item in @items
            if item == "A"
                @a_count += 1
            end
            if item == "B"
                @b_count += 1
            end
            if item == "C"
                @c_count += 1
            end
            if item == "D"
                @d_count += 1
            end
        end
end

module PromotionEngine
    @result = 0
    def promo_one(count)
        if count > 0
            new_count += count/3
            new_count += result.floor()
            remainder = count % 3
            @result = (new_count * 130) + (remainder * 50)
        end
    end
   
    def promo_two(count)
        if count > 0
            new_count += count/2
            new_count += result.floor()
            remainder = count % 2
            @result = (new_count * 45) + (remainder * 30)
        end
    end
   
    def promo_three(count1, count2)
        if count1 > 0 && count2 > 0
            if count1 == count2
                @resilt = count1 * 30
           elsif count1 > count2
                new_count = count1 - count2
                @result = (count2 * 30) + (new_count * 20)
            elsif count2 > count1
                new_count = count2 - count1
                @result = (count1 * 30) + (new_count * 15)
           end
        end
    end
end