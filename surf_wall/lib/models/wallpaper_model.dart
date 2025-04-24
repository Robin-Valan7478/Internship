
class Wallpaper {
	final String imageUrl;

	Wallpaper({required this.imageUrl});

	factory Wallpaper.fromJson(Map<String, dynamic> json) {
	return Wallpaper (imageUrl: json['src']['original']);
}
}
