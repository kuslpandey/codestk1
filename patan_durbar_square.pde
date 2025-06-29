PImage img, sorted;
int[] pixel_array;

void setup() {
  size(1224, 344); //Definiere die Größe des Zeichenbereichs
  img = loadImage("chup.jpeg"); //Lade ein Bild
  colorMode(HSB, 360, 100, 100); // Setze den Farbmodus auf HSB
  sorted = createImage(img.width, img.height, RGB); //Erstelle ein neues Bildobjekt mit der gleichen Größe wie ursprüngliche Bild
  sorted.loadPixels();//Lade die Pixel des neuen Bildobjekts
  sorted = img.get(); //Kopiere das ursprüngliche Bildobjekt in das neue Bildobjekt
}

void draw() {
  image(img, 0, 0); //Zeige das ursprüngliche Bildobjekt
  image(sorted, 612, 0);// Zeige das sortierte Bildobjekt neben dem ursprünglichen Bildobjekt
  pixel_array = sorted.pixels; //Speichere die Pixel des sortierten Bildobjekts in einem Array
  quicksort(pixel_array, 0, pixel_array.length - 1); //Sortiere das Array mit dem QuickSort Algorithmus
  sorted.updatePixels();// Aktualisiere das sortierte Bildobjekt mit dem QuickSort Algorithmus
  sorted.save("outputImage.jpeg"); // Speichere das sortierte Bild
}

void quicksort(int[] arr, int left, int right) {  
  if (left >= right) { // wenn linker Index größer oder gleich dem rechten Index ist,stoppe die Rekursion
    return;
  }

  float pivot = medianOfThree(arr, left, right); // Wähle einen Pivotwert mit der Median of three Methode
  int i = left - 1; // Setze den linken Index um eins zurück
  int j = right + 1; // Setzte den rechten Index um eins nach vorne

  while (true) {  // Wiederhole bis die Schleife unterbrochen sind
    do {
      i++; // Erhöhe den linken Index um eins
    } while (hue(arr[i]) < pivot);

    do {
      j--;
    } while (hue(arr[j]) > pivot); // Wiederhole solange der Farbwert des Pixels kleiner als der Pivotwert ist

    if (i >= j) {
      break; //stoppe die Schleife
    }

    swap(arr, i, j); //Vertausche das Element an Position i mit element j
  }

  quicksort(arr, left, j);
  quicksort(arr, j + 1, right);
}

float medianOfThree(int[] arr, int left, int right) {
  int mid = (left + right) / 2; //Berechne den mittieren Index des zu sortierenden Arrays
  float a = hue(arr[left]);// Bestimmte die Farbwerte der 3 ausgewählten Element des Arrays
  float b = hue(arr[mid]); // hue()Entnimmt den Farbtonwert aus einer Farbe
  float c = hue(arr[right]);

  if (a < b) { //wenn a kleiner als b und
    if (b < c) { // b kleiner als c ist, gibt wert von b
      return b;
    } else if (a < c) { // wenn a kleiner als c ist
   
      return c; // gibt c
    } else {
      return a; // sonst gibt a
    }
  } else {
    if (a < c) {
      return a;
    } else if (b < c) {
      return c;
    } else {
      return b;
    }
  }
}

void swap(int[] arr, int i, int j) { // tauscht die werte von 2 elementen eines arrays aus
  int temp = arr[i]; // Der Wert des Elements an index i in einer temporären Variablen "temp" ist speichert
  arr[i] = arr[j]; //Überschreibt den Wert von arr[i] mit Wert von arr[j]
  arr[j] = temp;// Überschreibt den Wert von arr[j] mit Wert von "temp"
}
