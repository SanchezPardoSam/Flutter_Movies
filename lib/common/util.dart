final String _imageUrlMediun = "https://image.tmdb.org/t/p/w300";
final String _imageUrlLarge = "https://image.tmdb.org/t/p/w500";

String getMediumPictureUrl(String path) => _imageUrlMediun + path;
String getLargePictureUrl(String path) => _imageUrlLarge + path;