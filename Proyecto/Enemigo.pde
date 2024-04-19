class Enemigo {
  float x; 
  float velocidad;
  PImage imagen;
  
  Enemigo(float x, float velocidad, PImage imagen) {
    this.x = x;
    this.velocidad = velocidad;
    this.imagen = imagen;
  }
  
  void mover() {
    x += velocidad;
    
    if (x <= 0 || x >= width-75) {
      velocidad *= -1;
    }
  }
  
  void mostrar() {
    imageMode(CENTER);
    image(imagen, x, 100);
  }
} 
