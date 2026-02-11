// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';

/// A widget that displays an informational button regarding portfolio data sources.
///
/// When pressed, this widget triggers an [AlertDialog] containing legal and
/// regulatory disclaimers in both Italian and English. It informs the user
/// that the residency curriculum standards are based on official ministerial
/// decrees but may vary by individual school.
class DisclaimerInfoCategoriesButton extends StatelessWidget {
  const DisclaimerInfoCategoriesButton({super.key});

  /// Displays the curriculum disclaimer dialog.
  ///
  /// The dialog provides context on the legal basis of the training activities,
  /// specifically referencing the "Allegato 2 del D.I. 402/2017".
  ///
  /// It uses [RichText] to highlight specific regulatory references and handles
  /// scrollability for smaller screens using a [SingleChildScrollView].
  ///
  /// * [context]: The build context required to show the dialog and access
  ///   the current [ColorScheme] for themed text rendering.
  static void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final textColor = Theme.of(context).colorScheme.onSurface;
        return AlertDialog(
          title: const Text("Info Portfolio"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(
                      context,
                    ).style.copyWith(fontSize: 14, color: textColor),
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Disclaimer (IT):\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const TextSpan(
                        text:
                            'Le attività previste per ogni Scuola di Specializzazione sono state create sulla base dell\'',
                      ),
                      const TextSpan(
                        text: 'Allegato 2 del D.I. 402/2017',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text:
                            ', che regola gli standard, i requisiti e gli indicatori di attività formativa. Si noti che ogni singola Scuola può avere regolamenti e piani formativi interni specifici. Per i dettagli completi, consultare il Decreto Interministeriale n. 402/2017 e l\'Allegato 2.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style.copyWith(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      color: textColor,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Disclaimer (EN):\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const TextSpan(
                        text:
                            'The activities listed for each Specialization School were created based on ',
                      ),
                      const TextSpan(
                        text: 'Annex 2 of the D.I. 402/2017',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text:
                            ', which governs the standards, requirements, and indicators for training activities. Note that each School may have its own specific internal regulations and training plans. For complete details, please consult the Interministerial Decree n. 402/2017 and Annex 2.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  /// Builds an [IconButton] that serves as the entry point for the disclaimer.
  ///
  /// The icon is an [Icons.info_outline] styled with the primary color
  /// of the current application theme.
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.info_outline),
      color: Theme.of(context).colorScheme.primary,
      onPressed: () => showCustomDialog(context),
    );
  }
}
