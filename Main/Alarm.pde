class Alarm {
/*  
  void botton() 
    {  
        stroke(0);
        fill(255, 0, 0);
        ellipse(650, 510, 55, 55);
        stroke(255, 255, 51);
        line(650, 510, 20, 20);
      }
    }    
   */       
  float position_x;
  float position_y;
  float radius;
  float angle;
  float speeding;
  float frequency;
  float Color;
  
  Alarm(float position_x, float position_y, float radius, float frequency,float Color)
  {
    this.position_x = position_x;
    this.position_y = position_y;
    this.radius = radius;
    this.angle = 0;
    this.frequency = frequency;
    this.speeding = (TWO_PI/25.0) * frequency;
    this.Color = Color;
  }

  void movement1()
  {
    angle = angle + speeding;
  }
  
  void display_Alarm()
  {
    strokeWeight(1.5);
    stroke(0);
    fill(255,0,0);
    ellipse(position_x, position_y, radius*0.8, radius*0.8);
    /*
    // Click within the image to change 
// the value of the rectangle
void draw() {
  if (mousePressed == true) {
    fill(0);
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
}
*/
if (mousePressed == true) {
    float radar_rotation = 40;
    float line_brightness = 500;
    strokeWeight(2);
    
    for(int i = 0; i < radar_rotation; i++)
    {
      stroke(255, 255, 0, line_brightness-(i*( line_brightness/radar_rotation)));
      float x = position_x + sin(angle - i * speeding) * radius/2.7;
      float y = position_y - cos(angle - i * speeding) * radius/2.7;
      line(position_x, position_y, x, y);
    }
} 
else {
    fill(255,0,0);
  }



  }
} 