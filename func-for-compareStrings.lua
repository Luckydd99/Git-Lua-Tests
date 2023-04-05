-- Code written by LDD. Last edited 05-Apr-2023.

function my_for_loop (input_string)
    loop_string = ''
    -- Not specifying the step implies step = 1.
    for i=1,6 do
        print(i)
        loop_string = loop_string .. 'a'
        if loop_string == input_string then
            print("The input string corresponds to the loop string!")
        end
    end
end

test_string = 'aaaa'
my_for_loop(test_string)