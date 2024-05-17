let fractionalPart = '';

for (let i = 0; i <= 50000; i++) {
  fractionalPart += i
}

let indexSliceSum = 1;

for (let i = 0; i < 6; i++) {
  indexSliceSum *= Number(fractionalPart[10**i])
}

console.log(indexSliceSum)
