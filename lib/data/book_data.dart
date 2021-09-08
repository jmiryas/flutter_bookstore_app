import '../models/author_model.dart';
import '../models/book_model.dart';

final List<String> discoverBooks = [
  "Classics",
  "New",
  "Upcoming",
  "Novels",
  "Comics",
  "Horrors",
  "Histories",
  "Science"
];

final List<BookModel> listOfBooks = [
  BookModel(
      name: "Orang Asing",
      author: "Albert Camus",
      rating: 4,
      description:
          "Through the story of an ordinary man unwittingly drawn into a senseless murder on an Algerian beach, Camus explored what he termed 'the nakedness of man faced with the absurd.' First published in English in 1946; now in a new translation by Matthew Ward.",
      genre: "Fiksi eksistensialisme",
      image: "images/albert_camus_the_stranger.jpg",
      imageAuthor: "images/albert_camus.jpg"),
  BookModel(
      name: "The Metamorphosis",
      author: "Franz Kafka",
      rating: 4,
      description:
          "With it's startling, bizarre, yet surprisingly funny first opening, Kafka begins his masterpiece, The Metamorphosis. It is the story of a young man who, transformed overnight into a giant beetle-like insect, becomes an object of disgrace to his family, an outsider in his own home, a quintessentially alienated man. A harrowing—though absurdly comic—meditation on human feelings of inadequacy, guilt, and isolation, The Metamorphosis has taken its place as one of the most widely read and influential works of twentieth-century fiction. As W.H. Auden wrote, 'Kafka is important to us because his predicament is the predicament of modern man.'",
      genre: "Fiksi absurd",
      image: "images/franz_kafka_the_metamorphosis.jpg",
      imageAuthor: "images/franz_kafka.jpg"),
  BookModel(
      name: "Nineteen Eighty-Four",
      author: "George Orwell",
      rating: 4,
      description:
          "Among the seminal texts of the 20th century, Nineteen Eighty-Four is a rare work that grows more haunting as its futuristic purgatory becomes more real. Published in 1949, the book offers political satirist George Orwell's nightmarish vision of a totalitarian, bureaucratic world and one poor stiff's attempt to find individuality. The brilliance of the novel is Orwell's prescience of modern life—the ubiquity of television, the distortion of the language—and his ability to construct such a thorough version of hell. Required reading for students since it was published, it ranks among the most terrifying novels ever written.",
      genre: "Fiksi distopia",
      image: "images/george_orwell_1984.jpg",
      imageAuthor: "images/george_orwell.jpg"),
  BookModel(
      name: "Collapse: How Societies Choose to Fail or Succeed",
      author: "Jared Diamond",
      rating: 4,
      description:
          "Brilliant, illuminating, and immensely absorbing, Collapse is destined to take its place as one of the essential books of our time, raising the urgent question: How can our world best avoid committing ecological suicide?",
      genre: "Nonfiksi",
      image: "images/jared_diamond_collapse.jpg",
      imageAuthor: "images/jared_diamond.jpg"),
  BookModel(
      name: "Sang Penguasa",
      author: "Niccolò Machiavelli",
      rating: 4,
      description:
          "Machiavelli needs to be looked at as he really was. Hence: Can Machiavelli, who makes the following observations, be Machiavellian as we understand the disparaging term? 1. So it is that to know the nature of a people, one need be a Prince; to know the nature of a Prince, one need to be of the people. 2. If a Prince is not given to vices that make him hated, it is unsusal for his subjects to show their affection for him. 3. Opportunity made Moses, Cyrus, Romulus, Theseus, and others; their virtue domi-nated the opportunity, making their homelands noble and happy. Armed prophets win; the disarmed lose. 4. Without faith and religion, man achieves power but not glory. 5. Prominent citizens want to command and oppress; the populace only wants to be free of oppression. 6. A Prince needs a friendly populace; otherwise in diversity there is no hope. 7. A Prince, who rules as a man of valor, avoids disasters, 8. Nations based on mercenary forces will never be solid or secure. 9. Mercenaries are dangerous because of their cowardice 10. There are two ways to fight: one with laws, the other with force. The first is rightly man’s way; the second, the way of beasts.",
      genre: "Nonfiksi",
      image: "images/niccolo_machiavelli_the_prince.jpg",
      imageAuthor: "images/niccolo_machiavelli.jpg")
];

final List<BookModel> listOfAlbertCamusBooks = [
  BookModel(
      name: "Orang Asing",
      author: "Albert Camus",
      rating: 4,
      description:
          "Through the story of an ordinary man unwittingly drawn into a senseless murder on an Algerian beach, Camus explored what he termed 'the nakedness of man faced with the absurd.' First published in English in 1946; now in a new translation by Matthew Ward.",
      genre: "Fiksi eksistensialisme",
      image: "images/albert_camus_the_stranger.jpg",
      imageAuthor: "images/albert_camus.jpg")
];

final List<BookModel> listOfFranzKafkaBooks = [
  BookModel(
      name: "The Metamorphosis",
      author: "Franz Kafka",
      rating: 4,
      description:
          "With it's startling, bizarre, yet surprisingly funny first opening, Kafka begins his masterpiece, The Metamorphosis. It is the story of a young man who, transformed overnight into a giant beetle-like insect, becomes an object of disgrace to his family, an outsider in his own home, a quintessentially alienated man. A harrowing—though absurdly comic—meditation on human feelings of inadequacy, guilt, and isolation, The Metamorphosis has taken its place as one of the most widely read and influential works of twentieth-century fiction. As W.H. Auden wrote, 'Kafka is important to us because his predicament is the predicament of modern man.'",
      genre: "Fiksi absurd",
      image: "images/franz_kafka_the_metamorphosis.jpg",
      imageAuthor: "images/franz_kafka.jpg")
];

final List<BookModel> listOfGeorgeOrwellBooks = [
  BookModel(
      name: "Nineteen Eighty-Four",
      author: "George Orwell",
      rating: 4,
      description:
          "Among the seminal texts of the 20th century, Nineteen Eighty-Four is a rare work that grows more haunting as its futuristic purgatory becomes more real. Published in 1949, the book offers political satirist George Orwell's nightmarish vision of a totalitarian, bureaucratic world and one poor stiff's attempt to find individuality. The brilliance of the novel is Orwell's prescience of modern life—the ubiquity of television, the distortion of the language—and his ability to construct such a thorough version of hell. Required reading for students since it was published, it ranks among the most terrifying novels ever written.",
      genre: "Fiksi distopia",
      image: "images/george_orwell_1984.jpg",
      imageAuthor: "images/george_orwell.jpg")
];

final List<BookModel> listOfJaredDiamondBooks = [
  BookModel(
      name: "Collapse: How Societies Choose to Fail or Succeed",
      author: "Jared Diamond",
      rating: 4,
      description:
          "Brilliant, illuminating, and immensely absorbing, Collapse is destined to take its place as one of the essential books of our time, raising the urgent question: How can our world best avoid committing ecological suicide?",
      genre: "Nonfiksi",
      image: "images/jared_diamond_collapse.jpg",
      imageAuthor: "images/jared_diamond.jpg")
];

final List<BookModel> listOfNiccoloMachiavelliBooks = [
  BookModel(
      name: "Sang Penguasa",
      author: "Niccolò Machiavelli",
      rating: 4,
      description:
          "Machiavelli needs to be looked at as he really was. Hence: Can Machiavelli, who makes the following observations, be Machiavellian as we understand the disparaging term? 1. So it is that to know the nature of a people, one need be a Prince; to know the nature of a Prince, one need to be of the people. 2. If a Prince is not given to vices that make him hated, it is unsusal for his subjects to show their affection for him. 3. Opportunity made Moses, Cyrus, Romulus, Theseus, and others; their virtue domi-nated the opportunity, making their homelands noble and happy. Armed prophets win; the disarmed lose. 4. Without faith and religion, man achieves power but not glory. 5. Prominent citizens want to command and oppress; the populace only wants to be free of oppression. 6. A Prince needs a friendly populace; otherwise in diversity there is no hope. 7. A Prince, who rules as a man of valor, avoids disasters, 8. Nations based on mercenary forces will never be solid or secure. 9. Mercenaries are dangerous because of their cowardice 10. There are two ways to fight: one with laws, the other with force. The first is rightly man’s way; the second, the way of beasts.",
      genre: "Nonfiksi",
      image: "images/niccolo_machiavelli_the_prince.jpg",
      imageAuthor: "images/niccolo_machiavelli.jpg")
];

final List<AuthorModel> listOfAuthors = [
  AuthorModel(
      name: "Albert Camus",
      image: "images/albert_camus.jpg",
      books: listOfAlbertCamusBooks),
  AuthorModel(
      name: "Franz Kafka",
      image: "images/franz_kafka.jpg",
      books: listOfFranzKafkaBooks),
  AuthorModel(
      name: "George Orwell",
      image: "images/george_orwell.jpg",
      books: listOfGeorgeOrwellBooks),
  AuthorModel(
      name: "Jared Diamond",
      image: "images/jared_diamond.jpg",
      books: listOfJaredDiamondBooks),
  AuthorModel(
      name: "Niccolo Machiavelli",
      image: "images/niccolo_machiavelli.jpg",
      books: listOfNiccoloMachiavelliBooks)
];
