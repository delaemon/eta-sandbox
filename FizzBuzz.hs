main :: IO ()
    main = do
    print $ fizzbuzz 30

    fizzbuzz :: Integer -> [String] 
    fizzbuzz 0 = []
    fizzbuzz n
    | n `mod` 15 == 0 = fizzbuzz(n - 1) ++ ["fizzbuzz"]
    | n `mod` 3 == 0 = fizzbuzz(n - 1) ++ ["fizz"]
    | n `mod` 5 == 0 = fizzbuzz(n - 1) ++ ["buzz"]
    fizzbuzz n = fizzbuzz(n - 1) ++ [show n]
