/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:544590:
  appc.background(230);
} //_CODE_:window1:544590:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:463682:
  paused = !paused;
  
  if (paused){
    button1.setText("Resume");
  }
  else {
    button1.setText("Pause");
  }
} //_CODE_:button1:463682:

public void difficultyChange(GCustomSlider source, GEvent event) { //_CODE_:getDifficulty:897415:
  difficulty = getDifficulty.getValueI();
} //_CODE_:getDifficulty:897415:

public void livesChange(GSlider source, GEvent event) { //_CODE_:Lives:537091:
  lives = Lives.getValueI();
} //_CODE_:Lives:537091:

public void resetTrue(GButton source, GEvent event) { //_CODE_:button2:551383:
  reset();
} //_CODE_:button2:551383:

public void Easy(GButton source, GEvent event) { //_CODE_:button3:386511:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button3:386511:

synchronized public void win_draw2(PApplet appc, GWinData data) { //_CODE_:window2:283432:
  appc.background(230);
} //_CODE_:window2:283432:

public void startGame(GButton source, GEvent event) { //_CODE_:Start:585618:
  start = !start;
} //_CODE_:Start:585618:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 300, 300, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  button1 = new GButton(window1, 4, 150, 79, 30);
  button1.setText("Pause");
  button1.addEventHandler(this, "button1_click1");
  getDifficulty = new GCustomSlider(window1, 2, 30, 294, 40, "red_yellow18px");
  getDifficulty.setLimits(10, 1, 100);
  getDifficulty.setNbrTicks(100);
  getDifficulty.setStickToTicks(true);
  getDifficulty.setShowTicks(true);
  getDifficulty.setNumberFormat(G4P.INTEGER, 0);
  getDifficulty.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  getDifficulty.setOpaque(false);
  getDifficulty.addEventHandler(this, "difficultyChange");
  Lives = new GSlider(window1, 3, 97, 294, 40, 10.0);
  Lives.setLimits(10, 1, 50);
  Lives.setNbrTicks(50);
  Lives.setStickToTicks(true);
  Lives.setShowTicks(true);
  Lives.setNumberFormat(G4P.INTEGER, 0);
  Lives.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  Lives.setOpaque(false);
  Lives.addEventHandler(this, "livesChange");
  button2 = new GButton(window1, 98, 150, 80, 30);
  button2.setText("Reset");
  button2.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  button2.addEventHandler(this, "resetTrue");
  label1 = new GLabel(window1, 2, 5, 80, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Difficulty");
  label1.setOpaque(false);
  label2 = new GLabel(window1, 3, 74, 80, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Lives");
  label2.setOpaque(false);
  label3 = new GLabel(window1, 5, 192, 80, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Set difficulties");
  label3.setOpaque(false);
  button3 = new GButton(window1, 4, 219, 80, 30);
  button3.setText("Easy");
  button3.addEventHandler(this, "Easy");
  window2 = GWindow.getWindow(this, "Window title", 640, 0, 100, 50, JAVA2D);
  window2.noLoop();
  window2.setActionOnClose(G4P.CLOSE_WINDOW);
  window2.addDrawHandler(this, "win_draw2");
  Start = new GButton(window2, 11, 11, 80, 30);
  Start.setText("Start");
  Start.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Start.addEventHandler(this, "startGame");
  window1.loop();
  window2.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GButton button1; 
GCustomSlider getDifficulty; 
GSlider Lives; 
GButton button2; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GButton button3; 
GWindow window2;
GButton Start; 
