/**
 * exports 라는 객체를 리터럴로 만들것이다
 * my_module_exports.js
 * date :2020.02.26
 */

let exp={};
exp.sum = function(x,y){return x+y;}
exp.avg = function(x,y){return (x+y)/2;}
module.exports = exp;