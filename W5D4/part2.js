
function titleize(arr,callback) {
  arr.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titleized);
}
function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
  this.height = this.height + 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  let trickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[trickIndex]}!`);
};



function bfastOrder(){
let breakfast =" I'd like cheesy scrambled eggs please."
  return function (food) {
    breakfast +=`and ${food}`
  }

}
