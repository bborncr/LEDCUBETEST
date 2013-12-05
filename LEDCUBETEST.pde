// Need G4P library
import g4p_controls.*;
import processing.serial.*;

Serial myPort;

GImageToggleButton[] btnToggle; //crear un array de botones para poder auto-generarlos

int[][] leds = new int[16][4]; //crear un array de 2 dimensiones para guardar los valores de cada led

int nivel = 0; //nivel inicial


public void setup() {
  size(480, 320, JAVA2D);
  createGUI();
  button1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  String portName = "";
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');
  dropList1.setItems(Serial.list(), 0);

  for (int i=0 ; i<17 ; i++) { //generar 16 botones con nombre btnToggle[x]
    btnToggle = new GImageToggleButton[i];
  }

  // inicializar los botones (4 filas 4 columnas)
  for (int j=0 ; j<4 ; j++) {
    for (int i=0 ; i<4 ; i++) {
      btnToggle[i+(j*4)] = new GImageToggleButton(this, 140+(i*50), 50+(50*j), "ledgreen.png", 2, 1);
      btnToggle[i+(j*4)].tag = ""+(i+(j*4));
    }
  }
}

public void draw() {
  background(230);
}

// Event handler para todos los botones
public void handleToggleButtonEvents(GImageToggleButton button, GEvent event) { 
  //println(button + "   State: " + button.stateValue());
  int buttonNumber = int(button.tag);
  leds[buttonNumber][nivel]=button.stateValue();
}

void cargarNivel(int level) {
  for (int i = 0 ; i<16 ; i++) {
    btnToggle[i].stateValue(leds[i][level]);
  }
}
void mandarMatrix(int level) {
   String matrix="";
  for (int i = 0 ; i<16 ; i++) {
    matrix=matrix+leds[i][level];
    }
    //print(level+","+matrix+"\n");
    myPort.clear();
    myPort.write(""+level+","+matrix+"\n");
}

void serialEvent(Serial p) {
  // handle incoming serial data
  String inString = myPort.readStringUntil('\n');
  if(inString != null) {     
    print( inString );   // echo text string from Arduino
  }
}

