let budHits = 0;
let dabHits = 21;
const totalHits = dabHits + budHits;
let isHigh = totalHits >= 15;
const perfectLevel = totalHits === 20;
let tooHigh = totalHits > 20;
let sober = totalHits === 0;

if (tooHigh) {
        console.log("Damn, I need to slow down!");
        console.log("I've already taken " + budHits + " hits of bud and " + dabHits + " hits of dabs.");
} else if (sober) {
        console.log("I haven't even taken a hit!");
} else if (perfectLevel) {
        console.log("I am on my level!");
} else {
        console.log("I definitely could use a few more tokes.");
        console.log("I've only taken " + dabHits + " hits of dabs and " + budHits + " hits of bud.");
  }

if (isHigh && !perfectLevel) {
        console.log("Definitely high though");
}
