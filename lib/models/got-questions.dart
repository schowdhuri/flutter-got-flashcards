import 'package:flutter/material.dart';

class GoTCharacter {
  static final basePath = "https://schowdhuri.github.io/got-flashcards/images/";
  final String name;
  final String image;

  GoTCharacter({@required this.name, @required this.image});

  static List<GoTCharacter> list = <GoTCharacter>[
    GoTCharacter(
      name: "Robert Baratheon",
      image: "Robert_Baratheon.jpg",
    ),
    GoTCharacter(
      name: "Eddard \"Ned\" Stark",
      image: "Eddard__Ned__Stark.jpg",
    ),
    GoTCharacter(
      name: "Talisa Maegyr",
      image: "Talisa_Maegyr.jpg",
    ),
    GoTCharacter(
      name: "Petyr \"Littlefinger\" Baelish",
      image: "Petyr__Littlefinger__Baelish.png",
    ),
    GoTCharacter(
      name: "Stannis Baratheon",
      image: "Stannis_Baratheon.png",
    ),
    GoTCharacter(
      name: "Varys",
      image: "Varys.png",
    ),
    GoTCharacter(
      name: "Arya Stark",
      image: "Arya_Stark.png",
    ),
    GoTCharacter(
      name: "Jorah Mormont",
      image: "Jorah_Mormont.jpg",
    ),
    GoTCharacter(
      name: "Theon Greyjoy",
      image: "Theon_Greyjoy.png",
    ),
    GoTCharacter(
      name: "Sansa Stark",
      image: "Sansa_Stark.png",
    ),
    GoTCharacter(
      name: "Jeor Mormont",
      image: "Jeor_Mormont.jpg",
    ),
    GoTCharacter(
      name: "Melisandre",
      image: "Melisandre.jpg",
    ),
    GoTCharacter(
      name: "Sandor \"The Hound\" Clegane",
      image: "Sandor__The_Hound__Clegane.jpg",
    ),
    GoTCharacter(
      name: "Margaery Tyrell",
      image: "Margaery_Tyrell.jpg",
    ),
    GoTCharacter(
      name: "Bronn",
      image: "Bronn.jpg",
    ),
    GoTCharacter(
      name: "Bran Stark",
      image: "Bran_Stark.jpg",
    ),
    GoTCharacter(
      name: "Robb Stark",
      image: "Robb_Stark.jpg",
    ),
    GoTCharacter(
      name: "Joffrey Baratheon",
      image: "Joffrey_Baratheon.jpg",
    ),
    GoTCharacter(
      name: "Samwell Tarly",
      image: "Samwell_Tarly.jpg",
    ),
    GoTCharacter(
      name: "Daenerys Targaryen",
      image: "Daenerys_Targaryen.jpg",
    ),
    GoTCharacter(
      name: "Cersei Lannister",
      image: "Cersei_Lannister.jpg",
    ),
    GoTCharacter(
      name: "Davos Seaworth",
      image: "Davos_Seaworth.jpg",
    ),
    GoTCharacter(
      name: "Jaime Lannister",
      image: "Jaime_Lannister.jpg",
    ),
    GoTCharacter(
      name: "Tyrion Lannister",
      image: "Tyrion_Lannister.jpg",
    ),
    GoTCharacter(
      name: "Shae",
      image: "Shae.png",
    ),
    GoTCharacter(
      name: "Viserys Targaryen",
      image: "Viserys_Targaryen.jpg",
    ),
    GoTCharacter(
      name: "Jon Snow",
      image: "Jon_Snow.png",
    ),
    GoTCharacter(
      name: "Catelyn Stark",
      image: "Catelyn_Stark.jpg",
    ),
    GoTCharacter(
      name: "Tywin Lannister",
      image: "Tywin_Lannister.jpg",
    ),
    GoTCharacter(
      name: "Ygritte",
      image: "Ygritte.jpg",
    ),
    GoTCharacter(
      name: "Gilly",
      image: "Gilly.png",
    ),
    GoTCharacter(
      name: "Ramsay Bolton",
      image: "Ramsay_Bolton.jpg",
    ),
    GoTCharacter(
      name: "Brienne of Tarth",
      image: "Brienne_of_Tarth.jpg",
    ),
    GoTCharacter(
      name: "Tormund Giantsbane",
      image: "Tormund_Giantsbane.jpg",
    ),
    GoTCharacter(
      name: "Tommen Baratheon",
      image: "Tommen_Baratheon.jpg",
    ),
    GoTCharacter(
      name: "Jaqen H'ghar",
      image: "Jaqen_H'ghar.jpg",
    ),
    GoTCharacter(
      name: "Missandei",
      image: "Missandei.png",
    ),
    GoTCharacter(
      name: "Ellaria Sand",
      image: "Ellaria_Sand.jpg",
    ),
    GoTCharacter(
      name: "Daario Naharis",
      image: "Daario_Naharis.jpg",
    ),
    GoTCharacter(
      name: "Grand Maester Pycelle",
      image: "Grand_Maester_Pycelle.png",
    ),
    GoTCharacter(
      name: "Gendry",
      image: "Gendry.jpg",
    ),
    GoTCharacter(
      name: "Grey Worm",
      image: "Grey_Worm.jpg",
    ),
    GoTCharacter(
      name: "Khal Drogo",
      image: "Khal_Drogo.jpg",
    ),
    GoTCharacter(
      name: "The High Sparrow",
      image: "The_High_Sparrow.jpg",
    ),
    GoTCharacter(
      name: "Ros",
      image: "Ros.jpg",
    ),
    GoTCharacter(
      name: "Osha",
      image: "Osha.jpg",
    ),
    GoTCharacter(
      name: "Roose Bolton",
      image: "Roose_Bolton.png",
    ),
    GoTCharacter(
      name: "Grenn",
      image: "Grenn.jpg",
    ),
    GoTCharacter(
      name: "Hodor",
      image: "Hodor.jpg",
    ),
    GoTCharacter(
      name: "Rickon Stark",
      image: "Rickon_Stark.jpg",
    ),
    GoTCharacter(
      name: "Meryn Trant",
      image: "Meryn_Trant.png",
    ),
    GoTCharacter(
      name: "Lysa Arryn",
      image: "Lysa_Arryn.png",
    ),
    GoTCharacter(
      name: "Ros",
      image: "Ros.jpg",
    ),
    GoTCharacter(
      name: "Mance Rayder",
      image: "Mance_Rayder.jpg",
    ),
    GoTCharacter(
      name: "Walder Frey",
      image: "Walder_Frey.jpg",
    ),
    GoTCharacter(
      name: "Maester Aemon",
      image: "Maester_Aemon.png",
    ),
    GoTCharacter(
      name: "Rodrik Cassel",
      image: "Rodrik_Cassel.jpg",
    ),
    GoTCharacter(
      name: "Rickard Karstark",
      image: "Rickard_Karstark.jpg",
    ),
    GoTCharacter(
      name: "Alliser Thorne",
      image: "Alliser_Thorne.jpg",
    ),
    GoTCharacter(
      name: "Shireen Baratheon",
      image: "Shireen_Baratheon.jpg",
    ),
    GoTCharacter(
      name: "Podrick Payne",
      image: "Podrick_Payne.png",
    ),
    GoTCharacter(
      name: "Locke",
      image: "Locke.jpg",
    ),
    GoTCharacter(
      name: "Hot Pie",
      image: "Hot_Pie.png",
    ),
    GoTCharacter(
      name: "Loras Tyrell",
      image: "Loras_Tyrell.png",
    ),
    GoTCharacter(
      name: "Brynden Tully",
      image: "Brynden_Tully.png",
    ),
    GoTCharacter(
      name: "Xaro Xhoan Daxos",
      image: "Xaro_Xhoan_Daxos.jpg",
    ),
    GoTCharacter(
      name: "Irri",
      image: "Irri.png",
    ),
    GoTCharacter(
      name: "Yara Greyjoy",
      image: "Yara_Greyjoy.jpg",
    ),
    GoTCharacter(
      name: "Meera Reed",
      image: "Meera_Reed.png",
    ),
    GoTCharacter(
      name: "Renly Baratheon",
      image: "Renly_Baratheon.jpg",
    ),
    GoTCharacter(
      name: "Doreah",
      image: "Doreah.jpg",
    ),
    GoTCharacter(
      name: "Ilyn Payne",
      image: "Ilyn_Payne.jpg",
    ),
    GoTCharacter(
      name: "Septa Mordane",
      image: "Septa_Mordane.jpg",
    ),
    GoTCharacter(
      name: "Maester Luwin",
      image: "Maester_Luwin.jpg",
    ),
    GoTCharacter(
      name: "Olenna Tyrell",
      image: "Olenna_Tyrell.png",
    ),
    GoTCharacter(
      name: "Robin Arryn",
      image: "Robin_Arryn.jpg",
    ),
    GoTCharacter(
      name: "Craster",
      image: "Craster.png",
    ),
    GoTCharacter(
      name: "Pyat Pree",
      image: "Pyat_Pree.jpg",
    ),
    GoTCharacter(
      name: "Yoren",
      image: "Yoren.jpg",
    ),
    GoTCharacter(
      name: "Jojen Reed",
      image: "Jojen_Reed.jpg",
    ),
    GoTCharacter(
      name: "Dontos Hollard",
      image: "Dontos_Hollard.jpg",
    ),
    GoTCharacter(
      name: "Thoros of Myr",
      image: "Thoros_of_Myr.png",
    ),
    GoTCharacter(
      name: "Myrcella Baratheon",
      image: "Myrcella_Baratheon.jpg",
    ),
    GoTCharacter(
      name: "Alton Lannister",
      image: "Alton_Lannister.jpg",
    ),
    GoTCharacter(
      name: "Jory Cassel",
      image: "Jory_Cassel.jpg",
    ),
    GoTCharacter(
      name: "Barristan Selmy",
      image: "Barristan_Selmy.jpg",
    ),
    GoTCharacter(
      name: "Spice King",
      image: "Spice_King.jpg",
    ),
    GoTCharacter(
      name: "Syrio Forel",
      image: "Syrio_Forel.png",
    ),
    GoTCharacter(
      name: "Lancel Lannister",
      image: "Lancel_Lannister.jpg",
    ),
    GoTCharacter(
      name: "Kevan Lannister",
      image: "Kevan_Lannister.png",
    ),
    GoTCharacter(
      name: "Silk King",
      image: "Silk_King.jpg",
    ),
    GoTCharacter(
      name: "Greatjon Umber",
      image: "Greatjon_Umber.jpg",
    ),
    GoTCharacter(
      name: "Edmure Tully",
      image: "Edmure_Tully.png",
    ),
    GoTCharacter(
      name: "Eddison Tollett",
      image: "Eddison_Tollett.png",
    ),
    GoTCharacter(
      name: "Mirri Maz Duur",
      image: "Mirri_Maz_Duur.png",
    ),
    GoTCharacter(
      name: "Beric Dondarrion",
      image: "Beric_Dondarrion.png",
    ),
    GoTCharacter(
      name: "Gregor Clegane",
      image: "Gregor_Clegane.jpg",
    ),
    GoTCharacter(
      name: "Benjen Stark",
      image: "Benjen_Stark.png",
    ),
    GoTCharacter(
      name: "Qyburn",
      image: "Qyburn.jpg",
    ),
    GoTCharacter(
      name: "Selyse Baratheon",
      image: "Selyse_Baratheon.png",
    ),
    GoTCharacter(
      name: "Qhorin Halfhand",
      image: "Qhorin_Halfhand.jpg",
    ),
    GoTCharacter(
      name: "Janos Slynt",
      image: "Janos_Slynt.png",
    ),
    GoTCharacter(
      name: "Obara Sand",
      image: "Obara_Sand.png",
    ),
    GoTCharacter(
      name: "Three-Eyed Raven",
      image: "Three-Eyed_Raven.jpg",
    ),
    GoTCharacter(
      name: "Nymeria Sand",
      image: "Nymeria_Sand.png",
    ),
    GoTCharacter(
      name: "Yohn Royce",
      image: "Yohn_Royce.jpg",
    ),
    GoTCharacter(
      name: "Brynden Tully",
      image: "Brynden_Tully.png",
    ),
    GoTCharacter(
      name: "Oberyn Martell",
      image: "Oberyn_Martell.jpg",
    ),
    GoTCharacter(
      name: "Myranda",
      image: "Myranda.jpg",
    ),
    GoTCharacter(
      name: "Hizdahr zo Loraq",
      image: "Hizdahr_zo_Loraq.jpg",
    ),
    GoTCharacter(
      name: "Olyvar",
      image: "Olyvar.png",
    ),
    GoTCharacter(
      name: "Walda Bolton",
      image: "Walda_Bolton.jpg",
    ),
    GoTCharacter(
      name: "Tyene Sand",
      image: "Tyene_Sand.png",
    ),
    GoTCharacter(
      name: "Septa Unella",
      image: "Septa_Unella.jpg",
    ),
    GoTCharacter(
      name: "High Septon",
      image: "High_Septon.jpg",
    ),
    GoTCharacter(
      name: "The Waif",
      image: "The_Waif.png",
    ),
    GoTCharacter(
      name: "Kraznys mo Nakloz",
      image: "Kraznys_mo_Nakloz.jpg",
    ),
    GoTCharacter(
      name: "Night King",
      image: "Night_King.jpg",
    ),
    GoTCharacter(
      name: "Black Walder Rivers",
      image: "Black_Walder_Rivers.png",
    ),
    GoTCharacter(
      name: "Leaf",
      image: "Leaf.png",
    ),
    GoTCharacter(
      name: "Thenn warg",
      image: "Thenn_warg.png",
    ),
    GoTCharacter(
      name: "Olly",
      image: "Olly.png",
    ),
    GoTCharacter(
      name: "Mace Tyrell",
      image: "Mace_Tyrell.png",
    ),
  ];
}
