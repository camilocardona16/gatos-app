import 'package:gatos_app/app/home/domain/entities/document.dart';

List<Cat> catsFromJson(List<dynamic> str) =>
    List<CatModel>.from(str.map((x) => CatModel.fromJson(x)));

// class CatModel extends Cat {
//   CatModel(
//       {required int id,
//       required String code,
//       required String name,
//       required int idV2,
//       required int country})
//       : super(id: id, code: code, name: name, idV2: idV2, country: country);

//   factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
//         id: json["id"],
//         code: json["code"],
//         name: json["name"],
//         idV2: json["id_v2"],
//         country: json["country"],
//       );
// }

class CatModel extends Cat {
  CatModel({
    required WeightCat weight,
    required String id,
    required String name,
    required String temperament,
    required String origin,
    required String countryCodes,
    required String countryCode,
    required String description,
    required String lifeSpan,
    required int indoor,
    required int adaptability,
    required int affectionLevel,
    required int childFriendly,
    required int dogFriendly,
    required int energyLevel,
    required int grooming,
    required int healthIssues,
    required int intelligence,
    required int sheddingLevel,
    required int socialNeeds,
    required int strangerFriendly,
    required int vocalisation,
    required int experimental,
    required int hairless,
    required int natural,
    required int rare,
    required int rex,
    required int suppressedTail,
    required int shortLegs,
    required int hypoallergenic,
    String? cfaUrl,
    String? vetstreetUrl,
    String? vcahospitalsUrl,
    int? lap,
    String? altNames,
    String? wikipediaUrl,
    String? referenceImageId,
    ImageCat? image,
    int? catFriendly,
    int? bidability,
  }) : super(
            weight: weight,
            id: id,
            name: name,
            cfaUrl: cfaUrl,
            vetstreetUrl: vetstreetUrl,
            vcahospitalsUrl: vcahospitalsUrl,
            temperament: temperament,
            origin: origin,
            countryCodes: countryCodes,
            countryCode: countryCode,
            description: description,
            lifeSpan: lifeSpan,
            indoor: indoor,
            lap: lap,
            altNames: altNames,
            adaptability: adaptability,
            affectionLevel: affectionLevel,
            childFriendly: childFriendly,
            dogFriendly: dogFriendly,
            energyLevel: energyLevel,
            grooming: grooming,
            intelligence: intelligence,
            sheddingLevel: sheddingLevel,
            socialNeeds: socialNeeds,
            strangerFriendly: strangerFriendly,
            vocalisation: vocalisation,
            experimental: experimental,
            hairless: hairless,
            natural: natural,
            rare: rare,
            rex: rex,
            suppressedTail: suppressedTail,
            shortLegs: shortLegs,
            wikipediaUrl: wikipediaUrl,
            hypoallergenic: hypoallergenic,
            referenceImageId: referenceImageId,
            image: image,
            catFriendly: catFriendly,
            bidability: bidability,
            healthIssues: healthIssues);

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
        weight: WeightModel.fromJson(json["weight"]),
        id: json["id"],
        name: json["name"],
        cfaUrl: json["cfa_url"],
        vetstreetUrl: json["vetstreet_url"],
        vcahospitalsUrl: json["vcahospitals_url"],
        temperament: json["temperament"],
        origin: json["origin"],
        countryCodes: json["country_codes"],
        countryCode: json["country_code"],
        description: json["description"],
        lifeSpan: json["life_span"],
        indoor: json["indoor"],
        lap: json["lap"],
        altNames: json["alt_names"],
        adaptability: json["adaptability"],
        affectionLevel: json["affection_level"],
        childFriendly: json["child_friendly"],
        dogFriendly: json["dog_friendly"],
        energyLevel: json["energy_level"],
        grooming: json["grooming"],
        healthIssues: json["health_issues"],
        intelligence: json["intelligence"],
        sheddingLevel: json["shedding_level"],
        socialNeeds: json["social_needs"],
        strangerFriendly: json["stranger_friendly"],
        vocalisation: json["vocalisation"],
        experimental: json["experimental"],
        hairless: json["hairless"],
        natural: json["natural"],
        rare: json["rare"],
        rex: json["rex"],
        suppressedTail: json["suppressed_tail"],
        shortLegs: json["short_legs"],
        wikipediaUrl: json["wikipedia_url"],
        hypoallergenic: json["hypoallergenic"],
        referenceImageId: json["reference_image_id"],
        image:
            json["image"] == null ? null : ImageModel.fromJson(json["image"]),
        catFriendly: json["cat_friendly"],
        bidability: json["bidability"],
      );
}

class ImageModel extends ImageCat {
  ImageModel({
    required String id,
    required int width,
    required int height,
    required String url,
  }) : super(id: id, width: width, height: height, url: url);

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
      );
}

class WeightModel extends WeightCat {
  WeightModel({
    required String imperial,
    required String metric,
  }) : super(imperial: imperial, metric: metric);

  factory WeightModel.fromJson(Map<String, dynamic> json) => WeightModel(
        imperial: json["imperial"],
        metric: json["metric"],
      );
}
