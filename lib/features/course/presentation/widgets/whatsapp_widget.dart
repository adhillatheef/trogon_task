import 'package:flutter/material.dart';
import 'package:trogon_task/core/theme/app_palatte.dart';

class WhatsappWidget extends StatelessWidget {
  const WhatsappWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
      decoration: BoxDecoration(
        color: AppPalette.greenGradient,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              maxLines: 2,
              'WhatsApp ലെ സഹായത്തിനായി',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Row(
              children: [
                const Text(
                  maxLines: 2,
                  '8606017527',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  child:  Row(
                    children: [
                      Image.asset('assets/images/whatsapp.png', width: 20, height: 20,),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Whatsapp',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
