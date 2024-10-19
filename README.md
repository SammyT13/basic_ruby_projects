# The Odin Project

## Basic Ruby Projects

1. Caesar Cipher
    - Implement a caesar cipher that takes in a string and the shift factor and then ouputs the modified string:
    ```ruby
      caesar_cipher("What a string!", 5)
        #=> "Bmfy f xywnsl!"
    ```
2. Sub Strings 
    - Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should returna has listing each ssubstring (case insensitive) that was found in the original string and  how many times it was found:
    ```ruby
        dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
        #=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    ```
    - Next, make sure the order of your method can handle multiple words:
    ```ruby
        sub_strings("Howdy partner, sit down! How's it going?", dictionary)
        #=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
    ```
3. Bubble Sort
    - Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless)
    ```ruby
        bubble_sort([4,3,78,2,0,2])
        #=> [0,2,2,3,4,78]
    ```
