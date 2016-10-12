function isSubstring(searchString, subString) {
  // naive subString
  let subLength = subString.length;
  for (let i = 0; i < searchString.length - subLength + 1; i++) {
    console.log(searchString.slice(i, i + subLength));
    if (searchString.slice(i, i + subLength) === subString) return true;
  }
  return false;
}
