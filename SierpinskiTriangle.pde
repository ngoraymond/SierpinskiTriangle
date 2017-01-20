int len=700;
int opacity=60;
color epilepsy;
public void setup()
{
	size(800,800);
}
public void draw()
{
	background(0,0,0);
	//sierpinski(10,790,len);
	sierCarpet(50,height-50,len);
	if(len>1100)
	{
		len=len/3;
		opacity=60;
	}
}
public void mouseDragged()//optional
{

}
public void keyPressed()
{
	if(key == 's')
	{
		len+=10;
		opacity+=3;
	}
}

public void sierpinski(int x, int y, int len) 
{
 if(len<=20)
	{
		triangle(x,y,x+len/2,y-len,x+len,y);
	}
	else 
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}

public void sierCarpet(int x, int y, int len) 
{
 if(len<=21)
	{
		epilepsy = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),opacity);
		//fill(epilepsy);
		fill(255,255,255);
		rect(x,y,len,len);
	}
	else 
	{
		sierCarpet(x,y-2*len/3,len/3);
		sierCarpet(x,y-len/3,len/3);
		sierCarpet(x,y,len/3);
		sierCarpet(x+len/3,y-2*len/3,len/3);
		sierCarpet(x+len/3,y,len/3);
		sierCarpet(x+2*len/3,y-2*len/3,len/3);
		sierCarpet(x+2*len/3,y-len/3,len/3);
		sierCarpet(x+2*len/3,y,len/3);
	}
}