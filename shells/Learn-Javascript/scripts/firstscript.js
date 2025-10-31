let budHits = 0;
let dabHits = 12;
const totalHits = dabHits + budHits;
const isHigh = totalHits >= 15;

if (isHigh) {
        console.log("Damn, I need to slow down!");
        console.log("I've already taken " + budHits + " hits of bud and " + dabHits + " hits of dabs.");
} else {
        console.log("I definitely could use a few more tokes.");
        console.log("I've only taken " + dabHits + " hits of dabs and " + budHits + " hits of bud.");
}
