/**
 * Arrow Function
 */

const power = function(x){
    return x * x;
}

let numbers = [1,2,3,4,5];
numbers.forEach(function(number){
    // console.log(`${number}:${power(number)}`);
    
    // let result = (function(x){
    //     return x*x;
    // })(number);

    // let result = (x => {
    //     return x*x;
    // })(number);

    let result = (x => x*x)(number);

    process.stdout.write(`${number}:${power(number)}\t`);
});