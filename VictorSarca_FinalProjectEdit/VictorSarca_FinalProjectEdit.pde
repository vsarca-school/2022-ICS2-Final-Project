// Name: Victor Sarca
// Date: 2022.01.10
// Teacher: Ms. Basaraba
// Description: Final Project, an informative slideshow meant to teach children in the future about electricity, made using all draw commands and all programming structures learned this year.


// Global Variables //
int global_timer; // This is the timer for animations, reset when the slide changes
    // The values stored is the number of frame since the last slide change
String current_slide; // Stores the name of the current slide, which lets draw() know which which function to call
    // Possible values are:
    // splash_screen, main_menu
    // slide_selection, what_is_electricity
    // how_is_electricity_made, renewable_power
    // non_renewable_power, nuclear_power
    // how_do_you_transport_electricity, what_is_electricity_used_for
    // electric_appliances, electric_devices
    // electricity_outdoors, summary, credits_and_goodbye
boolean click = false; // Stores whether the mouse has been clicked
PFont lucida, copperplate;

void mousePressed() // Called when mouse is clicked
{
  if (mouseButton==LEFT)
  {
    click = true; // Set our variable so the program knows the mouse is clicked
  }
}

void mouseReleased() // Called when mouse is released
{
  if (mouseButton==LEFT)
  {
    click = false; // Set our variable so the program knows the mouse is released
  }
}

void setup() // Called once at the start of the program, sets up everything
{
  size(800,500); // Screen size
  
  global_timer = 0; // Reset timer
  current_slide = "splash_screen"; // The slide we are on is the splash screen
  
  lucida = loadFont("LucidaSans-100.vlw"); // Initialize fonts used in the program
  copperplate = loadFont("CopperplateGothic-Bold-60.vlw");
  textFont(lucida);
  
  frameRate(30); // Set the frame rate
  
  strokeJoin(ROUND); // Set teh stroke to join more nice and to not be pointy
}

void draw() // Draw function, called every frame
{
  global_timer+=2; // Increase the timer, used to be 60 fps so we now add 2 to pretend that we are running at 60 fps
  // Large if block to call the function of the current slide
  if (current_slide == "splash_screen")
  {
    splash_screen(global_timer);
  }
  else if (current_slide == "main_menu")
  {
    main_menu(global_timer);
  }
  else if (current_slide == "slide_selection")
  {
    slide_selection(global_timer);
  }
  else if (current_slide == "what_is_electricity")
  {
    what_is_electricity(global_timer);
  }
  else if (current_slide == "how_is_electricity_made")
  {
    how_is_electricity_made(global_timer);
  }
  else if (current_slide == "renewable_power")
  {
    renewable_power(global_timer);
  }
  else if (current_slide == "non_renewable_power")
  {
    non_renewable_power(global_timer);
  }
  else if (current_slide == "nuclear_power")
  {
    nuclear_power(global_timer);
  }
  else if (current_slide == "how_do_you_transport_electricity")
  {
    how_do_you_transport_electricity(global_timer);
  }
  else if (current_slide == "what_is_electricity_used_for")
  {
    what_is_electricity_used_for(global_timer);
  }
  else if (current_slide == "electric_appliances")
  {
    electric_appliances(global_timer);
  }
  else if (current_slide == "electric_devices")
  {
    electric_devices(global_timer);
  }
  else if (current_slide == "electricity_outdoors")
  {
    electricity_outdoors(global_timer);
  }
  else if (current_slide == "summary")
  {
    summary(global_timer);
  }
  else if (current_slide == "credits_and_goodbye")
  {
    credits_and_goodbye(global_timer);
  }
}

void splash_screen(int timer) // Splash screen, only used once at the beginning of the program
{
  // Logic
  if (timer >= 300) { global_timer = 0; current_slide = "main_menu"; } // Go to main menu after 5 seconds
  
  // Background
  background(0);
  if (timer > 80 && timer < 175)
  {
    fill(255,50);
    noStroke();
    quad(120,0,180,0,350,500,150,500);
    quad(370,0,430,0,500,500,300,500);
    quad(620,0,680,0,650,500,450,500);
  }
  
  // Animations
  
  // My name
  if (timer < 10)
  {
    fill(0); // Not there
  }
  else if (timer < 36)
  {
    fill((timer-10)*10); // Fading in
  }
  else if (timer < 250)
  {
    fill(255); // White
  }
  else if (timer < 276)
  {
    fill(255-(timer-250)*10); // Fading out
  }
  else
  {
    fill(0); // Not there
  }
  textSize(40);
  textAlign(LEFT);
  text("Victor Sarca",30,80);
  
  // Light poles
  if (timer < 10) // Not visible
  {
  }
  if (timer < 71) // Coming up
  {
    stroke(150,80,20);
    strokeWeight(15);
    line(250, 550, 100-(timer-70)*5, 250-(timer-70)*10);
    line(550, 550, 700+(timer-70)*5, 250-(timer-70)*10);
    
    stroke(100);
    line(100-(timer-70)*5,250-(timer-70)*10,95-(timer-70)*5,240-(timer-70)*10);
    line(700+(timer-70)*5,250-(timer-70)*10,705+(timer-70)*5,240-(timer-70)*10);
    
    stroke(20);
    strokeWeight(10);
    line(-200,450-(timer-70)*10,95-(timer-70)*5,240-(timer-70)*10);
    line(1000,450-(timer-70)*10,705+(timer-70)*5,240-(timer-70)*10);
    
    stroke(100);
    strokeWeight(15);
    line(70-(timer-70)*5,265-(timer-70)*10,130-(timer-70)*5,235-(timer-70)*10);
    line(70-(timer-70)*5,265-(timer-70)*10,65-(timer-70)*5,255-(timer-70)*10);
    line(130-(timer-70)*5,235-(timer-70)*10,125-(timer-70)*5,225-(timer-70)*10);
    
    line(670+(timer-70)*5,235-(timer-70)*10,675+(timer-70)*5,225-(timer-70)*10);
    line(730+(timer-70)*5,265-(timer-70)*10,670+(timer-70)*5,235-(timer-70)*10);
    line(730+(timer-70)*5,265-(timer-70)*10,735+(timer-70)*5,255-(timer-70)*10);
    
    noFill();
    stroke(20);
    strokeWeight(10);
    curve(0,-100,95-(timer-70)*5,240-(timer-70)*10,705+(timer-70)*5,240-(timer-70)*10,800,-100);
  }
  else if (timer<200) // Staying put
  { 
    stroke(150,80,20);
    strokeWeight(15);
    line(250, 550, 100, 250);
    line(550, 550, 700, 250);
    
    stroke(100);
    line(100,250,95,240);
    line(700,250,705,240);
    
    stroke(20);
    strokeWeight(10);
    line(-200,450,95,240);
    line(1000,450,705,240);
    
    stroke(100);
    strokeWeight(15);
    line(70,265,130,235);
    line(70,265,65,255);
    line(670,235,675,225);
    
    line(130,235,125,225);
    line(730,265,670,235);
    line(730,265,735,255);
    
    noFill();
    stroke(20);
    strokeWeight(10);
    curve(0,-100,95,240,705,240,800,-100);
  }
  else // Falling over
  {
    float angle = PI*63.6/180.0 - (timer-200)/50.0;
    
    stroke(150,80,20);
    strokeWeight(15);
    line(250,550,250-cos(angle)*335,550-sin(angle)*335);
    line(550,550,550+cos(angle)*335,550-sin(angle)*335);
    
    stroke(100);
    line(250-cos(angle)*335,550-sin(angle)*335,250-cos(angle)*347,550-sin(angle)*347);
    line(550+cos(angle)*335,550-sin(angle)*335,550+cos(angle)*347,550-sin(angle)*347);
    
    stroke(20);
    strokeWeight(10);
    line(-200,450,250-cos(angle)*347,550-sin(angle)*347);
    line(1000,450,550+cos(angle)*347,550-sin(angle)*347);
    
    stroke(100);
    strokeWeight(15);
    line(250-cos(angle)*335-sin(angle)*34,550-sin(angle)*335+cos(angle)*34,250-cos(angle)*335+sin(angle)*34,550-sin(angle)*335-cos(angle)*34);
    line(250-cos(angle)*335-sin(angle)*34,550-sin(angle)*335+cos(angle)*34,250-cos(angle)*347-sin(angle)*34,550-sin(angle)*347+cos(angle)*34);
    line(250-cos(angle)*335+sin(angle)*34,550-sin(angle)*335-cos(angle)*34,250-cos(angle)*347+sin(angle)*34,550-sin(angle)*347-cos(angle)*34);
    
    line(550+cos(angle)*335+sin(angle)*34,550-sin(angle)*335+cos(angle)*34,550+cos(angle)*335-sin(angle)*34,550-sin(angle)*335-cos(angle)*34);
    line(550+cos(angle)*335+sin(angle)*34,550-sin(angle)*335+cos(angle)*34,550+cos(angle)*347+sin(angle)*34,550-sin(angle)*347+cos(angle)*34);
    line(550+cos(angle)*335-sin(angle)*34,550-sin(angle)*335-cos(angle)*34,550+cos(angle)*347-sin(angle)*34,550-sin(angle)*347-cos(angle)*34);
    
    noFill();
    stroke(20);
    strokeWeight(10);
  }
  
  // Title
  textAlign(CENTER);
  textFont(copperplate);
  if (timer<100) {} // Not there
  else if (timer<200) // Fading in
  {
    textSize(timer/5.0);
    fill(255,255,0,(timer-100)*2.55);
    text("Electricity",400,600-timer*1.65);
  }
  else // Moving up
  {
    fill(255,255,0);
    textSize(timer/5.0);
    text("Electricity",400,600-timer*1.65);
  }
  textFont(lucida);
}

void main_menu(int timer) // Main menu, used for playing the storybook
{
  // Logic, find out what was clicked and react accordingly
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Quit button clicked
      exit();
    }
    else if (mouseX>250 && mouseX<550)
    {
      if (mouseY>255 && mouseY<315)
      {
        // Play button clicked
        global_timer = 0;
        current_slide = "what_is_electricity";
      }
      else if (mouseY>355 && mouseY<415)
      {
        // Slide Selection button clicked
        global_timer = 0;
        current_slide = "slide_selection";
      }
    }
  }
  
  // Background, which has a gradient effect
  background(0);
  float radius = 500;
  float shade = 40000;
  noStroke();
  while (shade > 0)
  {
    fill(sqrt(shade));
    circle(400,250,radius*2);
    radius *= 0.995;
    shade *= 0.95;
    shade --;
  }
  
  // Title
  fill(255,255,0);
  noStroke();
  textAlign(CENTER);
  textFont(copperplate);
  textSize(60);
  text("Electricity",400,100);
  fill(255);
  textSize(30);
  text("An Educational Storybook",400,150);
  textFont(lucida);
  
  // Play, Slide Selection, and Quit buttons
  fill(255,255,0);
  textSize(30);
  text("QUIT",95,70);
  
  text("PLAY",400,295);
  text("SLIDE SELECTION",400,395);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  
  strokeWeight(5);
  rect(400,285,300,60);
  rect(400,385,300,60);
  
  // Animations played on both sides of the menu
  int animation = (timer/400)%3;
  if (animation == 0)
  {
    electrons(-timer);
  }
  else if (animation == 1)
  {
    wind_turbines(-timer);
  }
  else if (animation == 2)
  {
    conductors_example(-timer);
  }
}

void slide_selection(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<365)
    {
      if (mouseY>125 && mouseY<175)
      {
        // What is Electricity button clicked
        global_timer = 0;
        current_slide = "what_is_electricity";
      }
      else if (mouseY>200 && mouseY<250)
      {
        // How is it Made button clicked
        global_timer = 0;
        current_slide = "how_is_electricity_made";
      }
      else if (mouseY>275 && mouseY<325)
      {
        // How Do You Move It button clicked
        global_timer = 0;
        current_slide = "how_do_you_transport_electricity";
      }
      else if (mouseY>350 && mouseY<400)
      {
        // What is it Used For button clicked
        global_timer = 0;
        current_slide = "what_is_electricity_used_for";
      }
      else if (mouseY>425 && mouseY<475)
      {
        // Summary button clicked
        global_timer = 0;
        current_slide = "summary";
      }
    }
  }
  
  // Background, gradient effect
  background(0);
  float radius = 500;
  float shade = 40000;
  noStroke();
  while (shade > 0)
  {
    fill(sqrt(shade));
    circle(400,250,radius*2);
    radius *= 0.995;
    shade *= 0.95;
    shade --;
  }
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("Slide Selection",400,100);
  
  // Buttons
  textSize(30);
  text("MENU",95,70);
  
  text("What Is Electricity?",205,160);
  text("How Is It Made?",205,235);
  text("How Do You Move It?",205,310);
  text("What Is It Used For?",205,385);
  text("Summary",205,460);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  
  rect(205,150,320,50);
  rect(205,225,320,50);
  rect(205,300,320,50);
  rect(205,375,320,50);
  rect(205,450,320,50);
  
  // Animations played when hovering over a button
  if (mouseX>45 && mouseX<365)
  {
    if (mouseY>125 && mouseY<175)
    {
      // Hovering over "What is Electricity?"
      circuit(-timer);
    }
    else if (mouseY>200 && mouseY<250)
    {
      // Hovering over "How Is It Made?"
      coal_plant(timer);
    }
    else if (mouseY>275 && mouseY<325)
    {
      // Hovering over "How Do You Move It?"
      electric_poles(-timer);
    }
    else if (mouseY>350 && mouseY<400)
    {
      // Hovering over "What Is It Used For?"
      clock(-timer);
    }
    else if (mouseY>425 && mouseY<475)
    {
      // Hovering over "Summary"
      street_lights(-timer);
    }
  }
}

void what_is_electricity(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 1025) { global_timer = 0; current_slide = "how_is_electricity_made"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>655 && mouseX<755 && mouseY>417 && mouseY<463)
    {
      // Next button clicked
      global_timer = 0;
      current_slide = "how_is_electricity_made";
    }
  }
  
  // Background, electrons and protons in a pattern
  background(0);
  strokeWeight(5);
  int x, y;
  // Protons
  for (int i=-3; i<11; i++)
  {
    x = -37+134*i+(int)(50*sin(i));
    y = -89+(int)(50*sin(i));
    
    // Protons
    while (x<820 && y<520)
    {
      x += 57;
      y += 64;
      
      fill(15);
      noStroke();
      circle(x,y,40);
      stroke(0);
      noFill();
      line(x-10,y,x+10,y);
      line(x,y-10,x,y+10);
    }
    
    // Electrons
    x = -167+100*i;
    y = -72;
    while(x<820 && y<520)
    {
      x += 91+(int)(5*sin(i));
      y += 102+(int)(5*sin(i));
      fill(15);
      noStroke();
      circle(x,y,20);
      stroke(0);
      noFill();
      line(x-5,y,x+5,y);
    }
  }
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("What Is Electricity?",400,100);
  
  // Buttons
  textSize(30);
  text("MENU",95,70);
  text("NEXT",705,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(705,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25)
  {
    textAlign(LEFT);
    text("Electricity is a form of energy that\ncomes from the existence of charged\nparticles, called electrons and protons",50,150);
  }
  if (timer > 225)
  {
    textAlign(RIGHT);
    text("It is used to do work, and it is the\nenergy that makes most\ntechnology function",750,275);
  }
  if (timer > 425)
  {
    textAlign(LEFT);
    text("A complete electrical circuit contains\nat least one power source\nand one load (power consumer)",50,400);
  }
  
  // Animations
  if (timer < 25) {}
  else if (timer < 225)
  {
    electrons(timer);
  }
  else if (timer < 425)
  {
    electrons(0);
    circuit(timer);
  }
  else if (timer < 625)
  {
    electrons(0);
    circuit_diagram(timer);
  }
  else
  {
    electrons(0);
    circuit_diagram(0);
  }
}

void electrons(int timer)
{
  if (timer < 0) // For Main Menu, go to a different place
  {
    pushMatrix();
    translate(50,100);
    
    noStroke();
    float angle = radians(timer);
  
    // Center
    fill(0,0,255);
    circle(635,178+random(4),10);
    circle(643+random(4),175,10);
    fill(255,0,0);
    circle(640,174+random(4),10);
    circle(640+random(4),168,10);
    circle(630,173+random(4),10);
    fill(0,0,255);
    circle(631+random(4),170,10);
    
    // Electrons
    fill(255,255,0);
    circle(638+25*cos(2*angle),174+25*sin(-2*angle),10);
    circle(638+25*cos(2*angle+PI),174+25*sin(-2*angle+PI),10);
    for (int i=0; i<5; i++)
    {
      circle(638+50*cos(angle+2*i*PI/5),174+50*sin(angle+2*i*PI/5),10);
    }
    
    popMatrix();
    pushMatrix();
    translate(-550,100);
  }
  
  noStroke();
  if (timer==0) // So that it doesn't not move when paused
  {
    float angle = radians(225);
    
    // Center
    fill(0,0,255);
    circle(635,180,10);
    circle(645,175,10);
    fill(255,0,0);
    circle(640,176,10);
    circle(642,168,10);
    circle(630,175,10);
    fill(0,0,255);
    circle(633,170,10);
    
    // Electrons
    fill(255,255,0);
    circle(638+25*cos(2*angle),174+25*sin(-2*angle),10);
    circle(638+25*cos(2*angle+PI),174+25*sin(-2*angle+PI),10);
    for (int i=0; i<5; i++)
    {
      circle(638+50*cos(angle+2*i*PI/5),174+50*sin(angle+2*i*PI/5),10);
    }
  }
  else // Not paused, work as normal
  {
    float angle = radians(timer);
  
    // Center
    fill(0,0,255);
    circle(635,178+random(4),10);
    circle(643+random(4),175,10);
    fill(255,0,0);
    circle(640,174+random(4),10);
    circle(640+random(4),168,10);
    circle(630,173+random(4),10);
    fill(0,0,255);
    circle(631+random(4),170,10);
    
    // Electrons
    fill(255,255,0);
    circle(638+25*cos(2*angle),174+25*sin(-2*angle),10);
    circle(638+25*cos(2*angle+PI),174+25*sin(-2*angle+PI),10);
    for (int i=0; i<5; i++)
    {
      circle(638+50*cos(angle+2*i*PI/5),174+50*sin(angle+2*i*PI/5),10);
    }
  }
  
  if (timer < 0) // For Main Menu, go to a different place
  {
    popMatrix();
  }
}

void circuit(int timer)
{
  if (timer < 0) // For Slide Selection, go to a different place
  {
    pushMatrix();
    translate(400,0);
  }
  
  // Wires
  stroke(185,90,65);
  strokeWeight(5);
  noFill();
  rectMode(CORNER);
  rect(75,250,225,100);
  
  // Bulb
  fill(255);
  noStroke();
  circle(188,335,50);
  
  // Electrons
  fill(255,255,0);
  noStroke();
  int step = timer%25;
  if (timer < 0) // For Slide Selection, go to a different place
  {
    step*=-1;
  }
  for (int i=0; i<4; i++)
  {
    circle(75,250+25*i+step,10);
    circle(300,350-25*i-step,10);
  }
  for (int i=0; i<9; i++)
  {
    circle(75+25*i+step,350,10);
    circle(300-25*i-step,250,10);
  }
  
  // Battery
  rectMode(CENTER);
  fill(150,80,20);
  rect(75,283,15,13);
  fill(10);
  rect(75,306,15,35);
  
  if (timer < 0) // For Slide Selection, go to a different place
  {
    popMatrix();
  }
}

void circuit_diagram(int timer)
{
  // Wires
  stroke(150);
  strokeWeight(5);
  noFill();
  rectMode(CORNER);
  rect(75,250,225,100);
  
  // Bulb
  stroke(0);
  line(170,350,206,350);
  stroke(100);
  circle(188,335,50);
  beginShape();
  vertex(170,350);
  vertex(183,345);
  vertex(188,340);
  vertex(195,325);
  vertex(191,321);
  vertex(187.5,320);
  vertex(184,321);
  vertex(180,325);
  vertex(187,340);
  vertex(193,345);
  vertex(206,350);
  endShape();
  
  // battery
  stroke(0);
  line(75,275,75,320);
  stroke(100);
  line(50,275,100,275);
  line(65,285,85,285);
  line(50,295,100,295);
  line(65,305,85,305);
  line(50,315,100,315);
  line(65,325,85,325);
  
  // Electrons
  fill(200);
  noStroke();
  int step = timer%25;
  for (int i=0; i<4; i++)
  {
    circle(75,250+25*i+step,10);
    circle(300,350-25*i-step,10);
  }
  for (int i=0; i<9; i++)
  {
    circle(75+25*i+step,350,10);
    circle(300-25*i-step,250,10);
  }
}

void how_is_electricity_made(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 1025) { global_timer = 0; current_slide = "renewable_power"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "what_is_electricity";
    }
    else if (mouseX>655 && mouseX<755 && mouseY>417 && mouseY<463)
    {
      // Next button clicked
      global_timer = 0;
      current_slide = "how_do_you_transport_electricity";
    }
    
    else if (mouseX>50 && mouseX<330 && mouseY>160 && mouseY<370 && 3*mouseX+7*mouseY<2950)
    {
      // Wind Turbines clicked
      global_timer = 0;
      current_slide = "renewable_power";
    }
    else if (mouseX>330 && mouseX<558 && mouseY>130 && mouseY<295 && 3*mouseX+7*mouseY<3475 && 7*mouseY-3*mouseX<655)
    {
      // Hydro Plant clicked
      global_timer = 0;
      current_slide = "renewable_power";
    }
    else if (mouseX>295 && mouseX<540 && mouseY>385 && mouseY<490 && 3*mouseX+7*mouseY>4000)
    {
      // Solar Farm clicked
      global_timer = 0;
      current_slide = "renewable_power";
    }
    else if (mouseX>358 && mouseX<498 && 7*mouseY-3*mouseX>655 && 7*mouseY-3*mouseX<1222 && 3*mouseX+7*mouseY<3790)
    {
      // Coal Plant clicked
      global_timer = 0;
      current_slide = "non_renewable_power";
    }
    else if (mouseX>274 && mouseX<414 && (7*mouseY-3*mouseX>1222 || mouseX<358) && 7*mouseY-3*mouseX<1726 && 3*mouseX+7*mouseY>2950 && 3*mouseX+7*mouseY<3790)
    {
      // Oil Plant clicked
      global_timer = 0;
      current_slide = "non_renewable_power";
    }
    else if (mouseX>190 && mouseX<330 && (7*mouseY-3*mouseX>1726 || mouseX<274) && 7*mouseY-3*mouseX<2230 && 3*mouseX+7*mouseY>2950 && 3*mouseX+7*mouseY<3790)
    {
      // Natural Gas Plant clicked
      global_timer = 0;
      current_slide = "non_renewable_power";
    }
    else if (mouseX>505 && mouseX<750 && mouseY>234 && mouseY<385 && mouseX+mouseY>830)
    {
      // Nuclear Plant clicker
      global_timer = 0;
      current_slide = "nuclear_power";
    }
  }
  
  // Background
  strokeWeight(1);
  background(0,20,0);
  noStroke();
  fill(0,40,0);
  quad(400,100,960,340,400,580,-160,340);
  fill(0,150,0);
  quad(400,190,750,340,400,490,50,340);
  
  // Map
  map_hydro_plant(timer);
  map_wind_turbines(timer);
  map_solar_panels(timer);
  map_coal_plant(timer);
  map_oil_plant(timer);
  map_natural_gas_plant(timer);
  map_nuclear_plant(timer);
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("How Is Electricity Made?",400,100);
  
  // Instructions
  textSize(20);
  fill(255);
  text("Click on a drawing to learn more about it",400,125);
  
  // Buttons
  textSize(30);
  fill(255,255,0);
  text("MENU",95,70);
  text("BACK",95,450);
  text("NEXT",705,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  rect(705,440,100,45);
}

void map_wind_turbines(int timer)
{
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseX>50 && mouseX<330 && mouseY>160 && mouseY<370 && 3*mouseX+7*mouseY<2950)
  {
    noFill();
    stroke(255);
    strokeWeight(3);
    quad(50,340,260,250,330,280,120,370);
  }
  
  // Wind turbines
  strokeWeight(5);
  for (int i=0; i<3; i++)
  {
    // Stem
    fill(230);
    noStroke();
    ellipse(120+70*i,340-30*i,14,6);
    quad(113+70*i,340-30*i,117+70*i,250-30*i,123+70*i,250-30*i,127+70*i,340-30*i);
    circle(120+70*i,250-30*i,10);
    
    // Wings
    stroke(230);
    for (float j=radians(timer%120); j<TWO_PI; j+= TWO_PI/3.0)
    {
      line(120+70*i,250-30*i,120+70*i+30*cos(j+i),250-30*i+30*sin(j+i));
    }
  }
}

void map_hydro_plant(int timer)
{
  // Logic, check if mouse is hovering and then highlight drawing
  boolean hover = false;
  if (mouseX>330 && mouseX<558 && mouseY>130 && mouseY<295 && 3*mouseX+7*mouseY<3475 && 7*mouseY-3*mouseX<655)
  {
    // Hovering over it
    hover = true;
    fill(255);
    stroke(255);
    strokeWeight(7);
    quad(400,130,505,175,435,205,330,160);
    quad(330,160,435,205,435,265,330,220);
    quad(435,190,470,205,470,295,435,280);
    quad(435,190,522,152,557,167,470,205);
    quad(470,205,557,167,557,257,470,295);
  }
  
  // Waterfall
  strokeWeight(1);
  fill(100,150,255);
  stroke(100,150,255);
  quad(400,130,505,175,435,205,330,160);
  quad(330,160,435,205,435,265,330,220);
  
  // River
  quad(295,265,365,235,400,250,330,280);
  quad(120,370,365,265,400,280,155,385);
  
  // Flowing water
  strokeWeight(3);
  stroke(75,125,200);
  int step;
  // Waterfall
  for (int i=0; i<7; i++)
  {
    step = (timer/3+(int)(30*sin(i)*i)+136)%68;
    line(334+14*i,min(222+6*i,162+6*i+step),334+14*i,max(162+6*i,152+6*i+step));
  }
  for (int i=0; i<5; i++)
  {
    step = (timer/3+(int)(30*sin(i)*i)+136)%68;
    line(407+16*i-step,133+7*i+(step*3/7.0),min(407+16*i,421+16*i-step),max(133+7*i,127+7*i+(step*3/7.0)));
  }
  // Short river
  step = (timer/3)%84;
  line(max(301,371-step),min(266,237+(step*3/7.0)),min(371,385-step),max(237,231+(step*3/7.0)));
  step = (timer/3+40)%84;
  line(max(317,387-step),min(273,244+(step*3/7.0)),min(387,401-step),max(244,238+(step*3/7.0)));
  // Long river
  step = (timer/3)%84;
  for (int i=0; i<4; i++)
  {
    line(399-84*i-step,255+36*i+(step*3/7),385-84*i-step,261+36*i+(step*3/7));
  }
  step = (timer/3+40)%84;
  for (int i=0; i<4; i++)
  {
    line(415-84*i-step,262+36*i+(step*3/7.0),401-84*i-step,268+36*i+(step*3/7.0));
  }
  // Cover extra
  fill(0,40,0);
  stroke(0,40,0);
  strokeWeight(1);
  quad(120,370,155,385,50,430,15,415);
  fill(0,150,0);
  stroke(0,150,0);
  quad(400,250,435,265,400,280,365,265);
  
  // Dam
  strokeWeight(1);
  fill(150);
  stroke(150);
  beginShape();
  vertex(330,160);
  vertex(330,150);
  vertex(337,147);
  vertex(442,192);
  vertex(442,202);
  vertex(435,205);
  endShape(CLOSE);
  stroke(100);
  strokeWeight(2);
  for (int i=0; i<7; i++)
  {
    line(344+14*i,166+6*i,344+14*i,176+6*i);
  }
  
  // Building
  fill(180);
  stroke(150);
  strokeWeight(1);
  quad(435,190,470,205,470,295,435,280);
  quad(435,190,522,152,557,167,470,205);
  quad(470,205,557,167,557,257,470,295);
  fill(255,255,100);
  quad(446,210,459,215,459,230,446,225);
  quad(446,240,459,245,459,260,446,255);
  quad(481,215,494,210,494,225,481,230);
  quad(481,245,494,240,494,255,481,260);
  quad(516,200,529,195,529,210,516,215);
  quad(516,230,529,225,529,240,516,245);
  
  if (hover)
  {
    strokeWeight(3);
    stroke(255);
    line(400,252,433,266);
  }
}

void map_solar_panels(int timer)
{
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseX>295 && mouseX<540 && mouseY>385 && mouseY<490 && 3*mouseX+7*mouseY>4000)
  {
    stroke(255);
    fill(255);
    strokeWeight(7);
    quad(295,445,435,385,540,430,400,490);
  }
  
  // Ground
  fill(0,150,0);
  stroke(0,150,0);
  strokeWeight(1);
  quad(295,445,435,385,540,430,400,490);
  
  // Solar panels
  fill(10,30,100);
  stroke(100);
  strokeWeight(2);
  for (int i=0; i<6; i++)
  {
    // Panel
    quad(415-20*i,400+9*i,430-20*i,385+9*i,515-20*i,421+9*i,500-20*i,436+9*i);
    line(507-20*i,429+9*i,507-20*i,432+9*i);
    
    // Lines separating the cells
    for (int j=1; j<5; j++)
    {
      line(415-20*i+17*j,400+9*i+7*j,430-20*i+17*j,385+9*i+7*j);
    }
  }
}

void map_coal_plant(int timer)
{
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseX>358 && mouseX<498 && 7*mouseY-3*mouseX>655 && 7*mouseY-3*mouseX<1222 && 3*mouseX+7*mouseY<3790)
  {
    stroke(255);
    fill(255);
    strokeWeight(7);
    quad(358, 328, 428, 298, 498, 328, 428, 358);
  }
  
  // Ground
  fill(200);
  stroke(200);
  strokeWeight(1);
  quad(358,328,428,298,498,328,428,358);
  
  // Tubes
  strokeWeight(10);
  for (int i=0; i<7; i++)
  {
    if (i%2 == 0)
    {
      stroke(200,0,0);
    }
    else
    {
      stroke(255);
    }
    line(388,328-10*i,388,320-10*i);
    line(423,313-10*i,423,305-10*i);
  }
  
  // Stack
  strokeWeight(1);
  fill(150);
  stroke(150);
  ellipse(442,334,49,21);
  beginShape();
  curveVertex(425,234);
  curveVertex(425,284);
  curveVertex(418,334);
  curveVertex(368,384);
  vertex(467,334);
  curveVertex(517,384);
  curveVertex(467,334);
  curveVertex(460,284);
  curveVertex(460,234);
  endShape(CLOSE);
  fill(50);
  ellipse(442,284,35,15);
  
  // Smoke
  float step, temp;
  int change;
  noStroke();
  for (int i=40; i<60; i++)
  {
    temp = ((i*cos(i))+200+timer/7.0);
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(388+step+5*sin(i),260-2*step+10*sin(i),(i*i*change)%5+10);
    step = (temp+37)%(100+i);
    fill(255,100-step);
    circle(423+step+5*cos(i),260-2*step+10*cos(i),(i*i*change)%5+10);
    
    temp += 78;
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(442+step+5*sin(i),273-2*step+10*sin(i),(i*i*change)%15+15);
  }
}

void map_oil_plant(int timer)
{
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseX>274 && mouseX<414 && (7*mouseY-3*mouseX>1222 || mouseX<358) && 7*mouseY-3*mouseX<1726 && 3*mouseX+7*mouseY>2950 && 3*mouseX+7*mouseY<3790)
  {
    stroke(255);
    fill(255);
    strokeWeight(7);
    quad(274,364,344,334,414,364,344,394);
  }
  
  // Ground
  fill(200);
  stroke(200);
  strokeWeight(1);
  quad(274,364,344,334,414,364,344,394);
  
  // Tubes
  strokeWeight(10);
  for (int i=0; i<7; i++)
  {
    if (i%2 == 0)
    {
      stroke(200,0,0);
    }
    else
    {
      stroke(255);
    }
    line(304,364-10*i,304,356-10*i);
    line(339,349-10*i,339,341-10*i);
  }
  
  // Stack
  strokeWeight(1);
  fill(150);
  stroke(150);
  ellipse(358,370,49,21);
  beginShape();
  curveVertex(341,270);
  curveVertex(341,320);
  curveVertex(334,370);
  curveVertex(284,420);
  vertex(383,370);
  curveVertex(433,420);
  curveVertex(383,370);
  curveVertex(376,320);
  curveVertex(376,270);
  endShape(CLOSE);
  fill(50);
  ellipse(358,320,35,15);
  
  // Smoke
  float step, temp;
  int change;
  noStroke();
  for (int i=20; i<40; i++)
  {
    temp = ((i*cos(i))+200+timer/7.0);
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(304+step+5*sin(i),296-2*step+10*sin(i),(i*i*change)%5+10);
    step = (temp+37)%(100+i);
    fill(255,100-step);
    circle(339+step+5*cos(i),296-2*step+10*cos(i),(i*i*change)%5+10);
    
    temp += 78;
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(358+step+5*sin(i),319-2*step+10*sin(i),(i*i*change)%15+15);
  }
}

void map_natural_gas_plant(int timer)
{
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseX>190 && mouseX<330 && (7*mouseY-3*mouseX>1726 || mouseX<274) && 7*mouseY-3*mouseX<2230 && 3*mouseX+7*mouseY>2950 && 3*mouseX+7*mouseY<3790)
  {
    stroke(255);
    fill(255);
    strokeWeight(7);
    quad(190,400,260,370,330,400,260,430);
  }
  
  // Ground
  fill(200);
  stroke(200);
  strokeWeight(1);
  quad(190,400,260,370,330,400,260,430);
  
  // Tubes
  strokeWeight(10);
  for (int i=0; i<7; i++)
  {
    if (i%2 == 0)
    {
      stroke(200,0,0);
    }
    else
    {
      stroke(255);
    }
    line(220,400-10*i,220,392-10*i);
    line(255,385-10*i,255,377-10*i);
  }
  
  // Stack
  strokeWeight(1);
  fill(150);
  stroke(150);
  ellipse(274,406,49,21);
  beginShape();
  curveVertex(257,306);
  curveVertex(257,356);
  curveVertex(250,406);
  curveVertex(200,456);
  vertex(299,406);
  curveVertex(349,456);
  curveVertex(299,406);
  curveVertex(292,356);
  curveVertex(292,306);
  endShape(CLOSE);
  fill(50);
  ellipse(274,356,35,15);
  
  // Smoke
  float step, temp;
  int change;
  noStroke();
  for (int i=0; i<20; i++)
  {
    temp = ((i*cos(i))+200+timer/7.0);
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(220+step+5*sin(i),332-2*step+10*sin(i),(i*i*change)%5+10);
    step = (temp+37)%(100+i);
    fill(255,100-step);
    circle(255+step+5*cos(i),332-2*step+10*cos(i),(i*i*change)%5+10);
    
    temp += 78;
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(274+step+5*sin(i),345-2*step+10*sin(i),(i*i*change)%15+15);
  }
}

void map_nuclear_plant(int timer)
{
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseX>505 && mouseX<750 && mouseY>234 && mouseY<385 && mouseX+mouseY>830)
  {
    stroke(255);
    fill(255);
    strokeWeight(7);
    quad(505,325,610,280,750,340,645,385);
  }
  
  // Floor
  stroke(150);
  fill(200);
  strokeWeight(1);
  quad(505,325,610,280,750,340,645,385);
  fill(100,20,10);
  stroke(100,20,10);
  quad(525,325,560,310,630,340,595,355);
  
  fill(150);
  stroke(150);
  // Right plant
  ellipse(687,337,63,27);
  beginShape();
  curveVertex(623,227);
  curveVertex(663,280);
  curveVertex(656,333);
  curveVertex(616,287);
  vertex(718,333);
  curveVertex(758,287);
  curveVertex(718,333);
  curveVertex(711,280);
  curveVertex(751,227);
  endShape();
  stroke(100);
  fill(50);
  ellipse(687,277,49,21);
  
  // Left plant
  stroke(150);
  fill(150);
  ellipse(617,307,63,27);
  beginShape();
  curveVertex(553,197);
  curveVertex(593,250);
  curveVertex(586,303);
  curveVertex(546,257);
  vertex(648,303);
  curveVertex(688,257);
  curveVertex(648,303);
  curveVertex(641,250);
  curveVertex(681,197);
  endShape();
  stroke(100);
  fill(50);
  ellipse(617,247,49,21);
  
  // Nuclear symbol
  fill(0);
  noStroke();
  circle(617,285,30);
  circle(687,315,30);
  fill(255,255,0);
  arc(617,285,25,25,0,PI/3);
  arc(617,285,25,25,TWO_PI/3,PI);
  arc(617,285,25,25,-TWO_PI/3,-PI/3);
  arc(687,315,25,25,0,PI/3);
  arc(687,315,25,25,TWO_PI/3,PI);
  arc(687,315,25,25,-TWO_PI/3,-PI/3);
  stroke(0);
  strokeWeight(3);
  fill(255,255,0);
  circle(617,285,10);
  circle(687,315,10);
  
  // Smoke
  float step, temp;
  int change;
  noStroke();
  for (int i=0; i<20; i++)
  {
    temp = ((i*sin(i)*10)+200+timer/7.0);
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(615+step+5*sin(i),235-2*step+10*sin(i),(i*i*change)%25+15);
    temp += 37;
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(685+step+5*cos(i),265-2*step+10*cos(i),(i*i*change)%25+15);
  }
}

void renewable_power(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 1025) { global_timer = 0; current_slide = "non_renewable_power"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "how_is_electricity_made";
    }
  }
  
  // Background, windmills turning
  background(0,0,20);
  rectMode(CORNER);
  fill(0,20,0);
  noStroke();
  rect(0,200,800,300);
  fill(20);
  ellipse(550,400,50,25);
  quad(525,400,540,120,560,120,575,400);
  quad(210,500,225,200,250,200,265,500);
  circle(550,120,30);
  circle(237,200,40);
  stroke(20);
  for (float j=radians((timer%1200)/7.0); j<TWO_PI; j+= TWO_PI/3.0)
  {
    strokeWeight(15);
    line(550,120,550+90*cos(j+1),120+90*sin(j+1));
    strokeWeight(20);
    line(237,200,237+120*cos(j),200+120*sin(j));
  }
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("Renewable Power",400,100);
  
  // Buttons
  textSize(30);
  text("MENU",95,70);
  text("MAP",95,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25 && timer < 625)
  {
    textAlign(LEFT);
    text("Renewable energy is derived\nfrom resources that are not\nfinite or exhaustible,\nand can be used forever",50,150);
  }
  if (timer > 225)
  {
    textAlign(RIGHT);
    text("Wind turbines have large fins which are spun by the wind,\nturning a generator inside and creating electricity",750,300);
  }
  if (timer > 425)
  {
    textAlign(LEFT);
    text("Hydropower stations situated on dams use the flowing\nwater to turn large turbines as gravity pulls it down",50,375);
  }
  if (timer > 625)
  {
    text("Solar panels convert light\ninto electricity, and are\nusually arranged in large\ngrids on fields or on houses",50,150);
  }
  
  // Animations
  if (timer < 225) {}
  else if (timer < 425)
  {
    wind_turbines(timer);
  }
  else if (timer < 625)
  {
    hydro_plant(timer);
  }
  else
  {
    solar_panels(0);
  }
}

void wind_turbines(int timer)
{
  if (timer < 0) // For Main Menu, go to a different place
  {
    // Left windmill
    int i=0;
    pushMatrix();
    scale(1.5);
    translate(-445,0);
    strokeWeight(5);
    fill(230);
    noStroke();
    ellipse(500+70*i,250-10*i,14,6);
    quad(493+70*i,250-10*i,497+70*i,160-10*i,503+70*i,160-10*i,507+70*i,250-10*i);
    circle(500+70*i,160-10*i,10);
    stroke(230);
    for (float j=radians(timer%120); j<TWO_PI; j+= TWO_PI/3.0)
    {
      line(500+70*i,160-10*i,500+70*i+30*cos(j+i),160-10*i+30*sin(j+i));
    }
    popMatrix();
    
    //Right windmill
    pushMatrix();
    scale(1.5);
    translate(-45,0);
    strokeWeight(5);
    fill(230);
    noStroke();
    ellipse(500+70*i,250-10*i,14,6);
    quad(493+70*i,250-10*i,497+70*i,160-10*i,503+70*i,160-10*i,507+70*i,250-10*i);
    circle(500+70*i,160-10*i,10);
    stroke(230);
    for (float j=radians(timer%120); j<TWO_PI; j+= TWO_PI/3.0)
    {
      line(500+70*i,160-10*i,500+70*i+30*cos(j+i),160-10*i+30*sin(j+i));
    }
    popMatrix();
  }
  else
  {
    // Draw 4 tiny windmills
    strokeWeight(5);
    for (int i=-1; i<4; i++)
    {
      // Stem
      fill(230);
      noStroke();
      ellipse(500+70*i,250-10*i,14,6);
      quad(493+70*i,250-10*i,497+70*i,160-10*i,503+70*i,160-10*i,507+70*i,250-10*i);
      circle(500+70*i,160-10*i,10);
      
      // Wings
      stroke(230);
      for (float j=radians(timer%120); j<TWO_PI; j+= TWO_PI/3.0)
      {
        line(500+70*i,160-10*i,500+70*i+30*cos(j+i),160-10*i+30*sin(j+i));
      }
    }
  }
}

void hydro_plant(int timer)
{
  // Waterfall
  strokeWeight(1);
  fill(100,150,255);
  stroke(100,150,255);
  quad(550,115,655,160,585,190,480,145);
  quad(480,145,585,190,585,250,480,205);
  
  // Flowing water
  strokeWeight(3);
  stroke(75,125,200);
  int step;
  // Waterfall
  for (int i=0; i<7; i++)
  {
    step = (timer/3+(int)(30*sin(i)*i)+136)%68;
    line(484+14*i,min(207+6*i,147+6*i+step),484+14*i,max(147+6*i,137+6*i+step));
  }
  for (int i=0; i<5; i++)
  {
    step = (timer/3+(int)(30*sin(i)*i)+136)%68;
    line(557+16*i-step,118+7*i+(step*3/7.0),min(557+16*i,571+16*i-step),max(118+7*i,112+7*i+(step*3/7.0)));
  }
  
  // Dam
  strokeWeight(1);
  fill(150);
  stroke(150);
  beginShape();
  vertex(480,145);
  vertex(480,135);
  vertex(487,132);
  vertex(592,177);
  vertex(592,187);
  vertex(585,190);
  endShape(CLOSE);
  stroke(100);
  strokeWeight(2);
  for (int i=0; i<7; i++)
  {
    line(494+14*i,151+6*i,494+14*i,161+6*i);
  }
  
  // Building
  fill(180);
  stroke(150);
  strokeWeight(1);
  quad(585,175,620,190,620,280,585,265);
  quad(585,175,672,137,707,152,620,190);
  quad(620,190,707,152,707,242,620,280);
  fill(255,255,100);
  quad(596,195,609,200,609,215,596,210);
  quad(596,225,609,230,609,245,596,240);
  quad(631,200,644,195,644,210,631,215);
  quad(631,230,644,225,644,240,631,245);
  quad(666,185,679,180,679,195,666,200);
  quad(666,215,679,210,679,225,666,230);
}

void solar_panels(int timer)
{
  fill(10,30,100);
  stroke(100);
  strokeWeight(3);
  for (int i=-6; i<1; i++)
  {
    // Panel
    quad(415-30*i,205+15*i,440-30*i,180+15*i,560-30*i,240+15*i,535-30*i,265+15*i);
    line(550-30*i,250+15*i,550-30*i,259+15*i);
    // Lines dividing cells
    for (int j=1; j<4; j++)
    {
      line(415-30*i+30*j,205+15*i+15*j,440-30*i+30*j,180+15*i+15*j);
    }
  }
}

void non_renewable_power(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 1025) { global_timer = 0; current_slide = "nuclear_power"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "how_is_electricity_made";
    }
  }
  
  // Background, of 2 power plants on a field
  background(0,0,20);
  noStroke();
  fill(0,15,0);
  triangle(0,700,0,200,375,200);
  triangle(800,700,800,200,425,200);
  fill(0,20,0);
  quad(0,700,375,200,425,200,800,700);
  fill(20);
  ellipse(150,300,200,50);
  ellipse(150,100,140,35);
  beginShape();
  curveVertex(80,0);
  curveVertex(80,100);
  curveVertex(50,300);
  curveVertex(-50,400);
  vertex(250,300);
  curveVertex(350,400);
  curveVertex(250,300);
  curveVertex(220,100);
  curveVertex(220,0);
  endShape(CLOSE);
  ellipse(650,300,200,50);
  ellipse(650,100,140,35);
  beginShape();
  curveVertex(580,0);
  curveVertex(580,100);
  curveVertex(550,300);
  curveVertex(450,400);
  vertex(750,300);
  curveVertex(850,400);
  curveVertex(750,300);
  curveVertex(720,100);
  curveVertex(720,0);
  endShape(CLOSE);
  strokeWeight(20);
  for (int i=0; i<7; i++)
  {
    if (i%2 == 0)
    {
      stroke(20,0,0);
    }
    else
    {
      stroke(40);
    }
    line(225,345-30*i,225,321-30*i);
    line(275,250-30*i,275,226-30*i);
    line(525,250-30*i,525,226-30*i);
    line(575,345-30*i,575,321-30*i);
  }
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("Non-Renewable Power",400,100);
  
  // Buttons
  textSize(30);
  text("MENU",95,70);
  text("MAP",95,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25 && timer < 425)
  {
    textAlign(LEFT);
    text("Non-renewable energy is derived\nfrom resources that are\nfinite/exhaustible, and\nwill run out eventually\nThese are resources mined or\ndrilled from the earth, and\nthe burning of these fuels\npollutes the environment and\nconsumes our limited supply of them",50,150);
  }
  if (timer > 425)
  {
    textAlign(LEFT);
    text("Coal, oil, or natural gas are\nburnt to produce heat, which\nboils water into steam. This\nsteam turns a turbine which\ngenerates electricity, and then\nis cooled back down into water.",50,150);
  }
  
  // Animations
  if (timer < 425) {}
  else if (timer < 625)
  {
    coal_plant(timer);
  }
  else if (timer < 1825)
  {
    oil_plant(timer);
  }
  else
  {
    oil_plant(1825);
  }
}

void coal_plant(int timer)
{
  // Ground
  fill(200);
  stroke(200);
  strokeWeight(2);
  quad(408,428,548,368,688,428,548,488);
  
  // Tubes
  strokeWeight(20);
  for (int i=0; i<7; i++)
  {
    if (i%2 == 0)
    {
      stroke(200,0,0);
    }
    else
    {
      stroke(255);
    }
    line(468,428-20*i,468,412-20*i);
    line(538,398-20*i,538,382-20*i);
  }
  
  // Stack
  strokeWeight(2);
  fill(150);
  stroke(150);
  ellipse(576,440,98,42);
  beginShape();
  curveVertex(542,240);
  curveVertex(542,340);
  curveVertex(528,440);
  curveVertex(428,540);
  vertex(626,440);
  curveVertex(726,540);
  curveVertex(626,440);
  curveVertex(612,340);
  curveVertex(612,240);
  endShape(CLOSE);
  fill(50);
  ellipse(576,340,70,30);
  
  // Smoke
  float step, temp;
  int change;
  noStroke();
  for (int i=20; i<40; i++)
  {
    temp = ((i*cos(i))+200+timer/7.0);
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(468+1.5*step+7*sin(i),292-3*step+14*sin(i),(i*i*change)%10+20);
    step = (temp+37)%(100+i);
    fill(255,100-step);
    circle(538+1.5*step+7*cos(i),262-3*step+14*cos(i),(i*i*change)%10+20);
    
    temp += 78;
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(576+1.5*step+7*sin(i),340-3*step+14*sin(i),(i*i*change)%30+30);
  }
}

void oil_plant(int timer)
{
  // Ground
  fill(200);
  stroke(200);
  strokeWeight(2);
  quad(408,428,548,368,688,428,548,488);
  
  // Tubes
  strokeWeight(20);
  for (int i=0; i<7; i++)
  {
    if (i%2 == 0)
    {
      stroke(200,0,0);
    }
    else
    {
      stroke(255);
    }
    line(468,428-20*i,468,412-20*i);
    line(538,398-20*i,538,382-20*i);
  }
  
  // Stack
  strokeWeight(2);
  fill(150);
  stroke(150);
  ellipse(576,440,98,42);
  beginShape();
  curveVertex(542,240);
  curveVertex(542,340);
  curveVertex(528,440);
  curveVertex(428,540);
  vertex(626,440);
  curveVertex(726,540);
  curveVertex(626,440);
  curveVertex(612,340);
  curveVertex(612,240);
  endShape(CLOSE);
  fill(50);
  ellipse(576,340,70,30);
  
  // Smoke
  float step, temp;
  int change;
  noStroke();
  for (int i=20; i<40; i++)
  {
    temp = ((i*cos(i))+200+timer/7.0);
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(468+1.5*step+7*sin(i),292-3*step+14*sin(i),(i*i*change)%10+20);
    step = (temp+37)%(100+i);
    fill(255,100-step);
    circle(538+1.5*step+7*cos(i),262-3*step+14*cos(i),(i*i*change)%10+20);
    
    temp += 78;
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(576+1.5*step+7*sin(i),340-3*step+14*sin(i),(i*i*change)%30+30);
  }
}

void natural_gas_plant(int timer)
{
  // Shift over 100
  pushMatrix();
  translate(-100,0);
  
  // Ground
  fill(200);
  stroke(200);
  strokeWeight(2);
  quad(408,428,548,368,688,428,548,488);
  
  // Tubes
  strokeWeight(20);
  for (int i=0; i<7; i++)
  {
    if (i%2 == 0)
    {
      stroke(200,0,0);
    }
    else
    {
      stroke(255);
    }
    line(468,428-20*i,468,412-20*i);
    line(538,398-20*i,538,382-20*i);
  }
  
  // Stack
  strokeWeight(2);
  fill(150);
  stroke(150);
  ellipse(576,440,98,42);
  beginShape();
  curveVertex(542,240);
  curveVertex(542,340);
  curveVertex(528,440);
  curveVertex(428,540);
  vertex(626,440);
  curveVertex(726,540);
  curveVertex(626,440);
  curveVertex(612,340);
  curveVertex(612,240);
  endShape(CLOSE);
  fill(50);
  ellipse(576,340,70,30);
  
  // Smoke
  float step, temp;
  int change;
  noStroke();
  for (int i=20; i<40; i++)
  {
    temp = ((i*cos(i))+200+timer/7.0);
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(468+1.5*step+7*sin(i),292-3*step+14*sin(i),(i*i*change)%10+20);
    step = (temp+37)%(100+i);
    fill(255,100-step);
    circle(538+1.5*step+7*cos(i),262-3*step+14*cos(i),(i*i*change)%10+20);
    
    temp += 78;
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(576+1.5*step+7*sin(i),340-3*step+14*sin(i),(i*i*change)%30+30);
  }
  
  // Shift back
  popMatrix();
}

void nuclear_power(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 1025) { global_timer = 0; current_slide = "how_do_you_transport_electricity"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "how_is_electricity_made";
    }
  }
  
  // Background, or a nuclear symbol
  background(0,10,0);
  fill(15,34,14);
  noStroke();
  circle(400,250,400);
  fill(29,86,12);
  arc(400,250,350,350,0,PI/3);
  arc(400,250,350,350,TWO_PI/3,PI);
  arc(400,250,350,350,-TWO_PI/3,-PI/3);
  stroke(15,34,14);
  strokeWeight(30);
  circle(400,250,150);
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("Nuclear Power",400,100);
  
  // Buttons
  textSize(30);
  text("MENU",95,70);
  text("MAP",95,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25 && timer < 225)
  {
    textAlign(LEFT);
    text("Nuclear power plants are very\nsimilar to fossil fuel\nelectricity, heating water to\nproduce steam, which turns\na turbine. The main\ndifference is that the fuel is\nnot burnt, so it does not\npollute the environment",40,150);
  }
  if (timer > 225)
  {
    textAlign(LEFT);
    text("Nuclear plants use the\nenormous amount of energy\ncreated when splitting an\natom to make electricity,\nwhich does not emit emissions\nand is extremely efficient\nHowever, it uses up nuclear\nfuel, which is not renewable",40,150);
  }
  
  // Animations
  if (timer < 25) {}
  else if (timer < 825)
  {
    nuclear_plant(timer);
  }
  else
  {
    nuclear_plant(825);
  }
}

void nuclear_plant(int timer)
{
  // Floor
  stroke(150);
  fill(200);
  strokeWeight(1);
  quad(382.5,347.5,540,280,750,370,592.5,437.5);
  fill(100,20,10);
  stroke(100,20,10);
  quad(412.5,347.5,465,325,570,370,517.5,392.5);
  
  fill(150);
  stroke(150);
  // Right plant
  ellipse(655.5,365.5,94.5,40.5);
  beginShape();
  curveVertex(559.5,200.5);
  curveVertex(619.5,280);
  curveVertex(609,359.5);
  curveVertex(549,290.5);
  vertex(702,359.5);
  curveVertex(762,290.5);
  curveVertex(702,359.5);
  curveVertex(691.5,280);
  curveVertex(751.5,200.5);
  endShape();
  stroke(100);
  fill(50);
  ellipse(655.5,275.5,73.5,31.5);
  
  // Left plant
  stroke(150);
  fill(150);
  ellipse(550.5,320.5,94.5,40.5);
  beginShape();
  curveVertex(454.5,155.5);
  curveVertex(514.5,235);
  curveVertex(504,314.5);
  curveVertex(444,245.5);
  vertex(597,314.5);
  curveVertex(657,245.5);
  curveVertex(597,314.5);
  curveVertex(586.5,235);
  curveVertex(646.5,155.5);
  endShape();
  stroke(100);
  fill(50);
  ellipse(550.5,230.5,73.5,31.5);
  
  // Nuclear symbol
  fill(0);
  noStroke();
  circle(550.5,287.5,45);
  circle(655.5,332.5,45);
  fill(255,255,0);
  arc(550.5,287.5,37.5,37.5,0,PI/3);
  arc(550.5,287.5,37.5,37.5,TWO_PI/3,PI);
  arc(550.5,287.5,37.5,37.5,-TWO_PI/3,-PI/3);
  arc(655.5,332.5,37.5,37.5,0,PI/3);
  arc(655.5,332.5,37.5,37.5,TWO_PI/3,PI);
  arc(655.5,332.5,37.5,37.5,-TWO_PI/3,-PI/3);
  stroke(0);
  strokeWeight(4.5);
  fill(255,255,0);
  circle(550.5,287.5,15);
  circle(655.5,332.5,15);
  
  // Smoke
  float step, temp;
  int change;
  noStroke();
  for (int i=0; i<20; i++)
  {
    temp = ((i*sin(i)*10)+200+timer/7.0);
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(550.5+1.5*step+7*sin(i),230.5-3*step+14*sin(i),(i*i*change)%37+18);
    temp += 37;
    step = temp%(100+i);
    change = (int)temp/(100+i);
    fill(255,100-step);
    circle(655.5+1.5*step+7*cos(i),275.5-3*step+14*cos(i),(i*i*change)%37+18);
  }
}

void how_do_you_transport_electricity(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 825) { global_timer = 0; current_slide = "what_is_electricity_used_for"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "how_is_electricity_made";
    }
    else if (mouseX>655 && mouseX<755 && mouseY>417 && mouseY<463)
    {
      // Next button clicked
      global_timer = 0;
      current_slide = "what_is_electricity_used_for";
    }
  }
  
  // Background, of electric poles in a field
  background(0,0,20);
  noStroke();
  fill(0,15,0);
  triangle(0,700,0,200,375,200);
  triangle(800,700,800,200,425,200);
  fill(0,20,0);
  quad(0,700,375,200,425,200,800,700);
  stroke(30);
  strokeWeight(10);
  line(100,100,100,230);
  line(270,100,270,230);
  line(500,150,500,280);
  strokeWeight(15);
  line(620,200,620,395);
  strokeWeight(20);
  line(750,300,750,500);
  stroke(20);
  strokeWeight(3);
  line(0,100,100,100);
  line(100,100,270,100);
  line(270,100,500,150);
  strokeWeight(4);
  line(500,150,620,200);
  strokeWeight(5);
  line(620,200,750,300);
  strokeWeight(6);
  line(750,300,800,500);
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(RIGHT);
  text("How Do You Transport\nElectricity?",750,70);
  
  // Buttons
  textSize(30);
  textAlign(CENTER);
  text("MENU",95,70);
  text("BACK",95,450);
  text("NEXT",705,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  rect(705,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25)
  {
    textAlign(LEFT);
    text("Conductors are materials that allow\nelectric charge to flow through them\nMetals are good conductors, this is why electric wires are\nmade from metals like aluminum, steel, and copper",50,110);
  }
  if (timer > 225)
  {
    textAlign(RIGHT);
    text("Power plants generate a lot of energy, which\n can kill people if it passes through them\nThis is why electricity is sent through\nstrong cables high above the ground\nThe big power lines from the plant split\noff to every town they pass, where\nthey travel along smaller poles                \nthroughout the town                ",750,235);
  }
  
  // Animations
  if (timer < 25) {}
  else if (timer < 225)
  {
    conductors_example(timer);
  }
  else if (timer < 625)
  {
    electric_poles(timer);
  }
  else
  {
    electric_poles(0);
  }
}

void conductors_example(int timer)
{
  if (timer < 0) // For Main Menu, go to a different place
  {
    // Draw steelon the left
    int step = (-timer/6)%8;
    // Steel
    fill(150);
    stroke(100);
    strokeWeight(7);
    quad(50,370,115,260,165,260,100,370);
    quad(75,330,140,220,140,260,75,370);
    quad(50,330,115,220,165,220,100,330);
    // Electrons
    fill(255,255,0);
    noStroke();
    for (int i=-2; i<10; i++)
    {
      circle(65+8*i+step,350-14*i-(14/8.0*step),10);
    }
    
    // Draw steel on the right
    pushMatrix();
    translate(600,0);
    // Steel
    fill(150);
    stroke(100);
    strokeWeight(7);
    quad(50,370,115,260,165,260,100,370);
    quad(75,330,140,220,140,260,75,370);
    quad(50,330,115,220,165,220,100,330);
    // Electrons
    fill(255,255,0);
    noStroke();
    for (int i=-2; i<10; i++)
    {
      circle(65+8*i+step,350-14*i-(14/8.0*step),10);
    }
    popMatrix();
  }
  else
  {
    // Steel
    fill(150);
    stroke(100);
    strokeWeight(7);
    quad(50,370,115,260,165,260,100,370);
    quad(75,330,140,220,140,260,75,370);
    quad(50,330,115,220,165,220,100,330);
    
    // Wood
    fill(150,80,20);
    stroke(75,40,10);
    rectMode(CORNER);
    rect(165,330,50,40);
    quad(165,330,230,220,280,220,215,330);
    quad(215,330,280,220,280,260,215,370);
    
    // Electrons
    fill(255,255,0);
    noStroke();
    int step = (timer/6)%8;
    for (int i=-2; i<10; i++)
    {
      circle(65+8*i+step,350-14*i-(14/8.0*step),10);
    }
    for (int i=-2; i<10; i++)
    {
      circle(180+8*i,350-14*i,10);
    }
  }
}

void electric_poles(int timer)
{
  if (timer < 0) // For Slide Selection, go to a different place
  {
    // Move
    pushMatrix();
    scale(1.5);
    translate(-800/3.0,-500/3.0);
    
    // Poles
    strokeWeight(12);
    stroke(150,80,20);
    line(725,240,725,350);
    line(625,290,625,400);
    stroke(150);
    beginShape();
    vertex(735,240);
    vertex(715,240);
    vertex(715,236);
    endShape();
    beginShape();
    vertex(635,290);
    vertex(615,290);
    vertex(615,286);
    endShape();
    
    // Electric Lines
    strokeWeight(5);
    stroke(20);
    line(800,220,725,238);
    line(725,238,625,288);
    line(625,288,600,500);
    
    // Finishing Poles
    strokeWeight(12);
    stroke(150);
    line(735,240,735,233);
    line(635,290,635,283);
    popMatrix();
  }
  else
  {
    // Poles
    strokeWeight(8);
    stroke(150,80,20);
    line(75,240,75,350);
    line(175,290,175,400);
    stroke(150);
    beginShape();
    vertex(65,240);
    vertex(85,240);
    vertex(85,236);
    endShape();
    beginShape();
    vertex(165,290);
    vertex(185,290);
    vertex(185,286);
    endShape();
    
    // Electric Lines
    strokeWeight(3);
    stroke(20);
    line(0,220,75,238);
    line(75,238,175,288);
    line(175,288,200,500);
    
    // Finishing Poles
    strokeWeight(8);
    stroke(150);
    line(65,240,65,233);
    line(165,290,165,283);
  }
}

void what_is_electricity_used_for(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 1025) { global_timer = 0; current_slide = "electric_appliances"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "how_do_you_transport_electricity";
    }
    else if (mouseX>655 && mouseX<755 && mouseY>417 && mouseY<463)
    {
      // Next button clicked
      global_timer = 0;
      current_slide = "summary";
    }
    else if (mouseY>200 && mouseY<410)
    {
      // Cars and Buses or Lights clicked
      global_timer = 0;
      current_slide = "electricity_outdoors";
    }
    else if (mouseX>275 && mouseX<400 && mouseY>410 && mouseY<450)
    {
      // Subway clicked
      global_timer = 0;
      current_slide = "electricity_outdoors";
    }
    else if (mouseY>0 && mouseY<200)
    {
      // Houses or Apartments clicked
      global_timer = 0;
      current_slide = "electric_appliances";
    }
  }
  
  // Background
  background(20);
  noStroke();
  rectMode(CORNER);
  fill(100);
  rect(0,200,800,260);
  fill(150);
  rect(0,250,800,160);
  int x=7;
  stroke(255);
  strokeWeight(3);
  while (x<840)
  {
    line(x,290,x+20,290);
    line(x-13,370,x+7,370);
    x+= 50;
  }
  stroke(255,255,0);
  line(0,328,800,328);
  line(0,332,800,332);
  
  // Map
  map_houses(timer);
  map_apartments(timer);
  map_lights(timer);
  map_cars_and_buses(timer);
  map_subway(timer);
  
  // Title
  fill(0);
  noStroke();
  rectMode(CENTER);
  rect(500,87,550,55);
  fill(255,255,0);
  textSize(40);
  textAlign(CENTER);
  text("What Is Electricity Used For?",500,100);
  
  // Instructions
  textSize(25);
  text("Click on a drawing to learn more about it",400,490);
  
  // Buttons
  fill(0);
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  rect(705,440,100,45);
  
  // Button Outlines
  fill(255,255,0);
  textSize(30);
  text("MENU",95,70);
  text("BACK",95,450);
  text("NEXT",705,450);
}

void map_cars_and_buses(int timer)
{
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseY>250 && mouseY<410)
  {
    noFill();
    stroke(255);
    strokeWeight(3);
    rect(1,250,798,160);
  }
  
  // Cars and Buses going left
  for (int y=0; y<2; y++)
  {
    int x = (int)(-timer*(1+0.2*sin(y))-y*y*114);
    int counter = 0;
    noStroke();
    while ( x < 840)
    {
      if (counter%(8-(y*y%3))==1)
      {
        // Bus body
        fill((counter*counter*counter+1000+y*y*97)%255,(counter*counter+2089+y*y*97)%255,(counter*counter*counter*counter+3067+y*y*97)%155);
        beginShape();
        vertex(x+3,280+40*y);
        vertex(x,265+40*y);
        vertex(x,250+40*y);
        vertex(x+6,235+40*y);
        vertex(x+137,235+40*y);
        vertex(x+140,250+40*y);
        vertex(x+140,265+40*y);
        vertex(x+137,280+40*y);
        endShape();
        
        // Bus door and windows
        fill(50);
        rect(x+10,240+40*y,10,30);
        for (int i=0; i<5; i++)
        {
          rect(x+25+22*i,240+40*y,15,20);
        }
        
        // Bus wheels
        fill(0);
        circle(x+20,277+40*y,15);
        circle(x+120,277+40*y,15);
        
        x += 160+(counter*(y+1)*100%27);
        counter++;
      }
      else
      {
        // Car body
        fill((counter*counter*counter+1000+y*y*97)%255,(counter*counter+2089+y*y*97)%255,(counter*counter*counter*counter+3067+y*y*97)%155);
        beginShape();
        vertex(x+10,280+40*y);
        vertex(x+1,275+40*y);
        vertex(x,270+40*y);
        vertex(x+1,265+40*y);
        vertex(x+5,260+40*y);
        vertex(x+15,260+40*y);
        vertex(x+20,250+40*y);
        vertex(x+30,245+40*y);
        vertex(x+45,245+40*y);
        vertex(x+55,250+40*y);
        vertex(x+60,260+40*y);
        vertex(x+65,260+40*y);
        vertex(x+69,265+40*y);
        vertex(x+70,270+40*y);
        vertex(x+69,275+40*y);
        vertex(x+60,280+40*y);
        endShape(CLOSE);
        
        // Car window 1
        fill(50);
        beginShape();
        vertex(x+25,260+40*y);
        vertex(x+28,255+40*y);
        vertex(x+31,252+40*y);
        vertex(x+35,250+40*y);
        vertex(x+35,260+40*y);
        endShape(CLOSE);
        // Car window 2
        beginShape();
        vertex(x+51,260+40*y);
        vertex(x+48,255+40*y);
        vertex(x+45,252+40*y);
        vertex(x+41,250+40*y);
        vertex(x+41,260+40*y);
        endShape(CLOSE);
        
        // Car wheels
        fill(0);
        circle(x+20,277+40*y,15);
        circle(x+50,277+40*y,15);
        
        x += 90+(counter*(y+1)*100%27);
        counter++;
      }
    }
  }
  
  // Cars and Buses going right
  for (int y=2; y<4; y++)
  {
    int x = (int)(800+timer*(1+0.2*sin(y))+y*y*114);
    int counter = 0;
    noStroke();
    while ( x > -40)
    {
      if (counter%(8-(y*y%3))==1)
      {
        // Bus body
        fill((counter*counter*counter+1000+y*y*97)%255,(counter*counter+2089+y*y*97)%255,(counter*counter*counter*counter+3067+y*y*97)%155);
        beginShape();
        vertex(x-3,280+40*y);
        vertex(x,265+40*y);
        vertex(x,250+40*y);
        vertex(x-6,235+40*y);
        vertex(x-137,235+40*y);
        vertex(x-140,250+40*y);
        vertex(x-140,265+40*y);
        vertex(x-137,280+40*y);
        endShape();
        
        // Bus door and windows
        fill(50);
        rect(x-20,240+40*y,10,30);
        for (int i=0; i<5; i++)
        {
          rect(x-40-22*i,240+40*y,15,20);
        }
        
        // Bus wheels
        fill(0);
        circle(x-20,277+40*y,15);
        circle(x-120,277+40*y,15);
        
        x -= 160+(counter*(y+1)*100%27);
        counter++;
      }
      else
      {
        // Car body
        fill((counter*counter*counter+1000+y*y*97)%255,(counter*counter+2089+y*y*97)%255,(counter*counter*counter*counter+3067+y*y*97)%155);
        beginShape();
        vertex(x-10,280+40*y);
        vertex(x-1,275+40*y);
        vertex(x,270+40*y);
        vertex(x-1,265+40*y);
        vertex(x-5,260+40*y);
        vertex(x-15,260+40*y);
        vertex(x-20,250+40*y);
        vertex(x-30,245+40*y);
        vertex(x-45,245+40*y);
        vertex(x-55,250+40*y);
        vertex(x-60,260+40*y);
        vertex(x-65,260+40*y);
        vertex(x-69,265+40*y);
        vertex(x-70,270+40*y);
        vertex(x-69,275+40*y);
        vertex(x-60,280+40*y);
        endShape(CLOSE);
        
        // Car window 1
        fill(50);
        beginShape();
        vertex(x-25,260+40*y);
        vertex(x-28,255+40*y);
        vertex(x-31,252+40*y);
        vertex(x-35,250+40*y);
        vertex(x-35,260+40*y);
        endShape(CLOSE);
        // Car window 2
        beginShape();
        vertex(x-51,260+40*y);
        vertex(x-48,255+40*y);
        vertex(x-45,252+40*y);
        vertex(x-41,250+40*y);
        vertex(x-41,260+40*y);
        endShape(CLOSE);
        
        // Car wheels
        fill(0);
        circle(x-20,277+40*y,15);
        circle(x-50,277+40*y,15);
        
        x -= 90+(counter*(y+1)*100%27);
        counter++;
      }
    }
  }
}

void map_subway(int timer)
{
  rectMode(CORNER);
  
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseX>275 && mouseX<400 && mouseY>410 && mouseY<450)
  {
    fill(255);
    stroke(255);
    strokeWeight(7);
    rect(275,420,125,30);
  }
  
  // Stairs
  fill(60);
  noStroke();
  rect(275,420,125,30);
  fill(80);
  for (int i=0; i<5; i++)
  {
    fill(95-7*i);
    rect(275+5*i,425+5*i,5,25-5*i);
  }
  
  // Railing
  stroke(0);
  strokeWeight(3);
  noFill();
  beginShape();
  vertex(275,450);
  vertex(275,435);
  vertex(300,435);
  vertex(300,450);
  vertex(300,435);
  vertex(325,435);
  vertex(325,450);
  vertex(325,435);
  vertex(350,435);
  vertex(350,450);
  vertex(350,435);
  vertex(375,435);
  vertex(375,450);
  vertex(375,435);
  vertex(400,435);
  vertex(400,450);
  vertex(400,405);
  vertex(375,405);
  vertex(375,420);
  vertex(375,405);
  vertex(350,405);
  vertex(350,420);
  vertex(350,405);
  vertex(325,405);
  vertex(325,420);
  vertex(325,405);
  vertex(300,405);
  vertex(300,420);
  vertex(300,405);
  vertex(275,405);
  vertex(275,420);
  endShape();
}

void map_lights(int timer)
{
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseY>200 && mouseY<250)
  {
    noFill();
    stroke(255);
    strokeWeight(3);
    rect(1,220,798,30);
  }
  
  // Lights
  int x = 37;
  strokeWeight(7);
  while (x < 850)
  {
    stroke(160);
    line(x,160,x,230);
    stroke(255);
    line(x,160,x+5,160);
    x += 73;
  }
  
}

void map_houses(int timer)
{
  boolean hover = false;
  
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseX%200<100 && mouseY>50 && mouseY<200)
  {
    hover = true;
  }
  
  rectMode(CORNER);
  strokeWeight(3);
  for (int i=0; i<4; i++)
  {
    // House
    if (hover)
    {
      stroke(255);
    }
    else
    {
      stroke(100+tan(i)*i*10,tan(i)*i*3,0);
    }
    fill(200+tan(i)*i*10,tan(i)*i*3,0);
    // Front wall
    rect(200*i,160-tan(i)*5,98,60+tan(i)*5);
    triangle(200*i,161-tan(i)*5,200*i+49,135-tan(i)*5,200*i+98,161-tan(i)*5);
    fill(100+tan(i)*i*5,50,15);
    if (hover)
    {
      stroke(255);
    }
    else
    {
      stroke(50+tan(i)*i*5,25,5);
    }
    // Roof
    quad(200*i+98,135-tan(i)*5,200*i+49,110-tan(i)*5,200*i+49,135-tan(i)*5,200*i+98,160-tan(i)*5);
    quad(200*i,135-tan(i)*5,200*i+49,110-tan(i)*5,200*i+49,135-tan(i)*5,200*i,160-tan(i)*5);
    
    // Windows
    fill(100,150,240+tan(i)*i*10);
    stroke(75,125,200+tan(i)*i*10);
    rect(200*i+10,185,15,20);
    rect(200*i+75,185,15,20);
    // Door
    fill(150+tan(i)*i*5,80,20);
    stroke(100+tan(i)*i*5,50,15);
    rect(200*i+40,185,20,35);
  }
}

void map_apartments(int timer)
{
  boolean hover = false;
  // Logic, check if mouse is hovering and then highlight drawing
  if (mouseX%200>100 && mouseY>0 && mouseY<200)
  {
    hover = true;
  }
  
  rectMode(CORNER);
  strokeWeight(3);
  for (int i=0; i<4; i++)
  {
    // Building
    if (hover)
    {
      stroke(255);
    }
    else
    {
      stroke(100+tan(i*i)*i*10,tan(i*i)*i*3,0);
    }
    fill(200+tan(i*i)*i*10,tan(i*i)*i*3,0);
    // Front wall
    rect(200*i+100,40-tan(i*i)*5,98,180+tan(i*i)*5);
    fill(100+tan(i*i)*i*5,50,15);
    if (hover)
    {
      stroke(255);
    }
    else
    {
      stroke(50+tan(i*i)*i*5,25,5);
    }
    // Roof
    rect(200*i+100,15-tan(i*i)*5,98,25);
    
    // Windows
    fill(100,150,240+tan(i*i)*i*10);
    stroke(75,125,200+tan(i*i)*i*10);
    for (int j=0; j<4; j++)
    {
      rect(200*i+110,185-40*j,15,20);
      rect(200*i+142.5,185-40*j,15,20);
      rect(200*i+175,185-40*j,15,20);
    }
    // Door
    fill(150+tan(i*i)*i*5,80,20);
    stroke(100+tan(i*i)*i*5,50,15);
    rect(200*i+140,185,20,35);
  }
}

void electric_appliances(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 1025) { global_timer = 0; current_slide = "electric_devices"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "what_is_electricity_used_for";
    }
    else if (mouseX>655 && mouseX<755 && mouseY>417 && mouseY<463)
    {
      // Next button clicked
      global_timer = 0;
      current_slide = "electric_devices";
    }
  }
  
  // Background, of a room in a house
  background(10,10,0);
  noStroke();
  fill(20,10,0);
  triangle(0,700,0,300,250,300);
  triangle(800,700,800,300,550,300);
  fill(30,20,0);
  quad(0,700,250,300,550,300,800,700);
  fill(30,20,10);
  stroke(20,10,0);
  strokeWeight(10);
  rectMode(CORNER);
  rect(150,75,100,150);
  rect(550,75,100,150);
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("Electric Appliances",400,100);
  
  // Buttons
  textSize(30);
  text("MENU",95,70);
  text("MAP",95,450);
  text("NEXT",705,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  rect(705,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25 && timer < 625)
  {
    textAlign(LEFT);
    text("All of the appliances in your house probably use electricity,\nonly old stoves use gas. In ranges and toasters, electricity\nis converted into heat using a heating element,\nand cooks your food",50,130);
  }
  if (timer > 225)
  {
    textAlign(RIGHT);
    text("Microwave ovens use electricity to generate tons of\nmicrowaves, which bounce off of the food and warm it up",750,250);
  }
  if (timer > 425 && timer < 625)
  {
    textAlign(LEFT);
    text("Refridgerators use electricity\nto move heat from inside\nthe fridge to the outside,\nkeeping the inside cold",50,310);
  }
  if (timer > 625)
  {
    textAlign(LEFT);
    text("Refridgerators use electricity to move heat from inside\nthe fridge to the outside, keeping the inside cold",50,310);
    textAlign(RIGHT);
    text("Electricity is converted into movement by dishwashers,\nwashing and drying machines, to spin the drums and wash/dry clothes/dishes",750,370);
  }
  
  // Animations
  if (timer < 25) {}
  else if (timer < 225)
  {
    range_toaster(timer);
  }
  else if (timer < 425)
  {
    microwave(timer);
  }
  else if (timer < 625)
  {
    refridgerator(timer);
  }
  else if (timer < 825)
  {
    dishwasher(timer);
  }
  else
  {
    washer_dryer(0);
  }
}

void range_toaster(int timer)
{
  // Toaster
  rectMode(CORNER);
  noStroke();
  fill(150);
  rect(230,300,80,150,30,30,30,30);
  fill(200);
  rect(230,300,80,120,30,30,30,30);
  fill(100);
  rect(249,315,12,85);
  rect(279,315,12,85);
  rect(255,425,30,15,5,5,5,5);
  stroke(255,100,0);
  strokeWeight(2);
  // Heating elements
  line(252,320,252,395);
  line(257,320,257,395);
  line(282,320,282,395);
  line(287,320,287,395);
  
  // Range
  noStroke();
  fill(50);
  rect(450,300,150,180);
  fill(100);
  rect(450,300,150,120);
  fill(50);
  // Elements
  ellipse(487,330,60,48);
  ellipse(487,390,50,40);
  ellipse(557,330,50,40);
  ellipse(557,390,40,36);
  stroke(200,0,0);
  strokeWeight(2);
  noFill();
  // Heating elements
  for (int i=1; i<4; i++)
  {
    ellipse(487,390,15*i,12*i);
    ellipse(557,330,15*i,12*i);
  }
  stroke(100);
  strokeWeight(15);
  line(480,450,570,450);
  
  // Heat
  stroke(100);
  strokeWeight(2);
  int step = (timer/5) % 70;
  for (int i=-1; i<2; i++)
  {
    curve(205+10*i,400-step,255+10*i,350-step,255+10*i,300-step,305+10*i,250-step);
    step += 27*i*tan(i);
    step %= 70;
    curve(235+10*i,400-step,285+10*i,350-step,285+10*i,300-step,335+10*i,250-step);
    step += 27*i*tan(i);
    step %= 70;
    curve(437+10*i,440-step,487+10*i,390-step,487+10*i,340-step,537+10*i,290-step);
    step += 27*i*tan(i);
    step %= 70;
    curve(507+10*i,380-step,557+10*i,330-step,557+10*i,280-step,607+10*i,230-step);
    step += 27*i*tan(i);
    step %= 70;
  }
}

void microwave(int timer)
{
  // Microwave
  rectMode(CORNER);
  noStroke();
  fill(200);
  rect(300,300,200,120);
  fill(30);
  rect(303,325,194,70);
  fill(220);
  rect(325,335,110,50);
  fill(100);
  for (int x=0; x<3; x++)
  {
    for (int y=0; y<4; y++)
    {
      if (x==1 || y!=3)
      {
        // Buttons
        circle(450+15*x,335+15*y,10);
      }
    }
  }
}

void refridgerator(int timer)
{
  // Refridgerator
  noStroke();
  fill(150);
  rectMode(CORNER);
  rect(425,300,100,170);
  fill(50);
  rect(425,410,100,5);
  stroke(200);
  strokeWeight(10);
  // Handles
  line(440,320,440,390);
  line(440,430,500,430);
}

void dishwasher(int timer)
{
  // Dishwasher
  noStroke();
  fill(100);
  rectMode(CORNER);
  rect(175,120,100,100);
  fill(50);
  rect(175,135,100,10);
  rect(175,210,100,10);
  
  // Washer
  noStroke();
  fill(200);
  rectMode(CORNER);
  rect(375,120,80,100);
  stroke(150);
  fill(50);
  strokeWeight(9);
  circle(415,170,60);
  
  // Dryer
  noStroke();
  fill(200);
  rectMode(CORNER);
  rect(575,120,80,100);
  stroke(150);
  fill(50);
  strokeWeight(9);
  circle(615,170,60);
}

void washer_dryer(int timer)
{
  // Dishwasher
  noStroke();
  fill(100);
  rectMode(CORNER);
  rect(175,120,100,100);
  fill(50);
  rect(175,135,100,10);
  rect(175,210,100,10);
  
  // Washer
  noStroke();
  fill(200);
  rectMode(CORNER);
  rect(375,120,80,100);
  stroke(150);
  fill(50);
  strokeWeight(9);
  circle(415,170,60);
  
  // Dryer
  noStroke();
  fill(200);
  rectMode(CORNER);
  rect(575,120,80,100);
  stroke(150);
  fill(50);
  strokeWeight(9);
  circle(615,170,60);
}

void electric_devices(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 1025) { global_timer = 0; current_slide = "electricity_outdoors"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "what_is_electricity_used_for";
    }
    else if (mouseX>655 && mouseX<755 && mouseY>417 && mouseY<463)
    {
      // Next button clicked
      global_timer = 0;
      current_slide = "electric_appliances";
    }
  }
  
  // Background, of a tv room
  background(0);
  fill(10);
  stroke(20);
  strokeWeight(20);
  rectMode(CORNER);
  rect(225,50,350,200);
  noStroke();
  fill(20,10,0);
  rect(0,300,800,200);
  fill(20,20,0);
  quad(200,500,250,300,550,300,600,500);
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("Electric Devices",400,100);
  
  // Buttons
  textSize(30);
  text("MENU",95,70);
  text("MAP",95,450);
  text("BACK",705,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  rect(705,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25)
  {
    textAlign(LEFT);
    text("Your house contains many devices which all use electricity\nto function",50,130);
  }
  if (timer > 225)
  {
    textAlign(RIGHT);
    text("Your computer and phone use electricity to process input\nfrom you and display what you want on the screen",750,185);
  }
  if (timer > 425)
  {
    textAlign(LEFT);
    text("Clocks use electricity to move their hands, and show the\ncorrrect time",50,250);
  }
  
  // Animations
  if (timer < 125) {}
  else if (timer < 425)
  {
    computer_and_phone(timer);
  }
  else
  {
    clock(timer);
  }
}

void computer_and_phone(int timer)
{
  // Computer
  fill(0,0,150);
  stroke(50);
  strokeWeight(10);
  rectMode(CORNER);
  //Monitor
  rect(225,290,130,90);
  fill(10);
  stroke(10);
  // Keyboard
  rect(230,400,120,30);
  // Mouse
  rect(380,400,20,35,20,20,20,20);
  fill(30);
  stroke(30);
  // Desktop
  rect(380,280,50,100);
  // Phone Case
  rect(600,300,40,80);
  noStroke();
  // Mouse Wheel
  rect(387,410,6,10,3,3,3,3);
  // Desktop buttons
  fill(10);
  for (int i=0; i<3; i++)
  {
    circle(390+14*i,290,8);
  }
  
  // Phone
  fill(0,0,150);
  rect(600,300,40,80);
}

void clock(int timer)
{
  if (timer < 0) // For Slide Selection, go to a different place
  {
    pushMatrix();
    translate(200,-140);
  }
  
  // Clock
  fill(230);
  stroke(50);
  strokeWeight(9);
  circle(400,380,150);
  strokeWeight(4);
  
  // Clock hands
  if (timer > 0)
  {
    line(400+35*cos(timer/1800.0),380+35*sin(timer/1800.0),400,380);
    line(400+65*cos(timer/30.0),380+65*sin(timer/30.0),400,380);
  }
  else
  {
    line(400+35*cos(-timer/1800.0),380+35*sin(-timer/1800.0),400,380);
    line(400+65*cos(-timer/30.0),380+65*sin(-timer/30.0),400,380);
  }
  
  // Clock makings
  for (float angle=0; angle<360; angle+=30)
  {
    if (angle%90 == 0)
    {
      strokeWeight(4);
    }
    else
    {
      strokeWeight(2);
    }
    line(400+70*cos(radians(angle)),380+70*sin(radians(angle)),400+55*cos(radians(angle)),380+55*sin(radians(angle)));
  }
  
  if (timer < 0) // For Slide Selection, go to a different place
  {
    popMatrix();
  }
}

void electricity_outdoors(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 1025) { global_timer = 0; current_slide = "summary"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "what_is_electricity_used_for";
    }
  }
  
  // Background, of an empty street with lights
  background(0,0,20);
  noStroke();
  fill(0,15,0);
  triangle(0,700,0,200,300,200);
  triangle(800,700,800,200,500,200);
  fill(30);
  quad(0,700,300,200,500,200,800,700);
  strokeWeight(10);
  for (int i=0; i<8; i++)
  {
    stroke(20);
    line(290-23*i,110+40*i,290-23*i,200+40*i);
    line(510+23*i,110+40*i,510+23*i,200+40*i);
    curve(240-23*i,200+40*i,290-23*i,120+40*i,340-23*i,100+40*i,440-23*i,100+40*i);
    curve(560+23*i,200+40*i,510+23*i,120+40*i,460+23*i,100+40*i,360+23*i,100+40*i);
    stroke(40);
    line(330-23*i,105+40*i,340-23*i,105+40*i);
    line(470+23*i,105+40*i,460+23*i,105+40*i);
  }
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("Electricity Outdoors",400,100);
  
  // Buttons
  textSize(30);
  text("MENU",95,70);
  text("MAP",95,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25)
  {
    textAlign(LEFT);
    text("Electricity is used everywhere outside, too",50,130);
  }
  if (timer > 125)
  {
    textAlign(RIGHT);
    text("Street lights turn electricity into light, illuminating the\nstreet for cars and pedestrians at night",750,165);
  }
  if (timer > 375)
  {
    textAlign(LEFT);
    text("Buses, subways, and some cars are powered by electricity,\nwhich makes the wheels turn and lets you travel to different\nplaces",50,230);
  }
  
  // Animations
  if (timer < 125) {}
  else if (timer < 375)
  {
    street_lights(timer);
  }
  else if (timer < 825)
  {
    bus_and_subway(timer);
  }
  else
  {
    bus_and_subway(825);
  }
}

void street_lights(int timer)
{
  if (timer < 0) // For Slide Selection, go to a different place
  {
    // Giant light
    strokeWeight(20);
    stroke(150);
    line(500,220,500,400);
    curve(400,400,500,240,600,200,800,200);
    stroke(255);
    line(580,210,600,210);
  }
  else
  {
    // Ground
    rectMode(CORNER);
    noStroke();
    fill(200);
    rect(0,370,800,40);
    
    // Lights
    strokeWeight(10);
    for (int x = 100; x<800; x+=160)
    {
      stroke(150);
      line(x,310,x,400);
      curve(x-50,400,x,320,x+50,300,x+150,300);
      stroke(255);
      line(x+40,305,x+50,305);
    }
  }
}

void bus_and_subway(int timer)
{
  // Ground
  rectMode(CORNER);
  noStroke();
  fill(200);
  rect(0,370,800,40);
  
  // Cars and Buses
  int x = (int)(800+timer*(1+0.2));
  int counter = 0;
  while ( x > -40)
  {
    if (counter%(8)==1)
    {
      // Bus body
      fill((counter*counter*counter+1000)%255,(counter*counter+2089)%255,(counter*counter*counter*counter+3067)%155);
      beginShape();
      vertex(x-3,400);
      vertex(x,385);
      vertex(x,370);
      vertex(x-6,355);
      vertex(x-137,355);
      vertex(x-140,370);
      vertex(x-140,385);
      vertex(x-137,400);
      endShape();
      
      // Bus door and windows
      fill(50);
      rect(x-20,360,10,30);
      for (int i=0; i<5; i++)
      {
        rect(x-40-22*i,360,15,20);
      }
      
      // Bus wheels
      fill(0);
      circle(x-20,397,15);
      circle(x-120,397,15);
      
      x -= 160+(counter*100%27);
      counter++;
    }
    else
    {
      // Car body
      fill((counter*counter*counter+1000)%255,(counter*counter+2089)%255,(counter*counter*counter*counter+3067)%155);
      beginShape();
      vertex(x-10,400);
      vertex(x-1,395);
      vertex(x,390);
      vertex(x-1,385);
      vertex(x-5,380);
      vertex(x-15,380);
      vertex(x-20,370);
      vertex(x-30,365);
      vertex(x-45,365);
      vertex(x-55,370);
      vertex(x-60,380);
      vertex(x-65,380);
      vertex(x-69,385);
      vertex(x-70,390);
      vertex(x-69,395);
      vertex(x-60,400);
      endShape(CLOSE);
      
      // Car window 1
      fill(50);
      beginShape();
      vertex(x-25,380);
      vertex(x-28,375);
      vertex(x-31,372);
      vertex(x-35,370);
      vertex(x-35,380);
      endShape(CLOSE);
      // Car window 2
      beginShape();
      vertex(x-51,380);
      vertex(x-48,375);
      vertex(x-45,372);
      vertex(x-41,370);
      vertex(x-41,380);
      endShape(CLOSE);
      
      // Car wheels
      fill(0);
      circle(x-20,397,15);
      circle(x-50,397,15);
      
      x -= 90+(counter*100%27);
      counter++;
    }
  }
}

void summary(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 825) { global_timer = 0; current_slide = "credits_and_goodbye"; } // Go to next slide after a certain amount of time
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>37 && mouseY<83)
    {
      // Menu button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
    else if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "what_is_electricity_used_for";
    }
    else if (mouseX>655 && mouseX<755 && mouseY>417 && mouseY<463)
    {
      // Next button clicked
      global_timer = 0;
      current_slide = "credits_and_goodbye";
    }
  }
  
  // Background
  background(0);
  fill(10,10,0);
  noStroke();
  rectMode(CORNER);
  for (int i=0; i<8; i++)
  {
    rect(100*i,0,50,500);
  }
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("Summary",400,100);
  
  // Buttons
  textSize(30);
  text("MENU",95,70);
  text("BACK",95,450);
  text("NEXT",705,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,60,100,45);
  rect(95,440,100,45);
  rect(705,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25)
  {
    textAlign(LEFT);
    text("Electricity is the flow of electrons through metal\nconductors to power various appliances.",50,150);
  }
  if (timer > 225)
  {
    textAlign(RIGHT);
    text("Power plants create electricity which is sent along wires\nto the consumer, which uses the energy to do work",750,215);
  }
  if (timer > 425)
  {
    textAlign(LEFT);
    text("Electricity powers almost everything, and is\nused to prouce light, heat, and motion",50,280);
  }
  
  // Animations
  if (timer < 25) {}
  else if (timer < 225)
  {
    conductors_example(timer);
  }
  else if (timer < 425)
  {
    natural_gas_plant(timer);
    electric_poles(timer);
  }
  else if (timer < 625)
  {
    // Lights and stuff
  }
  else
  {
    // Lights and stuff
  }
}

void credits_and_goodbye(int timer)
{
  // Logic, find out what was clicked and react accordingly
  if (timer >= 425) { global_timer = 0; current_slide = "main_menu"; }
  if (click)
  {
    // Mouse clicked
    click = false;
    if (mouseX>45 && mouseX<145 && mouseY>417 && mouseY<463)
    {
      // Back button clicked
      global_timer = 0;
      current_slide = "summary";
    }
    else if (mouseX>655 && mouseX<755 && mouseY>417 && mouseY<463)
    {
      // Next button clicked
      global_timer = 0;
      current_slide = "main_menu";
    }
  }
  
  // Background
  background(0);
  
  // Title
  fill(255,255,0);
  noStroke();
  textSize(40);
  textAlign(CENTER);
  text("Credits And Goodbye",400,100);
  
  // Buttons
  textSize(30);
  text("BACK",95,450);
  text("MENU",705,450);
  
  // Button Outlines
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(255);
  rect(95,440,100,45);
  rect(705,440,100,45);
  
  // Content
  fill(255);
  textSize(25);
  if (timer > 25)
  {
    textAlign(CENTER);
    text("All graphics and content of this\nprogram were created by\nVictor Sarca",400,170);
  }
  if (timer > 125)
  {
    textAlign(CENTER);
    text("Thank you for reading and I\nhope you enjoyed this storybook",400,300);
  }
  if (timer > 225)
  {
    textAlign(CENTER);
    text("Goodbye!",400,400);
  }
}
