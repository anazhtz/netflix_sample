import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_sample/presentation/new_and_hot/widgets/video_widgets.dart';

import '../../../core/colors/colors.dart';
import '../../../core/contants/contanss.dart';
import '../../home/custom_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              kHieght,
              Text("FED",style: GoogleFonts.montserrat(fontSize: 16,color: kGreyColor),),
              Text("11",style: GoogleFonts.montserrat(fontSize: 30,
                fontWeight: FontWeight.bold,letterSpacing: 3,),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width -50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHieght,
              Video_widget(),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Assasin Cred",style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1
                  ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Row(
                        children: [
                          CustomButtonWidget(
                            icon: Icons.notifications_outlined, title: "Remind me", iconSize: 20,
                            textSize: 15,
                          ),
                          kWidth,
                          CustomButtonWidget(
                            icon: Icons.info_outline, title: "Info ", iconSize: 20,
                            textSize: 15,
                          ),
                          kWidth,
                        ],
                      )
                    ],
                  ),
                ],
              ),
              kHieght
              ,
              Text("Coming on Friday",style: GoogleFonts.montserrat(fontSize: 15,color: kWhiteColor)),
              kHieght,
              Text("TALL GIRL 2",style: GoogleFonts.montserrat(fontSize: 18,
                  color: kWhiteColor,fontWeight: FontWeight.bold)),
              kHieght,
              Text("Landing the lead in the school is a "
                  "dream come true for jodi , until the pressure "
                  "sends her confidence - and her relatioship in to tailspain",
                style: TextStyle(color: kGreyColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
