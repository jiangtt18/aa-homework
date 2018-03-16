const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits(){
  reader.question('would you like some tea', function (res1) {
    console.log(`${res1}`);
  };

  reader.question('would you like some tea_biscuits', function (res2) {
    console.log(`${res2}`);
  };

  const first = (res === 'yes') ? 'do' : 'don\'t';
  const second = (res2 === 'yes') ? 'do' : 'don\'t';

  console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
  reader.close();

}
