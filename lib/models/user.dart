class User {
  final String email;
  final String _id;
  final String userId;
  final String description;
  final String coverImageUrl;
  final String profileImageUrl;
  final String displayName;
  final List<User> followers;
  final List<User> following;
  final num rating;
  final bool verified;
  final num numberOfProducts;
  final num numberOfLikes;
  final String contactPersonPhoneName;
  final String contactPersonPhoneNumber;
  final String country;
  final String timezone;

  User(
      this.email,
      this._id,
      this.userId,
      this.description,
      this.coverImageUrl,
      this.profileImageUrl,
      this.displayName,
      this.followers,
      this.following,
      this.rating,
      this.verified,
      this.numberOfProducts,
      this.numberOfLikes,
      this.contactPersonPhoneName,
      this.contactPersonPhoneNumber,
      this.country,
      this.timezone);

  User.fromJson(Map<String, Object?> json)
      : this(
          json['email'] as String? ?? '',
          json['_id'] as String? ?? '',
          json['userId'] as String? ?? '',
          json['description'] as String? ?? '',
          json['coverImageUrl'] as String? ?? '',
          json['profileImageUrl'] as String? ?? '',
          json['displayName'] as String? ?? '',
          json['followers'] as List<User>? ?? [],
          json['following'] as List<User>? ?? [],
          json['rating'] as num? ?? 0,
          json['verified'] as bool? ?? false,
          json['numberOfProducts'] as num? ?? 0,
          json['numberOfLikes'] as num? ?? 0,
          json['contactPersonPhoneName'] as String? ?? '',
          json['contactPersonPhoneNumber'] as String? ?? '',
          json['country'] as String? ?? '',
          json['timezone'] as String? ?? '',
        );

  Map<String, Object?> toJson() {
    return {
      'email': email,
      '_id': _id,
      'userId': userId,
      'description': description,
      'coverImageUrl': coverImageUrl,
      'profileImageUrl': profileImageUrl,
      'displayName': displayName,
      'followers': followers,
      'following': following,
      'rating': rating,
      'verified': verified,
      'numberOfProducts': numberOfProducts,
      'numberOfLikes': numberOfLikes,
      'contactPersonPhoneName': contactPersonPhoneName,
      'contactPersonPhoneNumber': contactPersonPhoneNumber,
      'country': country,
      'timezone': timezone
    };
  }
}
