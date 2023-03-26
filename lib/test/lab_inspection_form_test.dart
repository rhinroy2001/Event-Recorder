import 'package:event_recorder/labInspectionForm/chemicaluse.dart';
import 'package:event_recorder/labInspectionForm/firesafety.dart';
import 'package:event_recorder/labInspectionForm/labpractices.dart';
import 'package:event_recorder/labInspectionForm/safetyequipment_new.dart';
import 'package:event_recorder/labInspectionForm/signspostings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:event_recorder/labInspectionForm/generalinformation.dart';
import 'package:event_recorder/labInspectionForm/hazardouswaste_new.dart';
import '../labInspectionForm/chemicalhygiene.dart';
import '../labInspectionForm/personalprotection_new.dart';

Widget createGeneralInformationScreen() {
  return const MaterialApp(
      home: GeneralInfo(key: Key('general info'), title: ""));
}

Widget createFireSafetyScreen() {
  return const MaterialApp(
      home: FireSafety(key: Key('fire safety'), title: ""));
}

Widget createSignsAndPostingsScreen() {
  return const MaterialApp(
      home: SignsPostings(
    title: "",
    key: Key('signs and postings'),
  ));
}

Widget createChemicalHygienePlanScreen() {
  return const MaterialApp(
      home: ChemicalHygiene(
    title: "",
    key: Key('chemical hygiene'),
  ));
}

Widget createLabPracticesScreen() {
  return const MaterialApp(
      home: LabPractices(
    title: "",
    key: Key('lab practices'),
  ));
}

Widget createChemicalUseScreen() {
  return const MaterialApp(
    home: ChemicalUse(
      title: "",
      key: Key('chemical use'),
    ),
  );
}

Widget createSafetyEquipmentScreen() {
  return const MaterialApp(
      home: SafetyEquipment(
    title: "",
    key: Key('safety equipment'),
  ));
}

Widget createHazardousWasteScreen() {
  return const MaterialApp(
    home: HazardousWaste(
      title: "",
      key: Key('hazardous waste'),
    ),
  );
}

Widget createPersonalProtectionScreen() {
  return const MaterialApp(
    home: PersonalProtection(
      title: "",
      key: Key('personal protection'),
    ),
  );
}

void main() {
  group('General Information', () {
    testWidgets(
      "title is displayed",
      (WidgetTester tester) async {
        await tester.pumpWidget(createGeneralInformationScreen());
        await tester.pump();
        expect(find.text('General Information'), findsOneWidget);
      },
    );

    testWidgets('date text field', (WidgetTester tester) async {
      await tester.pumpWidget(createGeneralInformationScreen());
      await tester.enterText(find.byKey(Key('date')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('faculty text field', (WidgetTester tester) async {
      await tester.pumpWidget(createGeneralInformationScreen());
      await tester.enterText(find.byKey(Key('faculty')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('building room text field', (WidgetTester tester) async {
      await tester.pumpWidget(createGeneralInformationScreen());
      await tester.enterText(find.byKey(Key('buildingRoom')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('departemnt division text field', (WidgetTester tester) async {
      await tester.pumpWidget(createGeneralInformationScreen());
      await tester.enterText(find.byKey(Key('departmentDivision')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('inspector text field', (WidgetTester tester) async {
      await tester.pumpWidget(createGeneralInformationScreen());
      await tester.enterText(find.byKey(Key('inspector')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('phone text field', (WidgetTester tester) async {
      await tester.pumpWidget(createGeneralInformationScreen());
      await tester.enterText(find.byKey(Key('phone')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('confirm task', ((WidgetTester tester) async {
      await tester.pumpWidget(createGeneralInformationScreen());
      final checkboxFinder = find.byType(Checkbox);
      var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
      expect(checkbox.value, false);

      await tester.tap(checkboxFinder);
      await tester.pump();

      checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
      expect(checkbox.value, true);
    }));

    testWidgets('next button', ((WidgetTester tester) async {
      await tester.pumpWidget(createGeneralInformationScreen());
      final buttonFinder = find.byKey(Key('next'));
      await tester.dragUntilVisible(buttonFinder,
          find.byType(SingleChildScrollView), const Offset(0, 50));
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(find.byKey(Key('fire safety')), findsOneWidget);
    }));
  });

  group('Fire Safety', () {
    testWidgets("title is displayed", ((WidgetTester tester) async {
      await tester.pumpWidget(createFireSafetyScreen());
      await tester.pump();
      expect(find.text('General Fire Safety and Housekeeping'), findsOneWidget);
    }));

    testWidgets('task item labels', ((WidgetTester tester) async {
      await tester.pumpWidget(createFireSafetyScreen());
      expect(find.text('1. Aisles and walkways not free of tripping hazards'),
          findsOneWidget);
      expect(
          find.text(
              '2. High shelves and/or cabinet tops have items which may fall and injure someone'),
          findsOneWidget);
      expect(
          find.text(
              '3. Empty containers, boxes and broken equipment not promptly discarded'),
          findsOneWidget);
      expect(
          find.text(
              '4. Emergency exit or egress route blocked or poorly accessible'),
          findsOneWidget);
      expect(
          find.text('5. Power cord found in poor condition or not tie wrapped'),
          findsOneWidget);
      expect(find.text('6. Energized electric panel uncovered and/or blocked'),
          findsOneWidget);
      expect(find.text('7. Portable elctric heater used in the laboratory'),
          findsOneWidget);
      expect(
          find.text(
              '8. Failure to remedate non-hazardous chemical release within a timely manner'),
          findsOneWidget);
      expect(find.text('9. Laboratory doors propped open'), findsOneWidget);
      expect(find.text('10. Items stored within 18 inches of the ceiling'),
          findsOneWidget);
      expect(find.text('11. Workers do not use a safe platform for climbing'),
          findsOneWidget);
      expect(find.text('This page is completed.'), findsOneWidget);
    }));

    // for some reason this doesn't work with the checkbox 11 or the confirm task checkbox
    testWidgets('checkboxes', ((WidgetTester tester) async {
      await tester.pumpWidget(createFireSafetyScreen());
      final checkboxesFinder = find.byType(Checkbox);
      var checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
      expect(checkboxes.length, 12);

      for (int i = 1; i < checkboxes.length + 1; i++) {
        var checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, false);
        await tester.dragUntilVisible(checkboxFinder,
            find.byType(SingleChildScrollView), const Offset(0, 50));
        await tester.tap(checkboxFinder);
        await tester.pump();

        checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
        checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, true);
      }
    }));

    testWidgets('upload photo', ((WidgetTester tester) async {
      await tester.pumpWidget(createFireSafetyScreen());
      expect(find.byKey(Key('photo fire safety')), findsOneWidget);
    }));

    testWidgets('comments', (WidgetTester tester) async {
      await tester.pumpWidget(createFireSafetyScreen());
      await tester.enterText(find.byKey(Key('comments')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('next button', ((WidgetTester tester) async {
      await tester.pumpWidget(createFireSafetyScreen());
      final buttonFinder = find.byKey(Key('next'));
      await tester.dragUntilVisible(buttonFinder,
          find.byType(SingleChildScrollView), const Offset(0, 50));
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(find.byKey(Key('signs and postings')), findsOneWidget);
    }));
  });

  group('Signs and Postings', () {
    testWidgets("title is displayed", ((WidgetTester tester) async {
      await tester.pumpWidget(createSignsAndPostingsScreen());
      await tester.pump();
      expect(find.text('Signs and Postings'), findsOneWidget);
    }));
    testWidgets('task  item labels', ((WidgetTester tester) async {
      await tester.pumpWidget(createSignsAndPostingsScreen());
      expect(
          find.text(
              '12. Lab specific emergency contact list not updated or posted'),
          findsOneWidget);
      expect(
          find.text(
              '13. Emergency Produres not posted by the laboratory phone'),
          findsOneWidget);
      expect(
          find.text(
              '14. Laboratory refrigerators/freezer/microwaves not labeled \"Not for Food Use /\"Not for Flammable Liquid Storage\"'),
          findsOneWidget);
      expect(
          find.text('15. Cabinets and/or storage areas not labeled properly'),
          findsOneWidget);
      expect(find.text('This page is completed.'), findsOneWidget);
    }));

    testWidgets('upload photo', ((WidgetTester tester) async {
      await tester.pumpWidget(createSignsAndPostingsScreen());
      expect(find.byKey(Key('photo signs and postings')), findsOneWidget);
    }));

    testWidgets('checkboxes', ((WidgetTester tester) async {
      await tester.pumpWidget(createSignsAndPostingsScreen());
      final checkboxesFinder = find.byType(Checkbox);
      var checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
      expect(checkboxes.length, 5);

      for (int i = 1; i < checkboxes.length + 1; i++) {
        var checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, false);
        await tester.dragUntilVisible(checkboxFinder,
            find.byType(SingleChildScrollView), const Offset(0, 50));
        await tester.tap(checkboxFinder);
        await tester.pump();

        checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
        checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, true);
      }
    }));

    testWidgets('comments', (WidgetTester tester) async {
      await tester.pumpWidget(createSignsAndPostingsScreen());
      await tester.enterText(find.byKey(Key('comments')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('next button', ((WidgetTester tester) async {
      await tester.pumpWidget(createSignsAndPostingsScreen());
      final buttonFinder = find.byKey(Key('next'));
      await tester.dragUntilVisible(buttonFinder,
          find.byType(SingleChildScrollView), const Offset(0, 50));
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(find.byKey(Key('chemical hygiene')), findsOneWidget);
    }));
  });

  group('Chemical Hygiene Plan and Training Records', () {
    testWidgets("title is displayed", ((WidgetTester tester) async {
      await tester.pumpWidget(createChemicalHygienePlanScreen());
      await tester.pump();
      expect(find.text('Chemical Hygiene Plan and Training Records'),
          findsOneWidget);
    }));

    testWidgets('comments', (WidgetTester tester) async {
      await tester.pumpWidget(createChemicalHygienePlanScreen());
      await tester.enterText(find.byKey(Key('comments')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('task  item labels', ((WidgetTester tester) async {
      await tester.pumpWidget(createChemicalHygienePlanScreen());
      expect(
          find.text('16. Chemical Hygiene Plan unavailable'), findsOneWidget);
      expect(find.text("17. MSDS's unavailable for lab employees"),
          findsOneWidget);
      expect(
          find.text('18. Laboratory Safety and Compliance training outdated'),
          findsOneWidget);
      expect(
          find.text(
              'a. Annual Lab Specific Training Outline unavailable and/or attendance not documented'),
          findsOneWidget);
      expect(find.text('b. New Employees have not attended safety training'),
          findsOneWidget);
      expect(
          find.text(
              '19. Annual Lab Specific Training Outline unavailable and/or attendance not documented'),
          findsOneWidget);
      expect(find.text('20. Chemical inventory unavailable'), findsOneWidget);
      expect(
          find.text('21. Previous lab inspection not posted'), findsOneWidget);
      expect(find.text('This page is completed.'), findsOneWidget);
    }));

    testWidgets('checkboxes', ((WidgetTester tester) async {
      await tester.pumpWidget(createChemicalHygienePlanScreen());
      final checkboxesFinder = find.byType(Checkbox);
      var checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
      expect(checkboxes.length, 9);

      for (int i = 1; i < checkboxes.length + 1; i++) {
        var checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, false);
        await tester.dragUntilVisible(checkboxFinder,
            find.byType(SingleChildScrollView), const Offset(0, 50));
        await tester.tap(checkboxFinder);
        await tester.pump();

        checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
        checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, true);
      }
    }));

    testWidgets('upload photo', ((WidgetTester tester) async {
      await tester.pumpWidget(createChemicalHygienePlanScreen());
      expect(find.byKey(Key('photo chemical hygiene')), findsOneWidget);
    }));

    testWidgets('next button', ((WidgetTester tester) async {
      await tester.pumpWidget(createChemicalHygienePlanScreen());
      final buttonFinder = find.byKey(Key('next'));
      await tester.dragUntilVisible(buttonFinder,
          find.byType(SingleChildScrollView), const Offset(0, 50));
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(find.byKey(Key('lab practices')), findsOneWidget);
    }));
  });

  group('Labaratory Practices', () {
    testWidgets("title is displayed", ((WidgetTester tester) async {
      await tester.pumpWidget(createLabPracticesScreen());
      await tester.pump();
      expect(find.text('Laboratory Practices'), findsOneWidget);
    }));

    testWidgets('task  item labels', ((WidgetTester tester) async {
      await tester.pumpWidget(createLabPracticesScreen());
      expect(find.text('22. Gloves are work outside the lab'), findsOneWidget);
      expect(
          find.text(
              "23. Evidence of personnel eating or drinking in the laboratory"),
          findsOneWidget);
      expect(find.text('24. Food items stored with hazardous chemicals'),
          findsOneWidget);
      expect(
          find.text(
              '25. Hazardous chemicals not carried in secondary/spill-proof containers when transported through corridors/elevators'),
          findsOneWidget);
      expect(find.text('This page is completed.'), findsOneWidget);
    }));

    testWidgets('upload photo', ((WidgetTester tester) async {
      await tester.pumpWidget(createLabPracticesScreen());
      expect(find.byKey(Key('photo lab practices')), findsOneWidget);
    }));

    testWidgets('comments', (WidgetTester tester) async {
      await tester.pumpWidget(createLabPracticesScreen());
      await tester.enterText(find.byKey(Key('comments')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('checkboxes', ((WidgetTester tester) async {
      await tester.pumpWidget(createLabPracticesScreen());
      final checkboxesFinder = find.byType(Checkbox);
      var checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
      expect(checkboxes.length, 5);

      for (int i = 1; i < checkboxes.length + 1; i++) {
        var checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, false);
        await tester.dragUntilVisible(checkboxFinder,
            find.byType(SingleChildScrollView), const Offset(0, 50));
        await tester.tap(checkboxFinder);
        await tester.pump();

        checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
        checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, true);
      }
    }));

    testWidgets('next button', ((WidgetTester tester) async {
      await tester.pumpWidget(createLabPracticesScreen());
      final buttonFinder = find.byKey(Key('next'));
      await tester.dragUntilVisible(buttonFinder,
          find.byType(SingleChildScrollView), const Offset(0, 50));
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(find.byKey(Key('chemical use')), findsOneWidget);
    }));
  });

  group('Chemical Use and Storage', () {
    testWidgets("title is displayed", ((WidgetTester tester) async {
      await tester.pumpWidget(createChemicalUseScreen());
      await tester.pump();
      expect(find.text('Chemical Use and Storage'), findsOneWidget);
    }));

    testWidgets('task  item labels', ((WidgetTester tester) async {
      await tester.pumpWidget(createChemicalUseScreen());
      expect(find.text('26. Chemicals not properly segregated by hazard class'),
          findsOneWidget);
      expect(
          find.text(
              "27. High-pressure gas cylinders unsecured, uncapped, or transported unsafely"),
          findsOneWidget);
      expect(find.text('28. Hazardous chemicals stored above eye level'),
          findsOneWidget);
      expect(
          find.text(
              '29. Fume hood used as storage area for hazardous chemicals'),
          findsOneWidget);
      expect(
          find.text(
              '30. Excessive quantities of hazardous chemicals/reagents stored on lab bench top'),
          findsOneWidget);
      expect(find.text('31. Hazardous chemicals/reagents stored on the floor'),
          findsOneWidget);
      expect(
          find.text(
              '32. Chemicals susceptible to peroxide formation are not dated/expired'),
          findsOneWidget);
      expect(
          find.text(
              '33. Chemicals not labeled with the following information:'),
          findsOneWidget);
      expect(find.text('a. Full chemical name'), findsOneWidget);
      expect(find.text('b. Chemical concentration'), findsOneWidget);
      expect(find.text('c. Hazard class'), findsOneWidget);
      expect(
          find.text(
              '34. Storing an uncapped chemical container or allowing a chemical liquid to evaporate inside or outside the fume hood'),
          findsOneWidget);
      expect(
          find.text(
              '35. Flammable liquids not stored in flammable storage cabinet'),
          findsOneWidget);
      expect(
          find.text('36. Flammable storage cabinets not located in safe area'),
          findsOneWidget);
      expect(find.text('37. Excessive quantities of flammable liquids present'),
          findsOneWidget);
      expect(
          find.text(
              '38. Flammable liquids are stored in non-explosion-proof/non-flammable-proof refrigerator'),
          findsOneWidget);
      expect(
          find.text(
              '39. Unattended chemicals not secured against unauthorized access'),
          findsOneWidget);
      expect(find.text('This page is completed.'), findsOneWidget);
    }));

    testWidgets('checkboxes', ((WidgetTester tester) async {
      await tester.pumpWidget(createChemicalUseScreen());
      final checkboxesFinder = find.byType(Checkbox);
      var checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
      expect(checkboxes.length, 18);

      for (int i = 1; i < checkboxes.length + 1; i++) {
        var checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, false);
        await tester.dragUntilVisible(checkboxFinder,
            find.byType(SingleChildScrollView), const Offset(0, 50));
        await tester.tap(checkboxFinder);
        await tester.pump();

        checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
        checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, true);
      }
    }));

    testWidgets('upload photo', ((WidgetTester tester) async {
      await tester.pumpWidget(createChemicalUseScreen());
      expect(find.byKey(Key('photo chemical use')), findsOneWidget);
    }));

    testWidgets('comments', (WidgetTester tester) async {
      await tester.pumpWidget(createChemicalUseScreen());
      await tester.enterText(find.byKey(Key('comments')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });
  });

  group('Safety Equipment', () {
    testWidgets("title is displayed", ((WidgetTester tester) async {
      await tester.pumpWidget(createSafetyEquipmentScreen());
      await tester.pump();
      expect(find.text('Safety Equipment and Engineering Controls'),
          findsOneWidget);
    }));

    testWidgets('task  item labels', ((WidgetTester tester) async {
      await tester.pumpWidget(createSafetyEquipmentScreen());
      expect(find.text('40. Eye Wash Station'), findsOneWidget);
      expect(find.text("a. Unavailable or not accessible/blocked"),
          findsOneWidget);
      expect(find.text('b. Weekly inspection not documented'), findsOneWidget);
      expect(find.text('41. Safety shower unavailable or not accessible'),
          findsOneWidget);
      expect(
          find.text(
              '42. First aid kit location not known and/or not available'),
          findsOneWidget);
      expect(
          find.text(
              '43. Fire extinguisher not readily accessible and/or inspected'),
          findsOneWidget);
      expect(find.text('44. Fume Hood'), findsOneWidget);
      expect(
          find.text(
              'a. Unavailable or not used when handling hazardous chemicals'),
          findsOneWidget);
      expect(find.text('b. Not inspected annaually'), findsOneWidget);
      expect(
          find.text('c. Chemical containers not capped or in poor condition'),
          findsOneWidget);
      expect(
          find.text('d. Performance impeded by overcrowding'), findsOneWidget);
      expect(find.text('45. Vacuum System'), findsOneWidget);
      expect(find.text('a. In-house vacuum system not adequately protected'),
          findsOneWidget);
      expect(find.text('b. Vacuum system flask not labeled and protected'),
          findsOneWidget);
      expect(find.text('This page is completed.'), findsOneWidget);
    }));

    testWidgets('checkboxes', ((WidgetTester tester) async {
      await tester.pumpWidget(createSafetyEquipmentScreen());
      final checkboxesFinder = find.byType(Checkbox);
      var checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
      expect(checkboxes.length, 15);

      for (int i = 1; i < checkboxes.length + 1; i++) {
        var checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, false);
        await tester.dragUntilVisible(checkboxFinder,
            find.byType(SingleChildScrollView), const Offset(0, 50));
        await tester.tap(checkboxFinder);
        await tester.pump();

        checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
        checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, true);
      }
    }));
    testWidgets('upload photo', ((WidgetTester tester) async {
      await tester.pumpWidget(createSafetyEquipmentScreen());
      expect(find.byKey(Key('photo safety equipment')), findsOneWidget);
    }));

    testWidgets('comments', (WidgetTester tester) async {
      await tester.pumpWidget(createSafetyEquipmentScreen());
      await tester.enterText(find.byKey(Key('comments')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('next button', ((WidgetTester tester) async {
      await tester.pumpWidget(createSafetyEquipmentScreen());
      final buttonFinder = find.byKey(Key('next'));
      await tester.dragUntilVisible(buttonFinder,
          find.byType(SingleChildScrollView), const Offset(0, 50));
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(find.byKey(Key('hazardous waste')), findsOneWidget);
    }));
  });

  group('Hazardous Waste Compliance', () {
    testWidgets("title is displayed", ((WidgetTester tester) async {
      await tester.pumpWidget(createHazardousWasteScreen());
      await tester.pump();
      expect(find.text('Hazardous Waste Compliance'), findsOneWidget);
    }));

    testWidgets('task  item labels', ((WidgetTester tester) async {
      await tester.pumpWidget(createHazardousWasteScreen());
      expect(
          find.text('46. Hazardous Chemical Waste Labeling'), findsOneWidget);
      expect(find.text("a. Not labeled \"Waste\"  or \"Hazardous Waste\""),
          findsOneWidget);
      expect(
          find.text('b. All chemical components not listed'), findsOneWidget);
      expect(find.text('c. No accumulation start date'), findsOneWidget);
      expect(find.text('47. Hazardous Chemical Waste Storage'), findsOneWidget);
      expect(find.text('a. Not segrated by hazard class'), findsOneWidget);
      expect(
          find.text('b. Greater than one container per chemical waste stream'),
          findsOneWidget);
      expect(
          find.text(
              'c. Excessive amounts of hazardous wastes accumulated (chemical. biological, radioactive)'),
          findsOneWidget);
      expect(find.text('d. Accumulation start date greater than one year'),
          findsOneWidget);
      expect(find.text('48. Sharps, Broken Glass, Empty Containers:'),
          findsOneWidget);
      expect(
          find.text('a. Sharps containers not used or disposed of improperly'),
          findsOneWidget);
      expect(find.text('b. Broken Glass not placed in proper receptacle'),
          findsOneWidget);
      expect(
          find.text(
              'c. Failed to triple rinse and remove/mark out labels of empty chemical containers'),
          findsOneWidget);
      expect(find.text('49. Mercury/Chemical Spills:'), findsOneWidget);
      expect(
          find.text('a. Broken mercury thermometer not contained or labeled'),
          findsOneWidget);
      expect(
          find.text(
              'b. Failure to promptly report a mercury/ chemical release'),
          findsOneWidget);
      expect(find.text('This page is completed.'), findsOneWidget);
    }));
    testWidgets('checkboxes', ((WidgetTester tester) async {
      await tester.pumpWidget(createHazardousWasteScreen());
      final checkboxesFinder = find.byType(Checkbox);
      var checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
      expect(checkboxes.length, 17);

      for (int i = 1; i < checkboxes.length + 1; i++) {
        var checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, false);
        await tester.dragUntilVisible(checkboxFinder,
            find.byType(SingleChildScrollView), const Offset(0, 50));
        await tester.tap(checkboxFinder);
        await tester.pump();

        checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
        checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, true);
      }
    }));
    testWidgets('upload photo', ((WidgetTester tester) async {
      await tester.pumpWidget(createHazardousWasteScreen());
      expect(find.byKey(Key('photo hazardous waste')), findsOneWidget);
    }));

    testWidgets('comments', (WidgetTester tester) async {
      await tester.pumpWidget(createHazardousWasteScreen());
      await tester.enterText(find.byKey(Key('comments')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('next button', ((WidgetTester tester) async {
      await tester.pumpWidget(createHazardousWasteScreen());
      final buttonFinder = find.byKey(Key('next'));
      await tester.dragUntilVisible(buttonFinder,
          find.byType(SingleChildScrollView), const Offset(0, 50));
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(find.byKey(Key('personal protection')), findsOneWidget);
    }));
  });

  group('Personal Protection', () {
    testWidgets("title is displayed", ((WidgetTester tester) async {
      await tester.pumpWidget(createPersonalProtectionScreen());
      await tester.pump();
      expect(find.text('Personal Protection'), findsOneWidget);
    }));

    testWidgets('task  item labels', ((WidgetTester tester) async {
      await tester.pumpWidget(createPersonalProtectionScreen());
      expect(
          find.text(
              '50. Respirators used without proper clearance/fit testing/training'),
          findsOneWidget);
      expect(
          find.text(
              "51. Personal protective equipment (e.g., gloves, safety glasses, lab coat) unavailable quantity"),
          findsOneWidget);
      expect(
          find.text(
              '52. Gloves, safety glasses, or other protective equipment not worn while working with hazardous chemicals/reagents'),
          findsOneWidget);
      expect(
          find.text(
              '53. Evidence of open toad shoes (sandals, etc.) worn in the laboratory'),
          findsOneWidget);
      expect(find.text('This page is completed.'), findsOneWidget);
    }));

    testWidgets('checkboxes', ((WidgetTester tester) async {
      await tester.pumpWidget(createPersonalProtectionScreen());
      final checkboxesFinder = find.byType(Checkbox);
      var checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
      expect(checkboxes.length, 5);

      for (int i = 1; i < checkboxes.length + 1; i++) {
        var checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, false);
        await tester.dragUntilVisible(checkboxFinder,
            find.byType(SingleChildScrollView), const Offset(0, 50));
        await tester.tap(checkboxFinder);
        await tester.pump();

        checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
        checkboxFinder =
            find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, true);
      }
    }));
    testWidgets('upload photo', ((WidgetTester tester) async {
      await tester.pumpWidget(createPersonalProtectionScreen());
      expect(find.byKey(Key('photo personal protection')), findsOneWidget);
    }));

    testWidgets('comments', (WidgetTester tester) async {
      await tester.pumpWidget(createPersonalProtectionScreen());
      await tester.enterText(find.byKey(Key('comments')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('next button', ((WidgetTester tester) async {
      await tester.pumpWidget(createPersonalProtectionScreen());
      final buttonFinder = find.byKey(Key('next'));
      await tester.dragUntilVisible(buttonFinder,
          find.byType(SingleChildScrollView), const Offset(0, 50));
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(find.byKey(Key('signature form')), findsOneWidget);
    }));
  });
}
