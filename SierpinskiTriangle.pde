int guy;
public void setup()
{
	draw();
	size(900,900);
}
public void draw()
{
  background (0);  
	sierpinski(0,0, guy);
sierpinski2(0,900, guy);

}
public void mouseDragged()//optional
{
  if (mouseX >450){
    guy += 30;
  }
    if (mouseX <450){
    guy -= 30;
  }
}
public void sierpinski(int x, int y, int len) 
{
 if (len<=20)
 	triangle(x, y, x+len/2, y+len, x+len, y);

 else{
 
 	sierpinski(x,y, len/2);
 	fill(0,0,300);
 	sierpinski(x +len/2,y, len/2);
 		fill(300,0,0);
 	sierpinski(x+len/4,y+len/2, len/2);
 }
 	
 
}
public void sierpinski2(int x, int y, int len) 
{
 if (len<=20)
   triangle(x, y, x+len/2, y-len, x+len, y);

 else{
 
   sierpinski2(x,y, len/2);
   fill(0,0,300);
   sierpinski2(x +len/2,y, len/2);
     fill(300,0,0);
   sierpinski2(x+len/4,y-len/2, len/2);
 }
   
}
