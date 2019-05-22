RasterTrigon trigon;

void setup()
{
  size(800, 800);
  background(color(0, 0, 0));
  trigon = new RasterTrigon();

}

void draw()
{
  int r, g, b;
  Model head = new Model("african_head.obj");
  for (int i = 0; i < head.getFaceCount(); i++) 
  {
    Vec2i p0 = new Vec2i(head.getVtxS(head.getFace(i).face1 - 1).x, head.getVtxS(head.getFace(i).face1 - 1).y);
    Vec2i p1 = new Vec2i(head.getVtxS(head.getFace(i).face2 - 1).x, head.getVtxS(head.getFace(i).face2 - 1).y);
    Vec2i p2 = new Vec2i(head.getVtxS(head.getFace(i).face3 - 1).x, head.getVtxS(head.getFace(i).face3 - 1).y);

    r = 0 + (int)(Math.random() * 255);
    g = 0 + (int)(Math.random() * 255);
    b = 0 + (int)(Math.random() * 255);
    trigon.plotTriangle(p0, p1, p2, color(r, g, b));
  }
}
