# <img src="assets/icon/dark-icon.png" width="40"  vertical-align="middle"> R Portfolio (Residency Portfolio)

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-blue?logo=dart)

![Platform](https://img.shields.io/badge/Platform-Android-green)
![Platform](https://img.shields.io/badge/Platform-Windows-yellow)
![Platform](https://img.shields.io/badge/Platform-Linux-red)
![Platform](https://img.shields.io/badge/Platform-macOS-red)
![Platform](https://img.shields.io/badge/Platform-Web-yellow)
![Platform](https://img.shields.io/badge/Platform-iOS-yellow)

![License](https://img.shields.io/badge/License-BSD%203--Clause-blue)
![Status](https://img.shields.io/badge/Development-Alpha-red)

Current Version: `v0.1.0` [View API Docs](https://medlav.github.io/residency_portfolio/api/index.html) and [Visual Docs](https://medlav.github.io/residency_portfolio/)

A personal, open-source Flutter application developed to manage and document medical residency portfolio activities, with specific reference to **Italian Residency Schools and their normative and training requirements**.

This project is developed and maintained by **medlav** and will be available in a public GitHub repository. It was created primarily for personal organizational use and is shared openly in case it may be useful to others or serve as a basis for further development.

This is not production-grade software and should not be used as an official reporting system without independent verification.

---

<table>
  <tr>
    <td width="60%" valign="top">

## Context and Scope

Italian medical residency programs require structured documentation of:

* Clinical procedures
* Academic activities
* Teaching sessions
* Research contributions
* Competency-based milestones
* Specialty-specific normative requirements

This application aims to provide a simple, structured, and locally stored system for recording such activities.

It is not affiliated with any university, residency school, or governmental institution.

   </td>
   <td width="40%" valign="center">
     <img src="docs\screenshots\homepage_filled.png" width="180" alt="Homepage Screenshot">
   </td>
  </tr>
</table>

---

## Normative Context (Italy)

This application is designed to align with Italian postgraduate medical training frameworks (e.g., **D.M. 68/2015** and specialty-specific regulations). It facilitates the organization of required competencies, including:

* **Clinical & Procedure Logs:** Tracking surgical or diagnostic activities.
* **Academic Progress:** Recording teaching, research, and credits.
* **Reporting:** Structuring data for school-level competency reviews.

### Important Disclaimers

* **Non-Official:** This software is not a certified replacement for official university or ministerial documentation systems.
* **No Endorsement:** It is not affiliated with or endorsed by any public authority.
* **User Responsibility:** Users must verify that all recorded data meets the formal standards required by their specific residency program.

---

<table>
  <tr>
    <td width="40%" valign="top">
      <img src="docs\screenshots\info_dark.png" width="180" alt="Info Page Screenshot">
    </td>
    <td width="60%" valign="top">

## Project Status

* **Development Stage:** Pre-Alpha / Early Alpha
* **Platform:** Android (Flutter)
* **Stability:** Experimental

Expect:

* Incomplete features
* Interface changes
* Schema adjustments
* Breaking updates

This is a hobby project developed in spare time.

   </td>
  </tr>
</table>

---

<table>
  <tr>
    <td width="60%" valign="center">

### Portfolio Entry Management

* Create, edit, and delete portfolio entries
* Define custom categories aligned with specialty requirements
* Flexible quantitative tracking (counts, hours, credits)
* Structured metadata fields (institution, departments, notes)

   </td>
   <td width="40%" valign="center">
     <img src="docs\screenshots\activity_form_filled.png" width="180"alt="Portfolio Entry Form">
   </td>
  </tr>
</table>

<table>
  <tr>
     <td width="40%" valign="center">
     <img src="docs\screenshots\ongoing_filled_it_dark.png" width="180" alt="Portfolio Screenshot">
   </td>
    <td width="60%" valign="center">

### Temporal Tracking

* Support for past, ongoing, and planned activities
* Start and optional end dates
* ISO 8601 date format handling

   </td>

  </tr>
</table>

<table>
  <tr>
    <td width="60%" valign="center">

### Local-First Design

* SQLite database (`sqflite`) for structured data
* SharedPreferences for profile and configuration
* No cloud services | No analytics | No tracking

All data remains stored locally on the user’s device.

   </td>
   <td width="10%"></td>
   <td width="30%" valign="center" >
     <img src="docs\screenshots\backup_dark.png"  width="180" alt="Backup Screenshot">
   </td>
  </tr>
</table>

---

## Architecture Overview

The application uses:

**SQLite**

* Relational storage of categories and portfolio entries
* Parameterized queries to mitigate injection risks

**SharedPreferences**

* User profile data
* Residency year and specialty
* Application settings

There is currently no synchronization, encryption layer beyond platform defaults, or institutional integration.

---

## Installation

Clone the public repository:

```bash
git clone https://github.com/medlav/residency-portfolio.git
cd residency-portfolio
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

Build release APK:

```bash
flutter build apk --split-per-abi
```

---

## Testing

Example test execution:

```bash
flutter test test/database_security_test.dart
```

Test coverage is currently limited and may evolve over time.

---

## Limitations

* Android-only (current target) but iOS is easily build with proper flutter config
* No cloud backup
* No advanced encryption
* Not audited for regulatory compliance
* No formal validation against official residency documentation systems

Users remain responsible for ensuring compliance with their specific institutional or national requirements.

---

## Contributing

Contributions are welcome, including:

* Bug reports
* Refactoring suggestions
* UI improvements
* Expanded testing
* Adaptation for other residency systems or countries

To contribute:

1. Fork the repository
2. Create a feature branch
3. Submit a pull request

As this is a personal project, response times may vary. (Also my first FOSS project)

---

## License

This project is licensed under the **BSD 3-Clause License**.

You are free to use, modify, and redistribute the software under the terms of that license.

---

## Author

Developed and maintained by **medlav**.

This project was created as a personal tool to better structure and document residency activities in accordance with Italian training requirements. It is shared publicly in the spirit of openness and collaboration.

If it proves useful to others, that is a welcome outcome.

---
