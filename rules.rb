class Rules

    def self.basil_total(herbs)
        basil_price = 0
        if herbs.count('BAS')%2 ==0
            basil_price = 3.11*(herbs.count('BAS')/2)
        else
            basil_price = 3.11*(herbs.count('BAS')/2) + 3.11*(herbs.count('BAS')%2)
        end
        basil_price
    end

    def self.parsley_total(herbs)
        parsley_price = 0
        if herbs.count('PAR')>=3
            parsley_price = 4.5*herbs.count('PAR')
        else
            parsley_price = 5*herbs.count('PAR')
        end
        parsley_price
    end

    def self.cor_total(herbs)
        coriander_total = 11.23*herbs.count('COR')
    end
end