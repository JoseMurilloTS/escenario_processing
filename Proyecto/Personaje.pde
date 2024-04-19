class Personaje {
  float x, y;
  PImage imagen;
  
  Personaje(float x, float y, PImage imagen) {
    this.x = x;
    this.y = y;
    this.imagen = imagen;
  }
  
  void mover (float mouseX, float mouseY) {
    this.x = mouseX;
    this.y = mouseY;
  }
  
  void mostrar() {
    imageMode(CENTER);
    image(imagen, x, y);
  }
}
