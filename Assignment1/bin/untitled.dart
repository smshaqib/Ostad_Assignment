void main(){

  Media m = new Media();
  Song s = new Song("Avijit");

  m.play();
  s.play();

}

class Media{

  void play(){
    print("Playing media...");
  }
}

class Song extends Media{

  String artist='';

  Song (String artist) {
    this.artist = artist;
  }

  void play(){
    print("Playing song by $artist...");
  }

}
