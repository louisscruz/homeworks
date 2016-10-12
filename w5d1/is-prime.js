function isPrime(number) {
  if (number < 2) return false;
  for (let i = 2; i * i <= number; i++) {
    if (number % i === 0) return false;
  }
  return true;
}


function firstPrimes(number) {
  let numbers = [];
  let start = 2;
  while (numbers.length !== number) {
    if (isPrime(start)) numbers.push(start);
    start++;
  }
  return numbers;
}

function sumOfPrimes(number) {
  let numbers = firstPrimes(number);
  let answer = 0;
  for (let i = 0; i < numbers.length; i++) {
    answer += numbers[i];
  }
  return answer;
}
