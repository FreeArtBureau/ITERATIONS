////////////////////////// FUNCTIONS ////////////////////
/*
 * @param :
 * n = number of iterations
 * x, y = coordinate positions
 * a = angle for tree
 * branchRadius = length of each branch 
 */
void tree(int n, float x, float y, float a, float branchRadius) {  
  float bendAngle   = radians(0);
  float branchAngle = radians(45);
  float branchRatio = 0.76; 
  
  // the elegance of this solution is found here to calculate x, y positions
  // as opposed to using rotate & matrix transformations

  float cx = x + cos(a) * branchRadius;
  float cy = y + sin(a) * branchRadius;

  stroke(217);
  strokeWeight(2);
  line(x, y, cx, cy);
  
  if (n == 0) return;

  //tree(n-1, cx, cy, a + bendAngle - branchAngle, branchRadius * branchRatio);
  //tree(n-1, cx, cy, a + bendAngle + branchAngle, branchRadius * branchRatio);
  
  // Rajouter d'autre branches ?
  //tree(n-1, cx, cy, a + bendAngle,branchRadius * (1 - branchRatio));
  //tree(n-1, cx, cy, -a + bendAngle, -branchRadius * (1 - branchRatio));
}
