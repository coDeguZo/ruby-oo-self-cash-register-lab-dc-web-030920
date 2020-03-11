require 'pry'
class CashRegister

    attr_accessor :total, :discount, :price, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @price = price
        @quantity = quantity
        @total += price * quantity
        quantity.times { @items << title }
        @last_transaction = price * quantity

    end

    def apply_discount
        if discount > 0
            discounted_price = (price * discount)/100.to_f
            @total -= discounted_price
            "After the discount, the total comes to $#{total.to_i}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end

end
























#     def discount
#         @discount = 20
#     end

#     def add_item(title, price, quantity=1)
#         @Quantity = quantity
#         @price = price
#         @total += price * quantity
#     end

#     def apply_discount
#         self.total - @price
#         @price *= (@discount / 100)
#         "After the discount, the total comes to $#{self.total + @price}."


#     end

# end
