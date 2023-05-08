/**
 * 
 */
 
 /**
 * 
 */

var hi = 14369988991;
var lo = 14360999999;
num = '';
num = Math.floor(Math.random() * (hi - lo) + lo);
var ranFirst = ["Jack", "Maria", "Tony", "Amber", "Trey", "Cris"];
var fn = ranFirst[Math.floor(Math.random() * ranFirst.length)];
var ranLast = ["Williams", "Jackson", "Daniels", "Walls", "Moses",
	"Crow"];
var ln = ranLast[Math.floor(Math.random() * ranLast.length)];
var ranStreet = ["105 Main St.", "2 Apple Ln.",
	"5200 SouthSide Rd.", "45 SouthPark Blvd.", "1 Chase Ln.",
	"99 Sands Duvale St."];
var sn = ranStreet[Math.floor(Math.random() * ranStreet.length)];
var ranCity = ["Austin", "Houston", "Dallas", "DeerPark", "Wells",
	"Killeen"];
var cn = ranCity[Math.floor(Math.random() * ranCity.length)];
var ranStat = ["Tx"];
var tn = ranStat[Math.floor(Math.random() * ranStat.length)];
var zn = Math.floor(Math.random() * (99798 - 10002) + 10002) +"";
var pn = Math.floor(Math.random() * (998 - 112) + 112) + ""
	+ Math.floor(Math.random() * (998 - 112) + 112) + ""
	+ Math.floor(Math.random() * (9989 - 1121) + 1121) + "";

var en = fn.toLowerCase() + "." + ln.toLowerCase() + "@"
	+ "hccs.edu"; var txt=fn.toLowerCase()+""+Math.floor(Math.random() * (997 - 155) + 155);
	var pas=ln.toLowerCase()+""+Math.floor(Math.random() * (19971 - 11551) + 11551);

window.onload = function() {
	document.getElementById("id").value = "" + num;
	document.getElementById("fname").value = "" + fn;
	document.getElementById("lname").value = "" + ln;
	document.getElementById("street").value = "" + sn;
	document.getElementById("city").value = "" + cn;
	document.getElementById("state").value = "" + tn;
	document.getElementById("zip").value = "" + zn;
	document.getElementById("phone").value = "" + pn;
	document.getElementById("eid").value = "" + en;
	document.getElementById("pid").value = "" + pas;
}
 