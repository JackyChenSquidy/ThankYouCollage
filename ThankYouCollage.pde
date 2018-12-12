//add thank you code here
float chopstick1;
float chopstick2;
float rice;

float steam;
float ricesize;
PImage chinese; 
PImage bowl;
float hai;

void setup() {
  size(800, 800);
  chinese=loadImage("Capture.PNG");

  bowl=loadImage("Bowl.jpg");
}

void draw() {
background(255);
//background

  strokeWeight(20);
  
  //rice
  stroke(50);
  fill(255);
strokeWeight(3);
arc(600,430,ricesize,ricesize,radians(180),radians(360));

//Big Bowl
  stroke(86, 37, 0);
strokeWeight(22);
fill(245,245,220);
rect(400,400,400,60);

arc(600,440,401,401,radians(0),radians(180));
strokeWeight(20);

rect(550,635,100,60);

//steam
fill(100,100,100,random(0,30));
textSize(200);
text("S",650,260);
text("S",630,210);
text("S",500,230);
textSize(50);
fill(0,0,0,hai);
text("You ate all the rice, congrats",10,230);

ricesize=400-rice;

hai=0;


if (mousePressed==true) {
  rice=rice+3;
}

if (ricesize<20) {
hai=1000;  

}

if (ricesize<5) {
  rice=0;
  
}
  


 





//chopstick  
line(chopstick1, chopstick2, mouseX+140, mouseY-160);
line(chopstick1-40,chopstick2+30,mouseX+190,mouseY-170); 
  
  chopstick1=mouseX;
  chopstick2=mouseY;


 
}
