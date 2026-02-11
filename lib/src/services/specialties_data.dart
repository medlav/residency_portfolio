// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav
import 'package:residency_portfolio/src/models/portfolio_category.dart';
import 'package:residency_portfolio/src/models/specialty.dart';
import 'package:residency_portfolio/src/services/specialties/specialties.dart';

/// A comprehensive map aggregating raw activity data for all supported medical specialties.
///
/// The keys represent the display names of the specialties, while the values
/// contain the hardcoded lists of activity requirements defined in the service layer.
final Map<String, List<Map<String, dynamic>>> kAllSpecialtyData = {
  "ALLERGOLOGIA": kOfficialAllergologiaEdImmunologiaClinicaActivities,
  "ANATOMIA PATOLOGICA": kOfficialAnatomiaPatologicaActivities,
  "ANESTESIA": kOfficialAnestesiaRianimazioneActivities,
  "AUDIOLOGIA": kOfficialAudiologiaFoniatriaActivities,
  "CARDIOLOGIA": kOfficialCardiologiaActivities,
  "CARDIOCHIRURGIA": kOfficialCardiochirurgiaActivities,
  "CHIRURGIA": kOfficialChirurgiaGeneraleActivities,
  "CHIRURGIA MAXILLO": kOfficialChirurgiaMaxilloFaccialeActivities,
  "CHIRURGIA PEDIATRICA": kOfficialChirurgiaPediatricaActivities,
  "CHIRURGIA PLASTICA": kOfficialChirurgiaPlasticaActivities,
  "CHIRURGIA TORACICA": kOfficialChirurgiaToracicaActivities,
  "CHIRURGIA VASCOLARE": kOfficialChirurgiaVascolareActivities,
  "CURE PRIMARIE": kOfficialMedicinaDiComunitaECurePrimarieActivities,
  "DERMATOLOGIA": kOfficialDermatologiaEVenereologiaActivities,
  "EMATOLOGIA": kOfficialEmatologiaActivities,
  "ENDOCRINOLOGIA": kOfficialEndocrinologiaEmetabolismoActivities,
  "FARMACOLOGIA": kOfficialFarmacologiaTossicologiaClinicaActivities,
  "FISIATRIA": kOfficialMedicinaFisicaRiabilitativaActivities,
  "GASTROENTEROLOGIA": kOfficialGastroenterologiaActivities,
  "GENETICA": kOfficialGeneticaMedicaActivities,
  "GERIATRIA": kOfficialGeriatriaActivities,
  "GINECOLOGIA": kOfficialGinecologiaOstetriciaActivities,
  "IGIENE": kOfficialIgieneMedicinaPreventivaActivities,
  "MALATTIE INFETTIVE": kOfficialMalattieInfettiveETropicaliActivities,
  "MEDICINA DEL LAVORO": kOfficialMedicinaDelLavoroActivities,
  "MEDICINA INTERNA": kOfficialMedicinaInternaActivities,
  "MEDICINA LEGALE": kOfficialMedicinaLegaleActivities,
  "MEDICINA NUCLEARE": kOfficialMedicinaNucleareActivities,
  "MEDICINA SPORT": kOfficialMedicinaDelloSportActivities,
  "MEDICINA TERMALE": kOfficialMedicinaTermaleActivities,
  "MEDICINA URGENZA": kOfficialMedicinaDiUrgenzaActivities,
  "MICROBIOLOGIA": kOfficialMicrobiologiaVirologiaActivities,
  "NEFROLOGIA": kOfficialNefrologiaActivities,
  "NEUROCHIRURGIA": kOfficialNeurochirurgiaActivities,
  "NEUROLOGIA": kOfficialNeurologiaActivities,
  "NEUROPSICHIATRIA": kOfficialNeuropsichiatriaInfantileActivities,
  "OCULISTICA": kOfficialOftalmologiaActivities,
  "ONCOLOGIA": kOfficialOncologiaMedicaActivities,
  "ORTOPEDIA": kOfficialOrtopediaTraumatologiaActivities,
  "OTORINO": kOfficialOtorinolaringoiatriaActivities,
  "PATOLOGIA": kOfficialPatologiaClinicaActivities,
  "PEDIATRIA": kOfficialPediatriaActivities,
  "PNEUMOLOGIA": kOfficialPneumologiaActivities,
  "PSICHIATRIA": kOfficialPsichiatriaActivities,
  "RADIOLOGIA": kOfficialRadiodiagnosticaActivities,
  "RADIOTERAPIA": kOfficialRadioterapiaActivities,
  "REUMATOLOGIA": kOfficialReumatologiaActivities,
  "SCIENZE ALIMENTAZIONE": kOfficialScienzeDellAlimentazioneActivities,
  "STATISTICA": kOfficialStatisticaSanitariaActivities,
  "UROLOGIA": kOfficialUrologiaActivities,
};

/// A list of plain-text specialty names available in the system.
final List<String> kAvailableSpecialties = kAllSpecialtyData.keys.toList();

/// A flattened list of every [PortfolioCategory] across all specialties.
///
/// Useful for global search functionality or indexing activities regardless of specialty.
final List<PortfolioCategory> allActivities = kAllSpecialtyData.values
    .expand((list) => list)
    .map((data) => PortfolioCategory.fromMap(data))
    .toList();

/// A mapped list of [Specialty] objects derived from [kAvailableSpecialties].
///
/// Automatically generates unique IDs by normalizing the specialty name.
final List<Specialty> listAvailableSpecialties = kAvailableSpecialties.map((
  name,
) {
  return Specialty(id: name.toLowerCase().replaceAll(' ', '_'), name: name);
}).toList();

/// Safely parses dynamic values into integers to handle inconsistent data types from raw maps.
int _parseInt(dynamic value) {
  if (value == null) return 0;
  if (value is int) return value;
  if (value is double) return value.toInt();
  if (value is String) {
    return int.tryParse(value) ?? 0;
  }
  return 0;
}

/// Internal cache for mapped specialty categories to prevent redundant processing.
Map<String, List<PortfolioCategory>>? _cachedSpecialtyCategories;

/// Provides a map of specialty keys to their respective list of [PortfolioCategory] objects.
///
/// The first access triggers the transformation of raw data in [kAllSpecialtyData]
/// into typed models. Subsequent calls return a cached version.
Map<String, List<PortfolioCategory>> get allSpecialtyCategories {
  if (_cachedSpecialtyCategories != null) return _cachedSpecialtyCategories!;

  _cachedSpecialtyCategories = kAllSpecialtyData.map((key, list) {
    final formattedKey = key.toLowerCase().replaceAll(' ', '_');

    final categories = list.map((data) {
      final String fullDescription = data['description'] ?? '';

      return PortfolioCategory(
        id: data['id'] ?? 0,
        name: data['name'] ?? "",
        description: fullDescription,

        amountType: data['amount_type'] ?? 'numero',

        minRequiredAmount: _parseInt(data['min_required_amount']),

        requiredDepartments: List<String>.from(
          data['required_departments'] ?? [],
        ),
      );
    }).toList();

    return MapEntry(formattedKey, categories);
  });

  return _cachedSpecialtyCategories!;
}

/// Retrieves the specific [PortfolioCategory] list for a given [specialtyKey].
///
/// The [specialtyKey] is case-insensitive and handles spaces/underscores automatically.
/// Returns an empty list if the specialty is not found.
List<PortfolioCategory> getPortfolioCategoriesForSpecialty(
  String specialtyKey,
) {
  // The key is a lower_snake_case (e.g., 'medicina_lavoro')
  final key = specialtyKey.toLowerCase().replaceAll(' ', '_');

  if (allSpecialtyCategories.containsKey(key)) {
    return allSpecialtyCategories[key]!;
  }

  return [];
}
