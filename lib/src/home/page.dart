import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protifolio/src/core/colors.dart';

class HomePage extends GetView {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: contrastBlack,
              width: Get.width,
              height: Get.height * 0.08,
            ),
            Container(
              color: darkLime,
              width: Get.width,
              height: 7,
            ),
            Stack(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 2.0,
                  decoration: BoxDecoration(
                    color: lightLime,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const AboutSection(),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text(
                        'Github Stats',
                        style: GoogleFonts.roboto(
                            fontSize: 46,
                            fontWeight: FontWeight.w400,
                            color: contrastBlack),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.4,
                      child: ListView(
                        physics: const AlwaysScrollableScrollPhysics(
                          parent: BouncingScrollPhysics(),
                        ),
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(20),
                        children: const [
                          CardGithub(),
                          CardGithub(),
                          CardGithub(),
                          CardGithub(),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardGithub extends StatelessWidget {
  const CardGithub({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GlassContainer(
          width: Get.height * 0.5,
          height: Get.height * 0.4,
          borderRadius: BorderRadius.circular(20),
          blur: 20,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text('Titulo'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

class AboutSection extends GetWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: contrastBlack,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(70),
        ),
      ),
      height: Get.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width * 0.002,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('LUIGI GONTIJO',
                          style: GoogleFonts.roboto(
                              fontSize: 64, color: Colors.white)),
                      Text('DESENVOLVEDOR FLUTTER PLENO',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: lightLime.withOpacity(0.4))),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: Get.width * 0.65,
                        child: Text(
                          textAlign: TextAlign.justify,
                          'Olá, sou Luigi, um entusiasta de tecnologia com formação em Ciência da Computação pela UFG. Com experiência de 3 anos em desenvolvimento Flutter, estou comprometido em aprimorar minhas habilidades e me tornar um arquiteto de software qualificado. Tenho paixão por compartilhar conhecimento e leciono sobre Flutter na UFG. Acredito que a tecnologia desempenha um papel fundamental na superação dos desafios do mundo moderno.',
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(),
                              fontSize: 24,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Get.width * 0.1,
                  ),
                  Stack(alignment: Alignment.center, children: [
                    Container(
                      height: Get.width * 0.15,
                      width: Get.width * 0.15,
                      decoration: BoxDecoration(
                        color: lightLime.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(70),
                      ),
                    ),
                    Container(
                      height: Get.width * 0.145,
                      width: Get.width * 0.145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        image: const DecorationImage(
                          image: AssetImage('assets/foto.jpg'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: Get.width * 0.002,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
