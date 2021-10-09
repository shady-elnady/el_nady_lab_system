class UserModel {
  final String? name, urlImage, location, bio;
  final int? countFollowers, countFollowing, countPosts;
  final List<String>? urlPhotos;
  bool isFollowing;

  UserModel({
    this.name,
    this.urlImage,
    this.location,
    this.bio,
    this.countFollowers,
    this.countFollowing,
    this.countPosts,
    this.urlPhotos,
    this.isFollowing = false,
  });
}

final users = <UserModel>[
  UserModel(
    name: "shady",
    urlImage:
        "https://i2.wp.com/southpawers.com/wp-content/uploads/2021/05/ai-eminem-the-real-slim-shady-scaled.jpg?fit=2560%2C1381&ssl=1",
    location: "Location",
    bio: "shady shady shady shady shady",
    countFollowers: 5,
    countFollowing: 5,
    countPosts: 5,
    urlPhotos: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY1OafajanoVBmIpAeNRzMlkxeA73Ox2vmNA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_AcqFIlcVOjov4_u1jimkzYNzs9wZ3Rgeg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyk-rAWff8es4lJvIa_J3mIuveLfNztGCpLg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY1OafajanoVBmIpAeNRzMlkxeA73Ox2vmNA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOINoeeCqir7-nCJQkVGpF5ykYME7q0WPWg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyk-rAWff8es4lJvIa_J3mIuveLfNztGCpLg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY1OafajanoVBmIpAeNRzMlkxeA73Ox2vmNA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_AcqFIlcVOjov4_u1jimkzYNzs9wZ3Rgeg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyk-rAWff8es4lJvIa_J3mIuveLfNztGCpLg&usqp=CAU",
    ],
  ),
  UserModel(
    name: "ahmed",
    urlImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0NcozOmb2ojsxW9CPrhD8hVNAElZALTD6QA&usqp=CAU",
    location: "Location",
    bio: "ahmed ahmed ahmed ahmed ahmed",
    countFollowers: 5,
    countFollowing: 5,
    countPosts: 5,
    urlPhotos: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_AcqFIlcVOjov4_u1jimkzYNzs9wZ3Rgeg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_AcqFIlcVOjov4_u1jimkzYNzs9wZ3Rgeg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_AcqFIlcVOjov4_u1jimkzYNzs9wZ3Rgeg&usqp=CAU",
    ],
  ),
  UserModel(
    name: "mohammed",
    urlImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ6jMNGREi5Y3OGWKTry1zliC7gTxicSMg0w&usqp=CAU",
    location: "Location",
    bio: "mohammed mohammed mohammed mohammed mohammed",
    countFollowers: 5,
    countFollowing: 5,
    countPosts: 5,
    urlPhotos: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8APYlx1Sv7xCCij298b5GetQ5Vr4F3H4pGA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8APYlx1Sv7xCCij298b5GetQ5Vr4F3H4pGA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8APYlx1Sv7xCCij298b5GetQ5Vr4F3H4pGA&usqp=CAU",
    ],
  ),
];
