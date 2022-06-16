// ini class buatan saya
import 'package:flutter/material.dart';

/// Class DocComment digunakan untuk menampilkan profile user ke layar dengan indah
class DocComment extends StatelessWidget {
  /// field ini digunakan untuk menyimpan nama user
  final String name;
  final String role;
  final String photoURL;

  /// * [name] berisi nama user. Nilai defaultnya adalah `No Name`.
  ///
  /// * [role] berisi peran/jabatan dari user. Nilai defaultnya adalah `No Role`.
  ///
  /// * [photoURL] berisi link foto user. Nilai defaultnya adalah `null`.
  ///
  /// Contoh:
  ///
  /// ```
  /// final DocComment docComment = DocComment(
  ///name: "nama user",
  ///role: "peran user",
  ///photoURL: "https://lalala.com/foto.png",
  ///);
  ///```
  const DocComment(
      {Key key, this.name = "No Name", this.role = "No Role", this.photoURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: NetworkImage((photoURL != null)
              ? photoURL
              : "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
          fit: BoxFit.cover,
          width: 200,
          height: 200,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "[" + role + "]",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
