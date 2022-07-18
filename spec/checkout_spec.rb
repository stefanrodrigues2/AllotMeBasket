require_relative '../checkout'

describe CheckoutSystem do
    describe 'Cart Sample 1' do
        it 'returns total cart value with discount' do
            checkout = CheckoutSystem.new()
            checkout.add('BAS')
            checkout.add('BAS')
            checkout.add('BAS')
            checkout.add('BAS')
            cart_value = checkout.cart_value
            expect(checkout.cart_value).to eq(6.22)  
        end
    end

    describe 'Cart Sample 2' do
        it 'returns total cart value with discount' do
            checkout = CheckoutSystem.new()
            checkout.add('PAR')
            checkout.add('PAR')
            checkout.add('PAR')
            checkout.add('BAS')
            checkout.add('COR')
            cart_value = checkout.cart_value
            expect(checkout.cart_value).to eq(27.84)  
        end
    end

    describe 'Cart Sample 3' do
        it 'returns total cart value with discount' do
            checkout = CheckoutSystem.new()
            checkout.add('PAR')
            checkout.add('PAR')
            checkout.add('BAS')
            checkout.add('BAS')
            checkout.add('COR')
            cart_value = checkout.cart_value
            expect(checkout.cart_value).to eq(24.34)  
        end
    end

    describe 'Cart Sample 4' do
        it 'returns total cart value with discount' do
            checkout = CheckoutSystem.new()
            checkout.add('BAS')
            checkout.add('PAR')
            checkout.add('BAS')
            checkout.add('COR')
            cart_value = checkout.cart_value
            expect(checkout.cart_value).to eq(19.34)  
        end
    end

    describe 'Cart Sample 5' do
        it 'returns total cart value with discount' do
            checkout = CheckoutSystem.new()
            checkout.add('PAR')
            checkout.add('PAR')
            checkout.add('BAS')
            checkout.add('PAR')
            cart_value = checkout.cart_value
            expect(checkout.cart_value).to eq(16.61)  
        end
    end
end