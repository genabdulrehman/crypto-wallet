import 'package:crypto_wallet/screends/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  //const BottomNav({Key? key}) : super(key: key);
  final _bucket = PageStorageBucket();

  Widget currentScreen = HomeScreem();

  int indexScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: _bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: const Color(0xff261863),
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )),
          padding: const EdgeInsets.all(10),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(
                    () {
                      indexScreen = 0;
                    },
                  );
                },
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("images/home.png"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Color(0xffD975BB),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 1;
                  });
                },
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("images/wallet.png"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Wallet",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 38,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 2;
                  });
                },
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("images/market.png"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Market",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(
                    () {
                      indexScreen = 3;
                    },
                  );
                },
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("images/setting.png"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Setting",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: const Color(0xff55389B),
            borderRadius: BorderRadius.circular(38),
          ),
          child: const Icon(Icons.swap_horiz_outlined,
              size: 40, color: Colors.white),
        ),
      ),
    );
  }
}
