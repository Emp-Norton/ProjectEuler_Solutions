// Function to check if a number and its multiples have the same digits
function checkMultiples(num) {
  // Convert the number to a string, split it into an array of digits, and sort them
  const numDigits = String(num).split('').sort();
  
  // Check multiples from 2 to 6
  for (let m = 2; m <= 6; m++) {
    // Convert the multiple to a string, split it into an array of digits, and sort them
    const multipleDigits = String(num * m).split('').sort();
    
    // If the digits of the multiple are not the same as the original number, return false
    if (multipleDigits.join('') !== numDigits.join('')) return false;
  }
  
  // If all multiples have the same digits, return true
  return true;
}

// Loop through numbers from 99999 to 170000 and print those that pass the check
for (let num = 99999; num <= 170000; num++) {
  if (checkMultiples(num)) console.log(num);
}
