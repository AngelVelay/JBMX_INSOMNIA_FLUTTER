import '../../data/providers/login_provider.dart';

//Instanciar la clase LoginProvider
//final loginProvider = new LoginProvider();

class Enviroments {
  static const String API_URL = "http://201.151.139.54:8084";
  static const String IMG_FILE_EVIDENCE =
      "http://201.151.139.54:8084/InsomniaCarsService/api/FileEvidences/type";
  static const String INFO_VEHICLES =
      "http://201.151.139.54:8084/InsomniaCarsService/api/vehicles/paginated/0/1000/";
  static String FileManagerExposeUrl =
      "http://201.151.139.54:8084/FileManager/";

  static const String TOKEN =
      "utbVInUfC4ArXz3mRCb3ikdiZ9AAI1V64pqaBmyKpyth67QewBXvJxx6uLY1FCW1kv9JLLkMTB5SYiajNZuBE3XrKXZgUY-Inx6egC0zITxKN8vsbZTGgt40eQg50sysccyJm90VOyJUtn0mWH6cWKVzCbiuZgsD0X3yVng2Mhua047x6Xg7L6jnPe8HfbajX9y7EBVvlJML5Ly7kZgLBmw458HLl9rbtYmU8mYGe2NzdA3hKMvD-vYKKifvfl7fz5omW0kVR9Qe_-z10Fsp5LNGtwKp3uwTVarhJGAJJsu90HLIGBtgqWsvf9nZulb3JxFaPicMChGQTJZQ1BHCQn0xtNn8aFfczOqaOBPDjapfyV9yL6_p1vamFfNMnlQNJnf_C-ISuaUce_Hogk3zVA";

  static const String GENERATE_TOKEN =
      "http://201.151.139.54:8084/InsomniaCarsService/OAuth/Token";

  static const String API_URL_LOCAL = "http://localhost:9000/";
  static const String IMG_FILE_EVIDENCE_LOCAL =
      "http://localhost:9000/InsomniaCarsService/api/FileEvidences/type/8";
  static const String INFO_VEHICLES_LOCAL =
      "http://localhost:9000/InsomniaCarsService/api/vehicles/";

  static const String GENERATE_TOKEN_LOCAL_2 =
      "http://localhost:9000/OAuth/Token";
}
