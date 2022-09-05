function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0x03, 0xFF, 0xE8));
    fill(color(0xFF, 0xFF, 0xFF));
    rect(100, 100, 100, 150);
    fill(color(0x03, 0xFF, 0x22));
    ellipse(mouseX, mouseY, 10, 10);
    line(150, 150, 60, 60);
}

function initializeFields() {
}
