function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

> madLib('make', 'best', 'guac');
"We shall MAKE the BEST GUAC."
isSubstring
Input

function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

function fizzBuzz(arr) {
  let new_arr = [];
  for(let i=0;i<arr.length;i++) {
    if (i % 3===0 || i%5===0)
      new_arr.push(arr[i])
  }
  return new_arr
}
function isSubstring(st1, st2){
  return st1.split(" ").includes(st2);

}



function isPrime(n){
  if (n < 3) {
    return true;
  }

  for(let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}

function sumOfPrime(n) {
  let count = 0;
  let num = 2;
  let sum = 0;

  while (count < n) {
    if (isPrime(num)) {
      sum += num;
      count++;
    }
    num++;
  }
  return sum;
}
