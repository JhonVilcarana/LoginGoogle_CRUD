class Post {
  String title;
  String description;
  Post(this.title, this.description);
  static List<Post> post() {
    return [
      Post("La violencia no cesa",
          "Hay ciertas señales que deben a encender todas las alarmas."),
      Post("La violencia no cesa",
          "Hay ciertas señales que deben a encender todas las alarmas."),
      Post("La violencia no cesa",
          "Hay ciertas señales que deben a encender todas las alarmas."),
      Post("La violencia no cesa",
          "Hay ciertas señales que deben a encender todas las alarmas."),
      Post("La violencia no cesa",
          "Hay ciertas señales que deben a encender todas las alarmas."),
    ];
  }
}
