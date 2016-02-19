int j = 420;
public void setup()
{
	size(600,600);
	background(255);
	myFractal(300, 300, j);
	
}
public void draw()
{
	
	noFill();
	strokeWeight(1);
}
public void mouseClicked()
{
	stroke((int)(Math.random()*254)+1, (int)(Math.random()*254)+1, (int)(Math.random()*254)+1);
	j += 3;
	myFractal(300 ,300 , j + 2);

}

public void myFractal(int x, int y, int siz)
{
	if(siz < 20)
	{
		
		ellipse(x,y, siz, siz);
	}
	else
	{
		ellipse(x, y, siz, siz);
		myFractal(x, y, siz/3);
		myFractal(x + siz/2, y, siz/3);
		myFractal(x, y + siz/2, siz/4);
		myFractal(x - siz/2, y, siz/3);
		myFractal(x, y - siz/2, siz/4);
		myFractal(x , y - siz/5, siz/6);
		myFractal(x , y + siz/5, siz/6);


	}		
	

}
 