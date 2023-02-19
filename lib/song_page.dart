import 'package:flutter/material.dart';
import 'package:flutter_muzik_player_ui/Constant/neu_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 9),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(
                      press: () {},
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  const Text('P L A Y L I S T'),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(
                      press: () {},
                      child: const Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.width * 0.9,
                child: NeuBox(
                  child: Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/images/pitbul.png'),
                          ))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Pitbul Head Band',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'E H A S',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.only(right: 18),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '0:00',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 15),
                        ),
                        Icon(
                          Icons.shuffle,
                          color: Colors.grey.shade700,
                        ),
                        Icon(
                          Icons.repeat,
                          color: Colors.grey.shade700,
                        ),
                        Text(
                          '3:10',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 10,
                child: NeuBox(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Container(
                 width: MediaQuery.of(context).size.width * 0.7,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       width: 70,
                       height: 70,
                       child: const NeuBox(
                         child: Icon(Icons.skip_previous),
                       ),
                     ),
                     Container(
                       width: 100,
                       height: 70,
                       child: const NeuBox(
                         child: Icon(Icons.play_arrow),
                       ),
                     ),
                     Container(
                       width: 70,
                       height: 70,
                       child: const NeuBox(
                         child: Icon(Icons.skip_next),
                       ),
                     ),
                   ],
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
