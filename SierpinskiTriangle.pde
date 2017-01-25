int len=500;
int opacity=60;
color epilepsy;
public void setup()
{
	size(600,600);
}
public void draw()
{
	background(255,255,255);
	//sierpinski(10,790,len);
	sierCarpet(50,height-50,len);
	if(len>1000)
	{
		len=len/3;
		opacity=60;
	}
	if(len<250)
	{
		len=len*3;
		opacity=60;
	}
}
public void mouseDragged()//optional
{

}
public void mouseWheel(MouseEvent event) {
  len+=(10*event.getCount());
  opacity+=3;
}

public void keyPressed()
{
	if(key == 's')
	{
		len=500;
	}
	if(key == 'a')
	{
		len-=3;
		opacity-=3;
	}
	if(key == 'd')
	{
		len+=3;
		opacity+=3;
	}
}


public void sierpinski(int x, int y, int len) 
{
 if(len<=10)
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
 if(len<=15)
	{
		epilepsy = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),opacity);
		fill(epilepsy);
		noStroke();
		//fill(255,255,255);
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