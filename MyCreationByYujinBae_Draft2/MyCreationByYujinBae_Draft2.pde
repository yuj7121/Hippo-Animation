//Name:Yujin Bae
//Date: May 20th, 2020
//Teacher: Ms. Barsaraba
/*Describtion: This is the first draft for the Final Project(ISP). 
 First, the intro with the title will be run for a few moments,
 and then the first scene, where the rabbit and the hippo are playing together. 
 Then the second scene where the fox kidnapps the rabbit will get run, 
 followed by the third scene where the hippo chases the fox with squirrel's help, 
 and then the fourth scene where the hippo recue the rabbit from the fox, 
 and the fifth scene where the rabbit, hippo, and the squirrel is happy again. 
 The animation will end with the ending credit with my name. 
 */

//declaration section
int squirrelX = 150;
int squirrelY = 220;
int hippoX = 300;
int hippoY = 300;
int rabbitX = 400;
int rabbitY = 350;
int foxX = 1000;
int foxY = 330;
int foxLegX;
int foxLegY;
int scene = 0;

//setup
void setup() {
  size(800, 500);
}

//the first background with a tree and grass
void background1() {
  //the sky
  stroke(#89F2FF);
  strokeWeight(1000);
  line(0, 0, 800, 0);
  //the grass
  stroke(#98FF89);
  strokeWeight(200);
  ellipse(400, 500, 1000, 100);
  //the leaves
  strokeWeight(100);
  stroke(#02DB36);
  ellipse(75, 200, 100, 100);
  //the tree trunk
  stroke(#864A00);
  strokeWeight(50);
  rect(75, 250, 1, 120);
  //right branch
  strokeWeight(20);
  for (int x=150; x>75; x-=20) {
    triangle(x, 275-x/5*2, 50, 225, 100, 250);
  }
  //left branch
  for (int x=25; x<=99; x+=20) {
    triangle(x, x+150, 50, 250, 100, 250);
  }
  //middle branch
  for (int x= 167; x<250; x+=20) {
    triangle(75, x, 50, 250, 100, 250);
  }
  //the sun
  stroke(#F6FF00);
  strokeWeight(100);
  ellipse(800, 0, 100, 100);
}

//the second background with the hills and lakes
void background2() {
}

//the third background where the fox lives
void background3() {
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
  ellipse(squirrelX+15, squirrelY-70, 40, 40);//the head
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
  strokeWeight(1);
  //legs
  fill(#742700);
  rect(foxX-80, foxY, 15, 50);  
  rect(foxX+40, foxY, 15, 60);  
  //tail
  fill(#FF5500);
  pushMatrix();
  translate(foxX+80, foxY);
  rotate(radians(20));
  translate(-foxX-80, -foxY);
  ellipse(foxX+80, foxY, 80, 30);
  fill(255);
  arc(foxX+80, foxY, 80, 30, PI+HALF_PI, TWO_PI+HALF_PI);
  popMatrix();
  //body
  fill(#FF5500);
  ellipse(foxX-10, foxY, 140, 70);
  fill(255);
  //neck
  arc(foxX-70, foxY-10, 30, 40, radians(80), radians(300));
  //ears
  fill(#FF5500);
  triangle(foxX-55, foxY-80, foxX-70, foxY-60, foxX-50, foxY-50);
  fill(255);
  triangle(foxX-56, foxY-74, foxX-65, foxY-60, foxX-55, foxY-50);
  //head
  fill(#FF5500);
  ellipse(foxX-70, foxY-40, 50, 50);
  fill(255);
  triangle(foxX-120, foxY-30, foxX-80, foxY-15, foxX-60, foxY-45);
  fill(#FF5500);
  noStroke();
  //the orange stripe
  triangle(foxX-120, foxY-30, foxX-60, foxY-30, foxX-60, foxY-45);
  ellipse(foxX-70, foxY-45, 40, 30);
  //eye
  stroke(0);
  strokeWeight(5);
  point(foxX-80, foxY-47);
}

//the intro
void intro() {
  background(#DDFFB7);
  PFont Berline = loadFont("BerlinSansFBDemi-Bold-48.vlw");
  textFont(Berline);
  textSize(90);
  textAlign(CENTER);
  fill(#7700F0);
  text("The Story of \n tiny Hippo", 400, 200);
  frameRate(0.4);
}

boolean stay = true;
boolean jumpUp;

//the first scene where the hippo and the rabbit plays together
void scene1() {
  background1();
  squirrel();
  hippo();
  rabbit();
  fox();
  if (foxX>=500) {
    foxX-=3;
  } else if (stay == true){
    line(400, 500, 500, 400);
    frameRate(0.4);
    stay=false;
  } else if (rabbitY>=200){
    rabbitX-=6;
    foxX-=6;
    rabbitY-=6;
    foxY-=6;
    jumpUp=false;
  }
}

//the second scene where the rabbit gets kidnapped by the fox
void scene2() {
  ellipse(300, 300, 200, 200);
}

//the third scene where the hippo chases the fox
void scene3() {
}

//the fourth scene where the hippo rescue the rabbit
void scene4() {
}

//the fourth scene where the rabbit and the hippo and the squirrel celebrates their victory
void scene5() {
}

//the ending credits
void end() {
}

int x=40;

//the animation
void draw() {
  if (scene==0) {
    intro();
    scene++;
  } else if (scene==1) {
    println(frameRate);
    frameRate(60);
    scene1();
    //    scene++;
  } else if (scene==2) {
    scene2();
    scene++;
  } else if (scene==3) {
    scene3();
    scene++;
  } else if (scene==4) {
    scene4();
    scene++;
  } else if (scene==5) {
    scene5();
    scene++;
  } else if (scene==6) {
    end();
  }
}
