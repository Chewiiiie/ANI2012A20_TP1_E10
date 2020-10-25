import java.util.Iterator;

int count = 500;

boolean isPSActive1 = false;

ParticleSystem ps1;

void InitParticles() {
  ps1 = new ParticleSystem(count);
}

void fade(float decay)
{
  rectMode(CORNER);
  noStroke();
  fill(0, decay);
  rect(0, 0, width, height);
}
