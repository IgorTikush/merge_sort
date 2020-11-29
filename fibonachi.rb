


def fibs
    fib_seq = [0,1]
    number = gets.to_i
    number.times do |i|
        if i == 0
             
        elsif i == 1
        
        else 
            fib_seq.push(fib_seq[i-1] + fib_seq[i-2])
        end
    end
    puts fib_seq
end 

$number = gets.to_i
$fib_seq = [0,1]
$i = 1
def fib_rec
 $i += 1
 $fib_seq.push($fib_seq[$i-1] + $fib_seq[$i-2])
 if $i == $number
    puts $fib_seq
    return   
 end

 fib_rec
end

fib_rec