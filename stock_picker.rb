def stock_picker(array)
  array = Array(array)
  return array.reduce(0) do |old, new_value|
    index = 0
    profit = array[0..array.index(new_value)].reduce(0) do |old1, new1|
      new_profit = new_value - new1
      if new_profit > old1
        index = array.index(new1)
        new_profit
      else
        old1
    end
    end
    profit > array[old[1]] - array[old[0]] ? [index, array.index(new_value)] : old
  end
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
