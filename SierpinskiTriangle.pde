public void setup()
{
	draw();
	size(900,900);
}
public void draw()
{
	sierpinski(0,0, 900);
}
public void mouseDragged()//optional
{

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
 		fill(0,300,0);
 }
 	
}