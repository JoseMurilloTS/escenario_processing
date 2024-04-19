PImage fondo;
Personaje jugador;
Enemigo enemigo;
Estrellas estrellas;

void setup() {
  size(1280, 720);
  fondo = loadImage("nier_automata.png");
  fondo.resize(width, height);
  
  jugador = new Personaje(width/2, height/2, loadImage("2b.png"));
  enemigo = new Enemigo(width/2, 2, loadImage("maquina.png"));
  
  estrellas = new Estrellas(100);
}

void draw() {
  tint(175, 175, 175, 150);
  imageMode(CORNER);
  image(fondo, 0, 0);
  noTint();

  estrellas.mostrar();
  
  dibujarPiso();

  jugador.mover(mouseX, mouseY);
  jugador.mostrar();
  
  enemigo.mover();
  enemigo.mostrar();
}

void dibujarPiso() {
  int anchoBloque = width / 20;
  int numBloques = width / anchoBloque;
  
  for (int bloque = 0; bloque < numBloques; bloque++) {
    stroke(#636464);
    strokeWeight(4);
    fill(#AFAFAF);
    rect(bloque * anchoBloque, height - 20, anchoBloque, 20); 
  }
}
