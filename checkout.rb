require 'json'
require_relative 'rules'

class CheckoutSystem
    def initialize
        herbs = File.read('herbs.json')
        @herbs_hash = JSON.parse(herbs)
        puts @herbs_hash
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