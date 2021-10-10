local c = {}

function scale_hex(hex, scalefactor)
    local number = tonumber(hex, "16")
    local scaled = math.floor(number * scalefactor)
    local new_hex = string.format("%x", scaled)
    if new_hex == '0' then new_hex = '00' end

    return new_hex
end


function c.colorscale(hexcolor, scalefactor, symbol)
    scalefactor = scalefactor or 0.8
    symbol = symbol or "#"
    hexcolor = string.gsub(hexcolor, symbol, "")

    local color_string = symbol
    for i = 1, #hexcolor, 2 do
        local hex = hexcolor:sub(i,i+1)
        local new_hex = scale_hex(hex, scalefactor)

        color_string = color_string .. new_hex
    end

    return color_string
end

return c
