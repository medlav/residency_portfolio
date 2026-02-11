
# 📝 TODO.md (Path to v0.0.1 Alpha)

> **Status:** Pre-Alpha
> **Primary Goal:** Stabilize logic and data integrity for first Alpha release.

## 🔴 High Priority: Data & Logic

* [ ] **Date Selection Logic:** - Add `bool allowPastDates` to the Form class.
* Update `showDatePicker` constraints to respect the toggle.


* [ ] **Agenda Filtering:** - Implement logic: `startDate <= now` AND `endDate >= now`.
* Apply filter to "Ongoing" dashboard/list views.


* [ ] **Export Logic (QA):** - Test `path_provider` pathing on physical devices.
* Validate the file-sharing stream for `.db` or `.json` exports.


* [ ] **Backup Engine:** - Write the database import/restore logic (Critical for Pre-Alpha).

## 🟡 Medium Priority: Optimization & UI

* [ ] **Performance Audit:** - Audit `Provider` listeners to prevent unnecessary UI rebuilds.
* Ensure `SimpleTable` optimizations are scaling correctly.


* [ ] **UI Review:** - Final check on the hybrid Dashboard/Table view for completed items.
* Verify Privacy Policy page content (Markdown/Static).



## 🔵 Low Priority: DevOps & Docs

* [ ] **Repo Sanitization:** - Clean up redundant comments and old `DONE` notes in the code.
* Ensure DartDocs are complete for all core models.


* [ ] **GitHub Initial Push:** - Re-init repository (if needed) to remove sensitive history.
* Push to Private GitHub repo.


* [ ] **Release Prep:** - Finalize APK build links.
* Setup "F-Droid style" GitHub Pages landing page.



---

### 📋 Task Breakdown for Next Session

| Task | Category | Files to Touch |
| --- | --- | --- |
| **Past/Future Toggle** | Logic | `activity_form.dart`, `date_picker_util.dart` |
| **Ongoing Filter** | Logic | `portfolio_provider.dart`, `agenda_view.dart` |
| **Backup Logic** | QA | `database_helper.dart`, `export_service.dart` |

---
