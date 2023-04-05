-- Code written by LDD. Last edited 05-Apr-2023.

my_table = { 42; 66; 'beef'; a_key = "a value"; 'fifth writing in table' }

my_table[7] = 505

my_table.answer = 'Yuppie'

-- You canNOT directly print a table
-- print(my_table)

-- Writing "a key" = "a value" raises an error (lua fails to find ending } )
-- Writing [a_key] = "a value" raises an error (lua interprets a_key as an index variable, but it is nil)

function printf (s, ...)
    io.write(s:format(...))
end

function printfn (s,...)
    print(s:format(...))
end

printf('Component 1 is: %s \n', my_table[1])
print(string.format('Component 2 is: %s', my_table[2]))
print(my_table[3])
print(my_table[4])
print(my_table.a_key)

print(my_table[7])
-- You canNOT access the element 7 using
-- print(my_table.7)

-- But you can access a keyed element with a string as a key in two ways.
print(my_table.answer)
print(my_table["answer"])

--This operation returns "random" values
printfn('Counting element in "varied" table with nil inside may be INconsistent: %s', #my_table)