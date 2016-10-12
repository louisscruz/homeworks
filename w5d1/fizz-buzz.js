function fizzBuzz(array) {
  let answer = [];
  for (let i = 0; i < array.length; i++) {
    let value = array[i];
    if (value % 15 !== 0 && (value % 3 === 0 || value % 5 === 0)) {
      answer.push(value)
    }
  }
  return answer;
}
