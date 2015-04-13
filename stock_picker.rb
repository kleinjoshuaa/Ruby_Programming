# Stock Picker
# Input an array of stock prices
# Script will output best day to buy, and best day to sell
# as an array
# (c) 2015 Joshua Klein



def stock_picker(array)
    prices = []
    for i in 0..array.length-1 do
        for j in i+1..array.length-1 do
                prices << [array[i]-array[j],[i,j]]
        end
    end

    prices.sort! {|x,y| x[0] <=> y[0] }

    return prices[0][1]
end

price_array = [17,3,6,9,15,8,6,1,10]


puts(stock_picker(price_array))
