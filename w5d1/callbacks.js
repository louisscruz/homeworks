String.prototype.capitalize = function() {
  return this.charAt(0).toUpperCase() + this.slice(1);
}

function titleize(array, callback) {
  let words = array.map(function(word) {
    return word.charAt(0).toUpperCase() + word.slice(1);
  });
  words.forEach(function(word) {
    callback(word);
  });
}
