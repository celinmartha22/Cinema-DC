class movie {
  String title;
  String duration;
  String genre;
  String producer;
  String director;
  String writer;
  String production;
  String casts;
  String synopsis;
  String image;
  String rating;
  String age;
  String image_detail;
  // List<String> imageUrls;

  movie({
    required this.title,
    required this.duration,
    required this.genre,
    required this.producer,
    required this.director,
    required this.writer,
    required this.production,
    required this.casts,
    required this.synopsis,
    required this.image,
    required this.rating,
    required this.age,
    required this.image_detail,
    });
  
}

//JSON data sebagai contoh
var movieList = [
  movie(
    title: '13 Minutes',
    duration: '108 Minutes',
    genre:  'Action, Drama, Thriller',
    producer: 'Ryan Bobkin, Hayley Brown, Travis Fancombe, Lindsay Gossling',
    director: 'Lindsay Gossling',
    writer: 'Lindsay Gossling, Travis Farncombe',
    production: 'Highland Film Group',
    casts:  'Amy Smart, Thora Birch, Anne Heche, Paz Vega, Peter Facinelli, Laura Spencer, Sofia Vassilieva, Trace Adkins, Will Peltz, Yancey Arias, Gabriel Jarret, Davi Santos',
    synopsis: 'The largest tornado on record threatens to ravage a small town, leaving residents with only 13 minutes to find shelter, search for loved ones and fight for their lives. In the wake of total devastation, four families must overcome their differences and find strength in themselves and one another to survive.',
    image: '13 Minutes.jpg',
    rating: '4.6/10',
    age: 'PG-13',
    image_detail: '13 Minutes_c.jpg',
    // imageUrls: [
    //   'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
    //   'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
    //   'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    // ],
  ),
  movie(
    title: 'Doctor Strange in the Multiverse of Madness',
    duration: '126 Minutes',
    genre:  'Action, Adventure, Fantasy',
    producer: 'Kevin Feige',
    director: 'Sam Raimi',
    writer: 'Michael Waldron, Jade Halley Bartlett',
    production: 'Walt Disney Pictures',
    casts:  'Benedict Cumberbatch, Elizabeth Olsen, Rachel McAdams, Chiwetel Ejiofor, Benedict Wong, Xochitl Gomez',
    synopsis: 'Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse. They seek help from Wanda the Scarlet Witch, Wong and others.',
    image: 'Doctor Strange in the Multiverse of Madness.jpg',
    rating: '7.3/10',
    age: 'R13+',
    image_detail: 'Doctor Strange in the Multiverse of Madness_c.jpg',
  ),
    movie(
    title: 'Force of Nature',
    duration: '99 Minutes',
    genre:  'Crime, Drama, Thriller',
    producer: 'Randall Emmett, George Furla, Shaun Sanghani, Luillo Ruiz, Mark Stewart',
    director: 'Michael Polish',
    writer: 'Cory M. Miller',
    production: 'Lionsgate',
    casts:  'Emile Hirsch, Kate Bosworth, Mel Gibson, David Zayas, Stepahnie Cayo, Tyler Jon Olson, Jorge Luis Ramos, William Catlett, Blas Sien Diaz, Joksan Ramos',
    synopsis: 'A group of thieves plot a heist when a huge hurricane hits Puerto Rico, but they run into trouble when a police officer tries to force everyone in the apartment to evacuate to a safer place. Will the police be aware and be able to stop the theft?',
    image: 'Force of Nature.jpg',
    rating: '4.5/10',
    age: 'R',
    image_detail: 'Force of Nature_c.jpg',
  ),
    movie(
    title: 'Gunpowder Milkshake',
    duration: '114 Minutes',
    genre:  'Action, Crime, Thriller',
    producer: 'Andrew Rona, Alex Heineman',
    director: 'Navot Papushado',
    writer: 'Navot Papushado, Ehud Lavski',
    production: 'Studio Canal',
    casts:  'Karen Gillan, Joanna Bobin, Freya Allan, Lena Headey, Ed Birch, Paul Giamatti, Ralph Ineson, Adam Nagaitis, David Zimmerschied, Carla Gugino, Angela Bassett',
    synopsis: "Sam (Karen Gillan) is only 12 years old when his mother Scarlet (Lena Headey), an elite assassin, is forced to leave him. Sam was raised by The Firm, the violent crime syndicate where his mother worked. Now, 15 years later, Sam has followed in his mother's footsteps and has grown into a vicious killer woman. He uses his (talent) to clean up the mess.",
  image: 'Gunpowder Milkshake.jpg',
    rating: '6.0/10',
    age: 'D17+',
    image_detail: 'Gunpowder Milkshake_c.jpg',
  ),
    movie(
    title: 'Jolt',
    duration: '91 Minutes',
    genre:  'Action, Comedy',
    producer: 'David Bernardi, Christa Campbell, Sherryl Clark, Boaz Davidson',
    director: 'Tanya Wexler',
    writer: 'Scott Wascha',
    production: 'Millennium Media',
    casts:  'Kate Beckinsale, Jai Courtney, Stanley Tucci, Bobby Cannavale, Susan Sarandon, David Bradley, Laverne Cox, Constantine Gregory, Ori Pfeffer, Lewis Ian Bray',
    synopsis: 'Lindy, a young woman, struggles with anger issues after being diagnosed with a neurological condition. Her life turns upside down when her lover gets murdered and she sets out to avenge his death.',
  image: 'Jolt.jpg',
    rating: '5.6/10',
    age: '17+',
    image_detail: 'Jolt_c.jpg',
  ),
    movie(
    title: 'Jurassic World Dominion',
    duration: '147 Minutes',
    genre:  'Action, Adventure, Sci-Fi',
    producer: 'Patrick Crowley, Frank Marshall',
    director: 'Colin Trevorrow',
    writer: 'Emily Carmichael, Colin Trevorrow',
    production: 'Universal Pictures',
    casts:  'Chris Pratt, Bryce Dallas Howard, Laura Dern, Sam Neill, Jeff Goldblum, DeWanda Wise, Mamoudou Athie, Isabella Sermon, Campbell Scott, BD Wong, Omar Sy',
    synopsis: "Four years after the destruction of Nublar Island, Dinosaurs now live and hunt side by side with humans. This delicate balance will determine: Will humans remain at the top of the food chain while sharing territory with the most fearsome creatures in Earth's history?",
  image: 'Jurassic World Dominion.jpg',
    rating: '6.2/10',
    age: 'R13+',
    image_detail: 'Jurassic World Dominion2_c.jpg',
  ),
    movie(
    title: 'Memory',
    duration: '113 Minutes',
    genre:  'Action, Thriller',
    producer: 'Moshe Diamant, Sagiv Diamant, Michael Heimler',
    director: 'Martin Campbell',
    writer: 'Dario Scardapane, Jef Geeraerts, Carl Joos, Erik Van Looy',
    production: 'Arthur Sarkissian Productions, Black Bear Pictures',
    casts:  'Monica Bellucci, Liam Neeson, Guy Pearce, Ray Stevenson, Taj Atwal, Stella Stocker, Louis Mandylor, Ray Fearon, Antonio Jaramillo, Lee Boardman, Natalie Anderson',
    synopsis: 'When Alex, an expert assassin, refuses to complete a job for a dangerous criminal organization, he becomes a target. FBI agents and Mexican intelligence are brought in to investigate the trail of bodies, leading them closer to Alex. With the crime syndicate and FBI in hot pursuit, Alex has the skills to stay ahead, except for one thing: he is struggling with severe memory loss, affecting his every move. Alex must question his every action and whom he can ultimately trust.',
  image: 'Memory.jpg',
    rating: '5.6/10',
    age: 'D17+',
    image_detail: 'Memory_c.jpg',
  ),
    movie(
    title: 'Mosul',
    duration: '102 Minutes',
    genre:  'Action, Drama, War',
    producer: 'Anthony Russo, Joe Russo, Mike Larocca, Jeremy Steckler, Dawn Ostroff',
    director: 'Matthew Michael Carnahan',
    writer: 'Matthew Michael Carnahan',
    production: 'Image Nation',
    casts:  'Suhail Dabbach, Waleed Elgadi, Adam Bessa, Ishaq Elias, Mohimen Mahbuba, Ben Affan, Mohamed Attougui',
    synopsis: 'After being rescued by an Iraqi SWAT team from an assault by insurgents, a policeman joins the team and is thrown into a world of secrecy and ceaseless, fierce fighting.',
  image: 'Mosul.jpg',
    rating: '7.1/10',
    age: 'TV-MA',
    image_detail: 'Mosul_c.jpg',
  ),
  movie(
    title: 'Satria Dewa Gatotkaca',
    duration: '129 Minutes',
    genre:  'Superhero',
    producer: 'Celerina Judisari',
    director: 'Hanung Bramantyo',
    writer: 'Rahabi Mandra, Hanung Bramantyo',
    production: 'Satria Dewa Studio',
    casts:  'Rizky Nazar, Yasmin Napper, Omar Daniel, Ali Fikry, Yayan Ruhian, Cecep Arif Rahman, Edward Akbar, Sigi Wimala, Jerome Kurnia, Yatti Surachman, Aghniny Haque',
    synopsis: "YUDA, a 22 year old young man who recently lost his job. In the midst of a tight situation, YUDA's world changes completely, because he witnesses his best friend and mother being killed by the evil hands of the Kauravas. YUDA discovers that there is a mysterious power within him. YUDA also realizes that destiny has called her to protect the people she loves. However, an enormous burden also fell on his shoulders. Can YUDA fulfill her destiny and use her mysterious powers to save those she loves?",
  image: 'Satria Dewa - Gatotkaca.jpg',
    rating: '5.0/10',
    age: '13+',
    image_detail: 'Satria Dewa - Gatotkaca_c.jpg',
  ),
    movie(
    title: 'The Ambush',
    duration: '111 Minutes',
    genre:  'Action, Drama, War',
    producer: 'Derek Dauchy, Stuart Ford, Jerome Lateur, Jennifer Roth, Gino Vassallo',
    director: 'Pierre Morel',
    writer: 'Brandon Birtell, Kurtis Birtell',
    production: 'AGC Studios, Imagenation Abu Dhabi FZ',
    casts:  'Omar Bin Haider, Marwan Abdullah, Mohammed Ahmed, Mansoor Al-Fili, Khalifa Albahri, Hassan Yousuf Alblooshi, Saeed AlHarsh, Abdullah Almaqbali, Ibrahim Almusharaakh, Salem Altamimi',
    synopsis: 'During a routine patrol in a mountainous, a UAE army vehicle is ambushed by enemy combatants, as it travels through a narrow canyon. Trapped and under heavy fire from the armed militants, and now facing a desperate situation, their courageous unit commander attempts a daring mission to rescue his trapped soldiers.',
  image: 'The Ambush.jpg',
    rating: '8.2/10',
    age: '17+',
    image_detail: 'The Ambush_c.jpg',
  ),
    movie(
    title: 'The Doll 3',
    duration: '115 Minutes',
    genre:  'Horror',
    producer: 'Rocky Soraya',
    director: 'Rocky Soraya',
    writer: 'Riheam Junianti',
    production: 'Hitmaker Studios',
    casts:  'Jessica Mila, Winky Wiryawan, Montserrat Gizelle, Muhammad Zidane, Masayu Anastasia, Sara Wijayanto, Jeremy Thomas',
    synopsis: "Tara asks the shaman to call her sister Gian's spirit inside Bobby's doll. But Gian (in Bobby's doll) who is always sweet to Tara, actually makes Aryan and Mika in danger, they even almost die. Will Tara succeed in stopping Gian? Will Aryan and Micah survive Gian's target?",
  image: 'The Doll 3.jpg',
    rating: '5.4/10',
    age: 'D17+',
    image_detail: 'The Doll 3_c.jpg',
  ),
    movie(
    title: 'Top Gun Maverick',
    duration: '130 Minutes',
    genre:  'Action, Drama',
    producer: 'Jerry Bruckheimer, Tom Cruise, David Ellison, Christopher McQuarrie',
    director: 'Joseph Kosinski',
    writer: 'Ehren Kruger, Eric Warren Singer, Christopher McQuarrie',
    production: 'Paramount Pictures',
    casts:  'Tom Cruise, Jennifer Connelly, Tom Cruise, Val Kilmer, Miles Teller, Lewis Pullman, Ed Harris, Jon Hamm, Glen Powell, Monica Barbaro, Manny Jacinto, Jean Louisa Kelly, India Everett',
    synopsis: "After more than 30 years of service as one of the Navy's top aviators, Pete Maverick Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him. Training a detachment of graduates for a special assignment, Maverick must confront the ghosts of his past and his deepest fears, culminating in a mission that demands the ultimate sacrifice from those who choose to fly it",
  image: 'Top Gun - Maverick.jpg',
    rating: '8.6/10',
    age: 'SU',
    image_detail: 'Top Gun - Maverick2_c.jpg',
  ),
];