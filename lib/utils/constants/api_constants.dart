class ApiConstants {
  ApiConstants._();
  static const String firestoreUserCollection = 'users';
  static const String categoryCollection = 'categories';
  static const String categorySubCollection = 'subCategories';
  static const String googleOAuthScope =
      'https://www.googleapis.com/auth/contacts.readonly';
}

class FirestoreFields {
  static const String name = 'name';
  static const String imageUrl = 'image_url';
  static const String category = 'category';
  static const String description = 'description';
  static const String location = 'location';
  static const String imageIds = 'image_ids';
  static const String imageUrls = 'image_urls';
  static const String publishDate = 'publish_date';
  static const String thumbnailImageId = 'thumbnail_image_id';
  static const String thumbnailImageUrl = 'thumbnail_image_url';
}
