/* Amulya Mulakala
  February 3, 2025
  Learning Goal: Students will demonstrate their understanding of Object-Oriented Programming and arrays by designing a Die class, creating an array of Die objects to form a dynamic grid, calculating and displaying the total value of the dice, and customizing the presentation of their program through HTML elements.
*/

PImage[] images = new PImage[6]; //array of six default (null) images

int value;
int imageSize = 50; //variable to impact image size in show section

void setup()
  {
    size(700,500); //canvas setup
      noLoop();
      
  images[0] = loadImage("1.png"); //load each png into corresponding array element
  images[1] = loadImage("2.png");
  images[2] = loadImage("3.png");
  images[3] = loadImage("4.png");
  images[4] = loadImage("5.png");
  images[5] = loadImage("6.png");
 
  
      
  }
  void draw()
  {
      background(0); //black background
      
     
      int onePet = 0;  // all variables to count how many of each type of animal show up  
      int twoPet = 0;
      int threePet = 0;
      int fourPet = 0;
      int fivePet = 0;
    int sixPet = 0;
      
      for(int x = 25; x < 500; x+=100) //loop controlling columns
      {
        for(int y = 25; y < 500; y+=100) //loop controlling rows
        { 
       DiePet dice = new DiePet(x,y); //one instance of class
      dice.show(); //calls upon the show function that holds all the die shape and images
      dice.roll(); //calls upon a new "roll" of the roll variable to generate a new corresponding pet image
      
     if(value == 1) //if roll is equal to 1 then onePet is increased by one, this counts how many of that type of pet shows up on the canvas, and the else if statements counts the other corresponding pets. 
     {
       onePet ++;
     }
     else if(value == 2)
     {
       twoPet ++;
     }
     else if(value == 3)
     {
       threePet ++;
     }
     else if(value == 4)
     {
       fourPet ++;
     }
     else if(value == 5)
     {
       fivePet ++;
     }
     else if(value == 6)
     {
       sixPet ++;
     }
     
      
        }

      }
      fill(255);
  textSize(32);
  text("Random Pets", 490, 50);
   
    textSize(20);
    text("Number of Hamsters: " + onePet, 495, 100); // Display amount of Hamsters
    text("Number of Kittys: " + twoPet, 495, 150); // Display amount of Kittys
    text("Number of Pandas: " + threePet, 495, 200); // Display amount of Pandas
    text("Number of Doggies: " + fourPet, 495, 250); // Display amount of Dogs
    text("Number of Koalas: " + fivePet, 495, 300); // Display amount of Koalas
    text("Number of Otters: " + sixPet, 495, 350); // Display amount of Otters
    
    text("Click Here ", 500, 450); //Prompt the user
    
    
                                
     
      
  }
  void mousePressed()
  {
      redraw(); //When the mouse is clicked everything is redrawn and changes
  }
  class DiePet //models one single dice cube
  {
      int xVal;
      int yVal;
   

      
      DiePet(int x, int y) //constructor
      {
         xVal = x;
         yVal = y;
        

       
      }
      void roll()
      {
       value = (int)((Math.random()*6)+1); //generates a random value from 1 - 6, like a die roll
        //System.out.println(roll);
        
         
      }
      
      void show() //method 
      {
        
          int redColor = (int) (Math.random()*255); // varible for random red value in fill statement
          fill(redColor, 104, 227);
          rect(xVal,yVal,50,50,5); //die rectangle
          fill(255);
          
          if(value==1) //if roll equals 1 then draw corresponding image at index 0, if roll equals 2 then draw next corresponding image, etc. 
          {
            image(images[0],xVal+15,yVal+15,imageSize,imageSize);
          }
          else if(value ==2)
          {
         image(images[1],xVal+15,yVal+15,imageSize,imageSize);
          }
          else if(value ==3)
          {
           image(images[2],xVal+15,yVal+15,imageSize,imageSize);
          }
          else if(value ==4)
          {
            image(images[3],xVal+15,yVal+15,imageSize,imageSize);
          }
          else if(value ==5)
          {
            image(images[4],xVal+15,yVal+15,imageSize,imageSize);
          }
          else if(value ==6)
          {
            image(images[5],xVal+10,yVal+10,imageSize,imageSize);
          }
          
          
            
       
          
       
          
      
}

 
              
 
      }
