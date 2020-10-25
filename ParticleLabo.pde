class ParticleLabo extends ParticlePhysic
{
  final static float probabilitySpawn = 0.9f;

  color colorFinal;

  ParticleLabo()
  {
    super();

    colorDiffuse = #000000;
    colorFinal   = #FFFF9A;

    lifetime = 3.5f;

    mass = 0.5f;
    speed = 0.0f;
    speedMax = 1.0f;

    noise.set(0.5f, 0.5f, 0.0f);
  }

  void init()
  {
    super.init();

    ps.space.x = width;
    ps.space.y = 80;


    position.x = ps.origin.x + width/2 - ps.space.x / 2.0f;
    position.y = height/2;

    force.set(0.0f, 0.0f, 0.0f);
    acceleration.set(0.0f, 0.0f, 0.0f);
    velocity.set(0.0f, 0.0f, 0.0f);
    applyForce(random(-noise.x, noise.x), random(-noise.y, noise.y), 0.0f);
  }

  void update()
  {
    applyForce(random(-noise.x, noise.x), random(-noise.y, noise.y), 0.0f);
    super.update();
  }

  void render()
  {
    fill(
      lerpColor(colorDiffuse, colorFinal, timeActive / (lifetime * 1000.0f)), 
      int(map(timeActive, 0.0f, lifetime * 1000.0f, 192.0f, 0.0f)));

    ellipse(
      position.x, 
      position.y, 
      int(map(timeActive, 0.0f, lifetime * 1000.0f, 16.0f, 64.0f)), 
      int(map(timeActive, 0.0f, lifetime * 1000.0f, 16.0f, 64.0f)));
  }
}
