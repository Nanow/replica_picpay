
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    int id;
    String name;
    String img;
    String username;

    User({
        this.id,
        this.name,
        this.img,
        this.username,
    });

    factory User.fromJson(Map<String, dynamic> json) => new User(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
        "username": username,
    };
    
}
