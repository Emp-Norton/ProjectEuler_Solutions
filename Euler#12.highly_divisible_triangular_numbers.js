let bestDivCount = null;

function triNum(n) {
  if (n === 1) return 1;
  if (n === 3) return 3;
  let nth = (n * (n + 1)) / 2; // using the formula for triangular numbers
  return nth;
}

function divCounter(num) {
  let divCount = 0;
  for (let divisor = 1; divisor <= Math.sqrt(num); divisor++) {
    if (num % divisor === 0) {
      divCount++;
      if (num / divisor !== divisor) divCount++; // count the other divisor if it's not a square root
    }
  }
  if (!bestDivCount || divCount > bestDivCount) bestDivCount = divCount;
  return divCount;
}

function findByMaxDivisors(max) {
  let num = 1;
  let divCount = 0;
  while (divCount < max) {
    divCount = divCounter(triNum(num));
    num++;
  }
  console.log(`Nth: ${num - 1}, Value: ${triNum(num - 1)}`);
}

findByMaxDivisors(500);
