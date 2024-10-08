class Cat {
  Cat({
    required this.weight,
    required this.id,
    required this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    this.lap,
    this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    this.wikipediaUrl,
    required this.hypoallergenic,
    this.referenceImageId,
    this.image,
    this.catFriendly,
    this.bidability,
  });

  WeightCat weight;
  String id;
  String name;
  String? cfaUrl;
  String? vetstreetUrl;
  String? vcahospitalsUrl;
  String temperament;
  String origin;
  String countryCodes;
  String countryCode;
  String description;
  String lifeSpan;
  int indoor;
  int? lap;
  String? altNames;
  int adaptability;
  int affectionLevel;
  int childFriendly;
  int dogFriendly;
  int energyLevel;
  int grooming;
  int healthIssues;
  int intelligence;
  int sheddingLevel;
  int socialNeeds;
  int strangerFriendly;
  int vocalisation;
  int experimental;
  int hairless;
  int natural;
  int rare;
  int rex;
  int suppressedTail;
  int shortLegs;
  String? wikipediaUrl;
  int hypoallergenic;
  String? referenceImageId;
  ImageCat? image;
  int? catFriendly;
  int? bidability;
}

class ImageCat {
  ImageCat({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
  });

  String id;
  int width;
  int height;
  String url;
}

class WeightCat {
  WeightCat({
    required this.imperial,
    required this.metric,
  });

  String imperial;
  String metric;
}
