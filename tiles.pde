
/* ===================
 Global variables:
 numCols, numRows: number of tiles hroizontally and vertically
 rectWidth, rectHeight: size of each individual tile.
 count: needed to cycle through functions in draw()
 =================== */
int numRows;
int numCols;
int rectWidth;
int rectHeight;
int count;

/* ===================
 Set the global variables to reasonable values.
 Set the screen size based on the global variable values.
 
 NOTE this is not setup. In order to use variables for size()
 this function must be called settings()
 =================== */
void settings() {
  numRows = 20;
  numCols = 20;
  rectWidth = 20;
  rectHeight = 20;
  size(500, 500);
}


/* ===================
  You do not need to modify this function.
  You may change the frameRate for testing;
 =================== */
void setup() {
  frameRate(1);
  count = 0;
}

/* ===================
  DO NOT MODIFY DRAW.
  
  This will test each of the functions below.
  
  You may change the fill color if you like.
 =================== */
void draw() {
  fill(255);
  if (count < 5 ) {
    tile();
  } 
  else if (count < 10) {
    alternateRows();
  }
  else if (count < 15) {
    alternateCols();
  }
  else if (count < 20) {
    marksTheSpot();
  }
  else if (count < 25) {
    checkerboard();
  }
  count = (count + 1) % 25;
}

/* ===================
  Create a grid of rectangles using the global variables.
 =================== */
void tile() {
  int x = 0;
  int y = 0;
  int newx = rectWidth;
  int newy = rectHeight;
  while (width*height/(rectWidth*rectHeight)<numRows*numCols){
    rect(x, y, newx, newy);
  }

}

/* ===================
  Create a grid of rectangles using the global variables.
  
  fill color should alternate every other ROW.
 =================== */
void alternateRows() {
}

/* ===================
  Create a grid of rectangles using the global variables.
  
  fill color should alternate every other COLUMN.
 =================== */
void alternateCols() {
}

/* ===================
  Create a grid of rectangles using the global variables.
  
  fill color should create a checkerboard pattern.
 =================== */
void checkerboard() {
}

/* ===================
  Create a grid of rectangles using the global variables.
  
  fill color should create an X pattern.
  this will only work if numRows == numCols
 =================== */
void marksTheSpot() {
}
