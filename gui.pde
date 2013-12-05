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

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:748235:
  //println("button1 - GButton event occured " + System.currentTimeMillis()%10000000 );
  button1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button2.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  button3.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  button4.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  nivel = 0;
  cargarNivel(nivel);
  mandarMatrix(nivel);
} //_CODE_:button1:748235:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:390231:
  //println("button2 - GButton event occured " + System.currentTimeMillis()%10000000 );
  button1.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  button2.setLocalColorScheme(GCScheme.GREEN_SCHEME); 
  button3.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  button4.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  nivel = 1;
  cargarNivel(nivel);
  mandarMatrix(nivel);
} //_CODE_:button2:390231:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:324062:
  //println("button3 - GButton event occured " + System.currentTimeMillis()%10000000 );
  button1.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  button2.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  button3.setLocalColorScheme(GCScheme.GREEN_SCHEME); 
  button4.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  nivel = 2;
  cargarNivel(nivel);
  mandarMatrix(nivel);
} //_CODE_:button3:324062:

public void button4_click1(GButton source, GEvent event) { //_CODE_:button4:330246:
  //println("button4 - GButton event occured " + System.currentTimeMillis()%10000000 );
  button1.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  button2.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  button3.setLocalColorScheme(GCScheme.BLUE_SCHEME); 
  button4.setLocalColorScheme(GCScheme.GREEN_SCHEME); 
  nivel = 3;
  cargarNivel(nivel);
  mandarMatrix(nivel);
} //_CODE_:button4:330246:

public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:dropList1:272322:
  //println("dropList1 - GDropList event occured " + System.currentTimeMillis()%10000000 );
  int i = dropList1.getSelectedIndex();
  myPort.clear();
  myPort.stop();
  myPort = new Serial(this, Serial.list()[i], 9600);
  myPort.bufferUntil('\n');
} //_CODE_:dropList1:272322:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("LED CUBE TEST");
  button1 = new GButton(this, 360, 191, 80, 30);
  button1.setText("Nivel 0");
  button1.addEventHandler(this, "button1_click1");
  button2 = new GButton(this, 360, 155, 80, 30);
  button2.setText("Nivel 1");
  button2.addEventHandler(this, "button2_click1");
  button3 = new GButton(this, 360, 116, 80, 30);
  button3.setText("Nivel 2");
  button3.addEventHandler(this, "button3_click1");
  button4 = new GButton(this, 360, 78, 80, 30);
  button4.setText("Nivel 3");
  button4.addEventHandler(this, "button4_click1");
  dropList1 = new GDropList(this, 9, 9, 231, 66, 3);
  dropList1.setItems(loadStrings("list_272322"), 0);
  dropList1.addEventHandler(this, "dropList1_click1");
}

// Variable declarations 
// autogenerated do not edit
GButton button1; 
GButton button2; 
GButton button3; 
GButton button4; 
GDropList dropList1; 
