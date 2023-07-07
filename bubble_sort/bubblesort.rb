# Bubble Sort

to_sort = [4,3,78,2,0,2]

def bubble_sort(list)
    for _ in (0 .. list.length - 1)
        for i in (0 .. list.length - 2)
            fst = list[i]
            sec = list[i+1]

            if fst > sec
                list[i] = sec
                list[i+1] = fst            
            end
        end     
    end
    return list
end

result = bubble_sort(to_sort1)
puts("#{result}")