import 'package:flutter/material.dart';

import 'components/add_button.dart';
import 'components/user_card.dart';
import 'model/user_model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Cards'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        // width: double.infinity,
        height: 150,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => card_user(),
        ),
      ),
    );
  }
}

class card_user extends StatelessWidget {
  const card_user({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15.0),
      height: 120.0,
      width: 110,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            //color: Colors.lightBlue.shade50,
            color: Color(0xffeeeeee),
            blurRadius: 4.0,
            spreadRadius: 4,
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 27,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/picture.jpg'),
              radius: 25,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              // user.name,
              'Cedi Osman', maxLines: 1,
              style: TextStyle(
                inherit: true,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: Colors.black87,
              ),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
