import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
      ),
      body: Column(
        children: [
          // Partie supérieure
          Container(
            height: MediaQuery.of(context).size.height / 3,
            color: Colors.blue, // Changez la couleur selon vos préférences
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50, // Ajustez la taille selon vos besoins
                  backgroundImage: AssetImage('assets/profile_picture.png'), // Votre image de profil
                ),
                Text("Nom Prénom", style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
          ),
          // Informations utilisateur
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('adresse@mail.com'), // Remplacez par les données utilisateur
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Numéro de téléphone'), // Remplacez par les données utilisateur
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('École / Université'), // Remplacez par les données utilisateur
                ),
                // Ajoutez plus d'éléments si nécessaire
              ],
            ),
          ),
        ],
      ),
    );
  }
}
