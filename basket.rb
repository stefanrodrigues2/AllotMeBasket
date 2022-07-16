#Inventory
class Items
    include Enumerable 
    def each
        yield "Basil     - BAS - £3.11"
        yield "Parsley   - PAR - £5.00"
        yield "Coriander - COR - £11.23"
    end
end

#Printing all the list of items available with pricing details
puts "List of items available to buy"
items_list = Items.new 
items_list.each do |item|
    puts item
end

#Accepting user input for number of items
puts "How many items would you like to buy: "
no_of_items = gets.to_i
puts "!!!BUY ONE GET ONE OFFER ON BAS!!\n!!DISCOUNTED RATE OF £4.50 on PAR if you buy 3 or more!!\n"

bas_quantity = 0
cor_quantity = 0
par_quantity = 0
iter = 1
puts "Enter item code: "
#while loop to accept input and case to increment quantity for each item
while iter <= no_of_items
    item_code = gets.chomp
    iter = iter+1
    case item_code
    when "BAS", "bas"
        bas_quantity = bas_quantity + 1
    when "PAR", "par"
        par_quantity = par_quantity + 1
    when "COR", "cor"
        cor_quantity = cor_quantity + 1
    end
end

#function to calculate pricing rule for parsley
def parsley_total(par_quantity)
    if par_quantity>=3
        tot_par = 4.5*par_quantity
    else
        tot_par = 5*par_quantity
    end
    return tot_par
end

#function to calculate pricing rule for basil
def basil_total(bas_quantity)
    if bas_quantity%2==0
        tot_basil = 3.11*(bas_quantity/2)
    else
        tot_basil = 3.11*(bas_quantity/2) + 3.11*(bas_quantity%2)
    end
    return tot_basil
end

basil_price = basil_total(bas_quantity)   
parsley_price = parsley_total(par_quantity)

#calculating basket total
puts "Basket Total = £#{basil_price + parsley_price + 11.23*cor_quantity}"