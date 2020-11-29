arr = [8,3,2,9,7,1,5,4,10,6,15]
def merge(b,c,arr)
    ib = 0
    ic = 0
    iarr = 0
    while ib <= b.length-1 && ic <= c.length-1
        if b[ib] < c[ic]
        arr[iarr] = b[ib]
        ib = ib +1
        else
        arr[iarr] = c[ic]
        ic = ic + 1
        end
    iarr = iarr + 1
    end
    if ib == b.length
        arr[iarr..b.length+c.length] = c[ic..c.length] 
    else
        arr[iarr..b.length+c.length] = b[ib..b.length]
    end
end

def mergeSort(arr)
    

    if arr.length >1
        b = arr.slice(0, (arr.length/2).round)
        c = arr.slice((arr.length/2).round, arr.length)
        mergeSort(b)
        mergeSort(c)
        merge(b,c,arr)
    end 
end

mergeSort(arr)
puts arr