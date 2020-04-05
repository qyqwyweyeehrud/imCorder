/**
 * 
 */

let mm = require('./module_member');
mm.input('a001','hong','010-234','서울');
mm.input('a002','dong','010-111','부산');
mm.input('a003','fong','010-222','대구');
mm.input('a004','qong','010-333','청주');
mm.select('a003');
mm.output();