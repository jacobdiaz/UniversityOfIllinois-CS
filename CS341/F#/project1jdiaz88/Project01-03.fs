module Project01_03

//
// min L
//
// Returns minimum element of L
// 
// Examples: min []          => raises an exception (Unhandled Exception: System.ArgumentException: The input sequence was empty.)
//           min [-2; 4]     => -2
//           min [34]        => 34
//           min [10; 9; 9; 101] => 9 
//           min ['d', 'r', 'b'] => b
//
// You may not call List.min directly in your solution.
// 

let rec helper (list, maxSoFar) = 
        match list, maxSoFar with
        | [], maxSoFar -> maxSoFar
        | (hd :: tail), maxSoFar -> 
        let maxVal = if hd < maxSoFar then hd else maxSoFar
        helper(tail, maxVal)
let min L =
        helper(L, L.Head)
        
//[<EntryPoint>]
let main argv =
    printfn "Testing Project 03: min"

    let min2 = min [-2; 4]
    if min2 = -2 then
        printfn "Passed!"
    else
        printfn "Failed!"
        
    let min3 = min [34]
    if min3 = 34 then
        printfn "Passed!"
    else
        printfn "Failed!"
        
    let min4 = min [10; 9; 9; 101]
    if min4 = 9 then
        printfn "Passed!"
    else
        printfn "Failed!"  

    let min5 = min ['d'; 'r'; 'b'] 
    if min5 = 'b' then
        printfn "Passed!"
    else
        printfn "Failed!" 
    
    printfn ""
    0 // return an integer exit code
    


