# Bash Arrays

## Syntax

`arr=()`	Create an empty array</br>
`arr=(1 2 3)`	Initialize array</br>
`${arr[2]}`	Retrieve third element</br>
`${arr[@]}`	Retrieve all elements</br>
`${!arr[@]}`	Retrieve array indices</br>
`${#arr[@]}`	Calculate array size</br>
`arr[0]=3`	Overwrite 1st element</br>
`arr+=(4)`	Append value(s)</br>
`str=$(ls)`	Save ls output as a string</br>
`arr=( $(ls) )`	Save ls output as an array of files</br>
`${arr[@]:s:n}`	Retrieve n elements starting at index s</br>

## how to make an array

`array1=(1 2 3 4)`</br>

print to screen</br>

`echo ${array1}`</br>
if you type this it will only print the first element in the array</br>

to print the whole array</br>
`echo ${array1[@]}`
