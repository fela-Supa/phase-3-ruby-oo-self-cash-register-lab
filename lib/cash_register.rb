# class CashRegister

#      attr_accessor : total, :items, :last_item
#      attr_reader :discount
 
  
#     def initialize(discount = 0)
#       @total = 0.0
#       @discount = discount
#       @items = []
#     end
  
#     def add_item(title, price, quantity = 1)
#       self.last_item = price * quantity
#         self.total += price * quantity


#         quantity.times{ self.items.push(title)}

#     end
  
#     def apply_discount
#       if discount
#         if discount > 0
#             self.total =  (@total - (@total*@discount/100))
#             "After the discount, the total comes to $#{self.total}."
#         else 
#             "There is no discount to apply."
#       end
#     end
  
#     # def items(title = nil, quantity = nil)
#     #   if title && quantity
#     #     @transactions.select { |t| t[:title] == title && t[:quantity] == quantity }
#     #   elsif title
#     #     @transactions.select { |t| t[:title] == title }
#     #   else
#     #     @transactions
#     #   end
#     # end
  
#     def void_last_transaction
#       # last_transaction = @transactions.pop
#       # @total -= last_transaction[:price] * last_transaction[:quantity] if last_transaction
#       # @total = 0.0 if @transactions.empty?
#       # @total
#        self.total -= self.last_item
#     end
#   end
  


class CashRegister

    attr_accessor :total, :items, :last_item
    attr_reader :discount

   
    def initialize(discount=0)
        @discount = discount
        @total = 0 
        @items = []     
    end

    def add_item(title,price,quantity=1)

        self.last_item = price * quantity
        self.total += price * quantity


        quantity.times{ self.items.push(title)}


    end

    def apply_discount
        if discount > 0
            self.total =  (@total - (@total*@discount/100))
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end

    end

    def void_last_transaction
        self.total -= self.last_item
        
    end

 

  

end
