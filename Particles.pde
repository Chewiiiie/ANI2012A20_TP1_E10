//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

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
