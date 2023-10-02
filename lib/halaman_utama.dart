import 'package:flutter/material.dart';
import 'package:kuis_disease/disease_data.dart';
import 'package:kuis_disease/halaman_detil.dart';
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
            'Penyakit Tanaman'
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: listDisease.length,
        itemBuilder: (context, index){
          final Diseases place = listDisease[index];
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HalamanDetail(place: place)));
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 8,
                    child: Image.network(place.imgUrls[0]),
                  ),
                ], // Children
              ),
          );
        },
      ),
    );
  }
}
