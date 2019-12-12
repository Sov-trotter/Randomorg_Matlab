# Randomorg_Matlab 
A toolbox that fetches true random numbers from [Random.org](https://www.random.org)!
## After cloning or extracting the downloaded zip from within the Matlab GUI 
    * Navigate to the extracted folder and run the `Randomorg_API.mltbx` file.

# Following are the available functions : 


`generateIntegers(n, min, max, replacement)` 

        ###This method generates true random integers within a user-defined range. 
    `n`
        *How many random integers you need. Must be within the [1,1e4] range. 
    `min`
        *The lower boundary for the range from which the random numbers will be picked. Must be within the [-1e9,1e9] range. 
    `max`
        *The upper boundary for the range from which the random numbers will be picked. Must be within the [-1e9,1e9] range. 
    `replacement` 
        *Specifies whether the random numbers should be picked with replacement. The default (`true`) will cause the numbers to be picked with replacement, 
        i.e., the resulting numbers may contain duplicate values. If you want the numbers picked to be unique set this value to `false`. 



`generateIntegerSequences(n, length, min, max, replacement)`

        ###This method generates uniform or multiform sequences of true random integers within user-defined ranges.
    `n`
        *An integer specifying the number of sequences requested. Must be within the [1,1000] range. 
    `length`
        *This parameter specifies the lengths of the sequences requested. 
        *For uniform sequences, length must be an integer in the [1,10000] range. 
        *For multiform sequences, length can be an array with n integers, each specifying the length of the sequence identified by its index. 
         In this case, each value in length must be within the [1,10000] range and the total sum of all the lengths must be in the [1,10000] range. 
    `min`
        *This parameter specifies the lower boundaries of the sequences requested. 
        *For uniform sequences, min must be an integer in the [-1000000000,1000000000] range. 
        *For multiform sequences, min can be an array with n integers, each specifying the lower boundary of the sequence identified by its index. 
         In this case, each value in min must be within the [-1000000000,1000000000] range. 
    `max`
        *This parameter specifies the upper boundaries of the sequences requested. 
        *For uniform sequences, max must be an integer in the [-1000000000,1000000000] range. 
        *For multiform sequences, max can be an array with n integers, each specifying the upper boundary of the sequence identified by its index. 
         In this case, each value in max must be within the [-1000000000,1000000000] range. 
    `replacement` 
        *Specifies whether the random numbers should be picked with replacement. The default (`true`) will cause the numbers to be picked with replacement, 
         i.e., the resulting numbers may contain duplicate values. If you want the numbers picked to be unique set this value to `false`.


`generateDecimalFractions(n, decimalPlaces, replacement)`

        ###This method generates true random decimal fractions from a uniform distribution across the [0,1] interval with a user-defined number of decimal places.
    `n`
        *How many random decimal fractions you need. Must be within the [1,10000] range. 
    `decimalPlaces`
        *The number of decimal places to use. Must be within the [1,14] range. 


`generateGaussians(n, mean, standardDeviation, significantDigits)`

        ###This method generates true random numbers from a Gaussian distribution (also known as a normal distribution).
           The form uses a Box-Muller Transform to generate the Gaussian distribution from uniformly distributed numbers.
    `n`
        *How many random numbers you need. Must be within the [1,10000] range. 
    `mean`
        *The distribution's mean. Must be within the [-1000000,1000000] range. 
    `standardDeviation`
        *The distribution's standard deviation. Must be within the [-1000000,1000000] range. 
    `significantDigits`
        *The number of significant digits to use. Must be within the [2,14] range. 
        
        
`generateStrings(n, length, characters)`
        ###This method generates true random strings.
    `n`
        *How many random strings you need. Must be within the [1,10000] range. 
    `length`
        *The length of each string. Must be within the [1,32] range. All strings will be of the same length 
    `characters`
        *A string that contains the set of characters that are allowed to occur in the random strings. 
          The maximum number of characters is 128.
    `replacement` 
        *Specifies whether the random numbers should be picked with replacement. The default (`true`) will cause the numbers to be picked with replacement, 
         i.e., the resulting numbers may contain duplicate values. If you want the numbers picked to be unique set this value to `false`.          


`generateUUIDs(n)
        ###This method generates version 4 true random Universally Unique IDentifiers (UUIDs) in accordance with section 4.4 of [RFC 4122](https://www.ietf.org/rfc/rfc4122.txt). 
    `n`
        *How many random UUIDs you need. Must be within the [1,1000] range. 
        

`generateBlobs(n, size, format)`
        ###This method generates Binary Large OBjects (BLOBs) containing true random data. 
    `n`
        *How many random blobs you need. Must be within the [1,100] range. 
    `size`
        *The size of each blob, measured in bits. Must be within the [1,1048576] range and must be divisible by 8. 
         The total size of all blobs requested must not exceed 1,048,576 bits (128 KiB). 
    `format` 
        *Specifies the format in which the blobs will be returned. Values allowed are `base64` and `hex`. 
