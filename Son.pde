//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

import processing.sound.*;

Sound s;
float v = 1.0f;

SoundFile loophorror;
SoundFile disappear;
SoundFile jingleWin;
SoundFile pickup;

void InitSon() {
  loophorror = new SoundFile(this, "loophorror.mp3");
  disappear = new SoundFile(this, "disappear.aiff");
  jingleWin = new SoundFile(this, "jingle-win.wav");
  pickup = new SoundFile(this, "pickup.wav");

  loophorror.loop();
  s = new Sound(this);
  s.volume(v);
}
