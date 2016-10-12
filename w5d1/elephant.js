function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log('phrRRRRRRRRRRRRR!!!!!');
}

Elephant.prototype.grow = function() {
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}

Elephant.prototype.play = function() {
  let trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
  console.log(`${trick} is a trick!`);
}

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting`);
}
