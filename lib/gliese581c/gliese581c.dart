import 'package:flutter/material.dart';
import 'package:test16/home_layout/home_layout.dart';
import 'package:test16/home_layout/takeFrom.dart';

class Gliese581c extends StatelessWidget {
  static const String routeName = "Glises";
  final Planets? planets;

  const Gliese581c({super.key, this.planets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020000),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: const Color(0xFF020000),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              Navigator.pushNamed(context, HomeLayout.routeName);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
          ),
          centerTitle: false,
          elevation: 2,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                planets!.imgPath,
                width: 455,
                height: 362,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, 1.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25, 25, 25, 25),
                child: Text(
                  planets!.information,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
           const Divider(color: Colors.lightBlue, thickness: 3),
            const SizedBox(height: 16,),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Column(
                children: [
                  Flexible(
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Gliese581c(planets: sukaaaa[index]),
                                    ));
                              },
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      sukaaaa[index].imgPath,
                                      width: 180,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.03,
                                  ),
                                  Text(
                                    sukaaaa[index].name,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff1F057A)),
                                  ),
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 24,
                            ),
                        itemCount: sukaaaa.length),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<Planets> sukaaaa = [
  const Planets(
      imgPath: 'assets/images/1.jpeg',
      destance: "20 light year",
      information: """ The distance from Earth is 20 light years
      Of the planets that could potentially support life
  It revolves around a red dwarf star, but it is gravitationally bound to the star, so it does not revolve around itself. Half of it is always morning and is exposed to the star's light, and the other half is always night and does not receive any light.
      The only part in which you and any being can live is the small part between the two halves of the planet.. It has a balanced climate
  The sky of the planet is always dark crimson, and any plants on the surface that are damaged will use infrared rays to survive, and this will make the color of all plants dark black instead of green """,
      name: "Gliese 581 c"),
  const Planets(
      imgPath: 'assets/images/2.jpeg',
      destance: "40 light year",
      information: """ The distance from Earth is 40 light years
 This whole planet is a giant gem
 When this planet was formed, it was mostly made of carbon
 Due to the pressure and heat from its star, the carbon was compressed and turned into a giant gem
 This planet is valued at 26.9 million dollars
 This means 384,000,000,000,000,000,000 times the economic output of the entire planet Earth.""",
      name: "55 Cancri e"),
  const Planets(
      imgPath: 'assets/images/3.jpeg',
      destance: "151 light year",
      information: """The distance from Earth is 151 light years
 His solar system contains 3 stars
 I mean, if you were standing on this planet, you would have 3 shadows
 You will see 3 sunsets and 3 sunrises, and almost every day you will see a solar eclipse""",
      name: "HD 188753"),
  const Planets(
      imgPath: 'assets/images/4.jpeg',
      destance: "33 light year",
      information:
          """ The distance from Earth is 33 years. The planet is completely frozen, its entire surface is ice. But this planet is so close to its star that its surface is always burning.
 The planet's gravity is very high, which causes the Snow to not evaporate
 This makes the planet frozen, but the Snow is hot""",
      name: "Gliese 436 b"),
  const Planets(
      imgPath: 'assets/images/5.jpeg',
      destance: "3 light year",
      information:
          """The bright clusters and nebulae of planet Earth's night sky are often named for flowers or insects. Though its wingspan covers over 3 light-years, NGC 6302 is no exception. With an estimated surface temperature of about 250,000 degrees C, the dying central star of this particular planetary nebula has become exceptionally hot, shining brightly in ultraviolet light but hidden from direct view by a dense torus of dust.

This sharp and colorful close-up of the dying star's nebula was recorded in 2009 by the Hubble Space Telescope's Wide Field Camera 3, installed during the final shuttle servicing mission. Cutting across a bright cavity of ionized gas, the dust torus surrounding the central star is near the center of this view, almost edge-on to the line-of-sight. Molecular hydrogen has been detected in the hot star's dusty cosmic shroud. NGC 6302 lies about 4,000 light-years away in the arachnologically correct constellation of the Scorpion""",
      name: "The Butterfly Nebula"),
  const Planets(
      imgPath: 'assets/images/11.jpeg',
      destance: "1000 light year",
      information:
          """ What is the most spook-tacular nebula in the galaxy? One contender is LDN 43, which bears an astonishing resemblance to a vast cosmic bat flying amongst the stars on a dark Halloween night. Located about 1400 light years away in the constellation Ophiuchus, this molecular cloud is dense enough to block light not only from background stars, but from wisps of gas lit up by the nearbyreflection nebula LBN 7. Far from being a harbinger of death, this 12-light year-long filament of gas anddust is actually a stellar nursery. Glowing with eerie light, the bat is lit up from inside by dense gaseous knots that have just formed young stars.""",
      name: "The Cosmic Bat Nebula"),
  const Planets(
      imgPath: 'assets/images/12.jpeg',
      destance: "",
      information:
          """Is this what will become of our Sun? Quite possibly. The first hint of our Sun's future was discovered inadvertently in 1764. At that time, Charles Messier was compiling a list of diffuse objects not to be confused with comets. The 27th object on Messier's list, now known as M27 or the Dumbbell Nebula, is a planetary nebula, one of the brightest planetary nebulae on the sky and visible with binoculars toward the constellation of the Fox (Vulpecula). It takes light about 1000 years to reach us from M27, featured here in colors emitted by sulfur (red), hydrogen (green) and oxygen (blue). We now know that in about 6 billion years, our Sun will shed its outer gases into a planetary nebula like M27, while its remaining center will become an X-ray hot white dwarf star. Understanding the physics and significance of M27was well beyond 18th century science, though. Even today, many things remain mysterious aboutplanetary nebulas, including how their intricate shapes are created""",
      name: "The Dumbbell Nebula"),
  const Planets(
      imgPath: 'assets/images/13.jpeg',
      destance: "",
      information:
          """Do you see the horse's head? What you are seeing is not the famous Horsehead nebula toward Orion, but rather a fainter nebula that only takes on a familiar form with deeper imaging. The main part of thehere-imaged molecular cloud complex is reflection nebula IC 4592. Reflection nebulas are made up of very fine dust that normally appears dark but can look quite blue when reflecting the visible light of energetic nearby stars. In this case, the source of much of the reflected light is a star at the eye of thehorse. That star is part of Nu Scorpii, one of the brighter star systems toward the constellation of the Scorpion (Scorpius). A second reflection nebula dubbed IC 4601 is visible surrounding two stars above and to the right of the image center.""",
      name: "The Blue Horsehead Reflection Nebula"),
  const Planets(
      imgPath: 'assets/images/14.jpeg',
      destance: "",
      information:
          """Not the James Webb Space Telescope's latest view of a distant galactic nebula, this illuminated cloud of gas and dust dazzled early morning spacecoast skygazers on August 26. The snapshot was taken about 2 minutes after the launch of of a Falcon 9 rocket on the SpaceX Crew-7 mission, the seventh commercial crew rotation mission for the International Space Station. It captures drifting plumes and exhaust from the separated first and second stage illuminated against the still dark skies. Near the center of the image, within the ragged blueish ring, are two bright points of light. The lower one is the second stage of the rocket carrying 4 humans to space in a Crew Dragon spacecraft. The bright point above is the Falcon 9 first stage booster orienting itself for the trip back to Landing Zone-1 at Cape Canaveral, planet Earth.""",
      name: "The Crew-7 Nebula"),
  const Planets(
      imgPath: 'assets/images/10.jpeg',
      destance: "",
      information:
          """On November 8, a waning crescent Moon joined the continuing parade of planets in Earth's morning skies. Captured here from Amboseli National Park, Kenya, even the overexposed moonlight can't washout brilliant Venus though, lined up near the ecliptic plane with faint Mars and bright Jupiter above. As if Moon and planets aren't enough, a comparably bright Taurid meteor also streaks through the scene. In fact November's Taurid meteor showers have had a high proportion of bright fireballs. Apparently streaming from radiants in Taurus, the meteors are caused by our fair planet's annual passage through debris from Comet 2P/Encke. The comet's dust grains are catching up with Earth's atmosphere at a relatively low speed of about 27 kilometers per second.""",
      name: "Kenya Morning Moon, Planets and Taurid"),
  const Planets(
      imgPath: 'assets/images/6.jpeg',
      destance: "",
      information:
          """While scanning the skies for near earth objects Hungarian astronomer Krisztián Sárneczky first imaged the meter-sized space rock now cataloged as 2023 CX1 on 12 February 2023 at 20:18:07 UTC. That was about 7 hours before it impacted planet Earth's atmosphere. Its predicted trajectory created a rare opportunity for meteor observers and a last minute plan resulted in this spectacular image of the fireball, captured from the Netherlands as 2023 CX1 vaporized and broke up over northern France. Remarkably it was Sárneczky's second discovery of an impacting asteroid, while 2023 CX1 is only the seventh asteroid to be detected before being successfully predicted to impact Earth. It has recently become the third such object from which meteorites have been recovered. This fireball was witnessedalmost 10 years to the day following the infamous Chelyabinsk Meteor flash.""",
      name: "2023 CX1 Meteor Flash"),
  const Planets(
      imgPath: 'assets/images/7.jpeg',
      destance: "",
      information:
          """What makes a meteor a fireball? First of all, everyone agrees that a fireball is an exceptionally bright meteor. Past that, the International Astronomical Union defines a fireball as a meteor brighter thanapparent magnitude -4, which corresponds (roughly) to being brighter than any planet -- as well as bright enough to cast a human-noticeable shadow. Pictured, an astrophotographer taking a long-duration sky image captured by accident the brightest meteor he had ever seen. Clearly a fireball, the disintegrating space-rock created a trail so bright it turned night into day for about two seconds earlier this month. Thefireball has been artificially dimmed in the featured image to bring up foreground Lake Louise in Alberta,Canada. Although fireballs are rare, many people have been lucky enough to see them. If you see a fireball, you can report it. If more than one person recorded an image, the fireball might be traceable back to the Solar System body from which it was ejected.""",
      name: "Fireball over Lake Louise"),
  const Planets(
      imgPath: 'assets/images/8.jpeg',
      destance: "",
      information:
          """Meteors can be colorful. While the human eye usually cannot discern many colors, cameras often can. Pictured is a Quadrantids meteor captured by camera over Missouri, USA, early this month that was not only impressively bright, but colorful. The radiant grit, likely cast off by asteroid 2003 EH1, blazed a path across Earth's atmosphere. Colors in meteors usually originate from ionized elements released as themeteor disintegrates, with blue-green typically originating from magnesium, calcium radiating violet, andnickel glowing green. Red, however, typically originates from energized nitrogen and oxygen in the Earth's atmosphere. This bright meteoric fireball was gone in a flash -- less than a second -- but it left awind-blown ionization trail that remained visible for several minutes.""",
      name: "A Colorful Quadrantid Meteor"),
  const Planets(
      imgPath: 'assets/images/9.jpeg',
      destance: "",
      information:
          """Some night skies are serene and passive -- others shimmer and flash. The later, in the form of aurorasand meteors, haunted skies over the island of Kvaløya, near Tromsø Norway on 2009 December 13. This 30 second long exposure records a shimmering auroral glow gently lighting the wintery coastal scene. A study in contrasts, the image also captures the sudden flash of a fireball meteor from the excellentGeminid meteor shower of 2009. Streaking past familiar stars in the handle of the Big Dipper, the trail points back toward the constellation Gemini, off the top of the view. Both auroras and meteors occur in Earth's upper atmosphere at altitudes of 100 kilometers or so, but aurora caused by energetic charged particles from the magnetosphere, while meteors are trails of cosmic dust. Nine years after this photograph was taken, toward the end of this week, the yearly 2018 Geminids meteor shower will peak again, although this time their flashes will compete with the din of a half-lit first-quarter moon during the first half of the night.""",
      name: "Aurora Shimmer, Meteor Flash")
];
