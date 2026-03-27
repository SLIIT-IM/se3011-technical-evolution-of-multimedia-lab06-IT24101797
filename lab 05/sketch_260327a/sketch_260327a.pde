float x= 200;
float y= 200;
float vx= 8;
float vy= 8;
float r= 20;

void setup(){
size(700,350);
frameRate(60);}

void draw(){
background(225);
x= x+vx;
y= y+vy;

if(x% 150==0){
  if(vx<10)vx=vx+2;
  if(r<50)r=r+5;}
  
if(x>width- r ||x<r){
vx = vx* -1;}

if(y>height- r|| y <r){
vy = vy* -1;}

noStroke();
fill(60,120,225);
ellipse(x, height/2,r*2,r*2);

fill(0);
textSize(16);
text("x= " +nf(x,1,1)+" vx="+nf (vx,1,1),20,25);
}
