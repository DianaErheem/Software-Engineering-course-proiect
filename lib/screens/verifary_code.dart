import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: const Color(0xFFF9FAFB),),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
                height: double.infinity,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Center(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(top: 50, left: 50, right: 50),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Verification code',
                              style: GoogleFonts.nunito(
                                  fontSize: 34,
                                  color: const Color(0xFF23203F)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Text(
                                    'Please enter the verification code we sent to your phone number',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 17,
                                        color: const Color(0xFF454F5B))
                                )),
                            const SizedBox(height: 20,),
                            Form(child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              SizedBox(height: 60, width: 50,child: TextField(
                              style: Theme.of(context).textTheme.headlineLarge,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),),
                                SizedBox(height: 60, width: 50,child: TextField(
                                  style: Theme.of(context).textTheme.headlineLarge,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),),
                                SizedBox(height: 60, width: 60,child: TextField(
                                  style: Theme.of(context).textTheme.headlineLarge,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),),
                                SizedBox(height: 60, width: 50,child: TextField(
                                  style: Theme.of(context).textTheme.headlineLarge,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),),
                                SizedBox(height: 60, width: 50,child: TextField(
                                  style: Theme.of(context).textTheme.headlineLarge,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),)
                              ],)

                            ),
                            const SizedBox(height: 25,),
                            ElevatedButton(
                              onPressed: (() {}),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  backgroundColor: const Color(0xFF5C6AC4),
                                  minimumSize: const Size(double.infinity, 50)),
                              child: Text(
                                "Done",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
