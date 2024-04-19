class Estrellas {
  int cantidad;
  int[] x;
  int[] y; 
  
  Estrellas(int cantidad) {
    this.cantidad = cantidad;
    x = new int[cantidad];
    y = new int[cantidad];
    
    for (int estrella = 0; estrella < cantidad; estrella++) {
      x[estrella] = int(random(width));
      y[estrella] = int(random(height/2)); 
    }
  }
  
  void mostrar() {
    fill(#FFFFFF);
    noStroke();
    for (int estrella = 0; estrella < cantidad; estrella++) {
      ellipse(x[estrella], y[estrella], 5, 5);
    }
  }
}
