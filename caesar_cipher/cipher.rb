# Caesar Cipher

def caesar_cipher(str, num)
    str_list = str.split("")
    ord_list = []
    char_list = []
    
    for char in str_list
        order = char.ord()

        if order.between?(65,90)
            new_order = order + num

            if new_order > 90
                new_order -= 26
            end

            ord_list << new_order
        elsif order.between?(97,122)
            new_order = order + num

            if new_order > 122
                new_order -= 26
            end

            ord_list << new_order
        else
            ord_list << order
        end
    end

    for order in ord_list
        char_list << order.chr()
    end

    return char_list
end

result = caesar_cipher("What a string!", 5)
puts(result.join(""))