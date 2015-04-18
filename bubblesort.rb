# Bubblesort
# Bubblesort of an array
# (c) 2015 Joshua Klein



def bubble_sort( a )
    n = a.length
    loop do
       newn = 0
       for i in 1...n do
          if a[i-1] > a[i] then
             temp = a[i-1]
             a[i-1] = a[i]
             a[i] = temp
             newn = i
          end
       end
       n = newn
    break if n == 0
    end
        return a
end

puts(bubble_sort([4,3,78,2,0,2]))


def bubble_sort_by( a )
    n = a.length
    loop do
       newn = 0
       for i in 1...n do
          if yield(a[i],a[i-1]) > 0 then
             temp = a[i-1]
             a[i-1] = a[i]
             a[i] = temp
             newn = i
          end
       end
       n = newn
    break if n == 0
    end
        return a
end

puts(bubble_sort_by(["hi","hello","hey"]) do |left,right|
       right.length - left.length
     end)


