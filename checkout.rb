require 'json'
require_relative 'rules'
include Rules

class CheckoutSystem
    def initialize
        @herbs = []
    end

    def add(herb)
        @herbs << herb
    end

    def cart_value
        bas_price = Rules.basil_total(@herbs)
        par_price = Rules.parsley_total(@herbs)
        cor_price = Rules.cor_total(@herbs)
        cart_value = bas_price + par_price + cor_price
    end
end