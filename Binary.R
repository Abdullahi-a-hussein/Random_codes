
decimalToBinary = function(numb){
  quotient = floor(numb/2); # Recording the quotient part of of the number
 binary = c(numb%%2); # recording a vector of 1s and 0s vector for representation of numb
  while (quotient != 0) {
    reminder = quotient %% 2; # Keeping track of the reminders after division by 2
    quotient = floor(quotient/2) #Keeping track of the quotient part of the number.
    binary = append(binary, reminder, 0)
    
  };
 binary;
}

decimalToBinary(2)


 
binaryToDecimal = function(binaryvector){
  n = length(binaryvector) - 1;
  i = 1;
  numb = binaryvector[i]*2^n;
  
  while (n != 0){
    i = i + 1;
    n = n - 1;
    numb = numb +  2^n * binaryvector[i];
  }
  numb;
}

(x = decimalToBinary(3))
(y = binaryToDecimal(x))
