//Name:Yujin Bae
//Date: May 20th, 2020
//Teacher: Ms. Barsaraba
/*Describtion: This is the first draft for the Final Project(ISP)*/

//declaration section
int squirrelX = 150;
int squirrelY = 220;
int hippoX = 300;
int hippoY = 300;
int rabbitX = 400;
int rabbitY = 330;
int foxBodyX;
int foxBodyY;
int foxLegX;
int foxLegY;
int scene=0;

//setup
void setup() {
  size(800, 500);
}

//the first background with a tree and grass
void background1() {
  //the sky
  for (int x=0; x<=500; x++) {
    stroke(#89F2FF);
    line(0, x, 800, x);
  }
  //the grass
  for (int x=300; x>=0; x--) {
    stroke(#98FF89);
    strokeWeight(2);
    ellipse(400, 500, x*4, x);
  }
  //the leaves
  for (int x= 150; x >=0; x--) {
    stroke(#02DB36);
    circle(75, 200, x);
  }
  //the tree trunk
  for (int x= 50; x>0; x--) {
    stroke(#864A00);
    rect(50, 250, x, x+100);
  }
  //right branch
  for (int x=150; x>75; x--) {
    triangle(x, 275-x/5*2, 50, 225, 100, 250);
  }
  //left branch
  for (int x=25; x<=99; x++) {
    triangle(x, x+150, 50, 250, 100, 250);
  }
  //middle branch
  for (int x= 167; x<250; x++) {
    triangle(75, x, 50, 250, 100, 250);
  }
  //the sun
  for (int x=150; x>=0; x--) {
    stroke(#F6FF00);
    circle(775, 25, x);
  }
}

//the squirrel
void squirrel() {
  stroke(0);
  strokeWeight(1);
  fill(#D87000);
  ellipse(squirrelX, squirrelY-35, 50, 70 ); //the body
  triangle(squirrelX+28, squirrelY-20, squirrelX+19, squirrelY-42, squirrelX+29, squirrelY-40);
  pushMatrix();
  fill(#ED8700);
  translate(squirrelX-20, squirrelY-50);
  rotate(radians(-45));//rotates the tail
  translate(-squirrelX+20, -squirrelY+50);
  arc(squirrelX-40, squirrelY-70, 60, 70, PI+HALF_PI, TWO_PI+HALF_PI); //upper tail
  arc(squirrelX-40, squirrelY-40, 50, 60, HALF_PI, PI+HALF_PI); //lower tail
  fill(255);
  noStroke();
  arc(squirrelX-40, squirrelY-40, 30, 40, HALF_PI, PI+HALF_PI); //lower tail
  arc(squirrelX-40, squirrelY-70, 30, 50, PI+HALF_PI, TWO_PI+HALF_PI); //upper tail
  stroke(0);
  strokeWeight(1);
  line(squirrelX-40, squirrelY-70, squirrelX-40, squirrelY-105); //upper outline
  popMatrix();
  fill(#FFA340);
  triangle(squirrelX-5, squirrelY-95, squirrelX+15, squirrelY-90, squirrelX, squirrelY-70); //ear
  circle(squirrelX+15, squirrelY-70, 40);//the head
  fill(255);
  rect(squirrelX+31, squirrelY-67, 5, 13); //tooth
  strokeWeight(5);
  point(squirrelX+23, squirrelY-72);//eye
}

//the hippo
void hippo() {
  strokeWeight(1);
  fill(#A293A7);
  //tail
  triangle(hippoX-100, hippoY-13, hippoX-110, hippoY+20, hippoX-100, hippoY+10);
  //body
  rect(hippoX-100, hippoY-15, 120, 60);
  //legs
  arc(hippoX-90, hippoY+44, 20, 30, 0, PI);//the far left
  arc(hippoX-60, hippoY+44, 20, 30, 0, PI);//the middle left
  arc(hippoX-20, hippoY+44, 20, 30, 0, PI);//the middle right
  arc(hippoX+10, hippoY+44, 20, 30, 0, PI);//the far right
  fill(#BEA8C6);
  //head
  ellipse(hippoX, hippoY, 80, 80);
  //ears
  arc(hippoX-26, hippoY-28, 20, 20, radians(126), radians(330));//left ear
  arc(hippoX+27, hippoY-28, 20, 20, radians(220), radians(420));//right ear
  //nose
  noFill();
  arc(hippoX-7, hippoY+9, 5, 7, PI, TWO_PI);
  arc(hippoX+7, hippoY+9, 5, 7, PI, TWO_PI);
  //eyes
  strokeWeight(5);
  point(hippoX-20, hippoY-10);
  point(hippoX+20, hippoY-10);
}

//the rabbit
void rabbit() {
  strokeWeight(1);
  //body
  fill(#F0DAE4);
  arc(rabbitX, rabbitY, 40, 50, radians(-90), radians(170));
  //arm
  triangle(rabbitX, rabbitY, rabbitX-2, rabbitY-20, rabbitX-25, rabbitY+7);
  //head
  fill(#FFE8F3);
  ellipse(rabbitX-5, rabbitY-35, 30, 30);
  //ears
  ellipse(rabbitX+3, rabbitY-60, 10, 30);
  fill(#FFB7DA);
  noStroke();
  ellipse(rabbitX+3, rabbitY-60, 5, 20);
  pushMatrix();
  translate(rabbitX+3, rabbitY-45);
  rotate(radians(40));
  translate(-rabbitX-3, -rabbitY+45);
  fill(#FFE8F3);
  stroke(0);
  ellipse(rabbitX+3, rabbitY-60, 10, 30);
  fill(#FFB7DA);
  noStroke();
  ellipse(rabbitX+3, rabbitY-60, 5, 20);
  popMatrix();
  //tooth
  stroke(0);
  fill(255);
  rect(rabbitX-22, rabbitY-35, 4, 15);
  //eye
  strokeWeight(5);
  point(rabbitX-13, rabbitY-37);
}

//the fox
void fox() {
}

//the second background with the hills and lakes
void background2() {
}

//the third background where the fox lives
void background3() {
}

//the first scene where the hippo and the rabbit plays together
void scene1() {
  background1();
  squirrel();
  hippo();
  rabbit();
  fox();
}

//the intro
void intro(){
  background(#DDFFB7);
  PFont Berline = loadFont("BerlinSansFBDemi-Bold-48.vlw");
  textFont(Berline);
  textSize(90);
  textAlign(CENTER);
  fill(#7700F0);
  text("The Story of \n tiny Hippo!", 400, 200);
  frameRate(0.4);
}

//the second scene where the rabbit gets kidnapped by the fox
void scene2() {
}

//the third scene where the rabbit is rescued
void scene3() {
}

//the fourth scene where the rabbit and the hippo and the squirrel celebrates their victory
void scene4() {
}

//the ending credits
void end(){
  
}

//the animation
void draw() {
  if (scene==0){
    intro();
    scene++;
  } else if (scene==1) {
    scene1();
    scene++;
  } else if (scene==1) {
    scene2();
    scene++;
  } else if (scene==3) {
    scene3();
    scene++;
  } else if (scene==4) {
    scene4();
    scene++;
  }
  else if (scene==5) {
    end();
  }
}
