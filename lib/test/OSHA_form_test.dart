import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../OSHAForm/OSHAForm.dart';

// For tests to work! Change font-size of widget.label for each category to 10. OR this will throw a overflow error.

Widget createOSHAFormScreen() {
  return const MaterialApp(
    home: OSHA(
      title: "",
      key: Key('OSHA form'),
    ),
  );
}

void main() {
  group('OSHA Form', () {
    testWidgets("title is displayed", (WidgetTester tester) async {
      await tester.pumpWidget(createOSHAFormScreen());
      await tester.pump();
      expect(find.text('OSHA Form'), findsOneWidget);
    });

    testWidgets('grouping labels', ((WidgetTester tester) async {
      await tester.pumpWidget(createOSHAFormScreen());
      expect(find.text('Tripping Hazards'), findsOneWidget);
      expect(find.text('Falling Objects'), findsOneWidget);
      expect(find.text('Broken Equipment'), findsOneWidget);
      expect(find.text('Emergency Exit Route'), findsOneWidget);
      expect(find.text('Power Cord Management'), findsOneWidget);
      expect(find.text('Electrical Panel'), findsOneWidget);
      expect(find.text('Safe platform for climbing'), findsOneWidget);
      expect(find.text('Correct Labeling'), findsOneWidget);
      expect(find.text('Chemical Hygiene Plan'), findsOneWidget);
      expect(find.text('Training'), findsOneWidget);
      expect(find.text('Posting for previous inspection'), findsOneWidget);
      expect(find.text('Transporting chemicals'), findsOneWidget);
      expect(find.text('Fume Hood'), findsOneWidget);
      expect(find.text('Safety Shower'), findsOneWidget);
      expect(find.text('First Aid Kit'), findsOneWidget);
      expect(find.text('Fire Extinquisher'), findsOneWidget);
      expect(find.text('Sharps, Broken Glass, and Empty Containers'),
          findsOneWidget);
      expect(find.text('Respirators'), findsOneWidget);
      expect(find.text('Personal Protection Equipment'), findsOneWidget);
    }));

    testWidgets('grouping options', ((WidgetTester tester) async {
      await tester.pumpWidget(createOSHAFormScreen());
      expect(
          find.text(
              '1910.22(a)(1) - All places of employment, passageways, storerooms, service rooms, and walking-working surfaces are kept in a clean, orderly, and sanitary condition.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.22(a)(3) - Walking-working surfaces are maintained free of hazards such as sharp or protruding objects, loose boards, corrosion, leaks, spills, snow, and ice.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.28(c) - Protection from falling objects. When an employee is exposed to falling objects, the employer must ensure that each employee wears head protection that meets the requirements of subpart I of this part. In addition, the employer must protect employees from falling objects.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.334(c)(2) - Visual inspection. Test instruments and equipment and all associated test leads, cables, power cords, probes, and connectors shall be visually inspected for external defects and damage before the equipment is used. If there is a defect or evidence of damage that might expose an employee to injury, the defective or damaged item shall be removed from service, and no employee may use it until repairs and tests necessary to render the equipment safe have been made.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.303(b)(7)(iii) - Internal parts of electrical equipment, including busbars, wiring terminals, insulators, and other surfaces, may not be damaged or contaminated by foreign materials such as paint, plaster, cleaners, abrasives, or corrosive residues.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.303(b)(7)(iv) - There shall be no damaged parts that may adversely affect safe operation or mechanical strength of the equipment, such as parts that are broken, bent, cut, or deteriorated by corrosion, chemical action, or overheating.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.37(a)(3) - Exit routes must be free and unobstructed. No materials or equipment may be placed, either permanently or temporarily, within the exit route. The exit access must not go through a room that can be locked, such as a bathroom, to reach an exit or exit discharge, nor may it lead into a dead-end corridor. Stairs or a ramp must be provided where the exit route is not substantially level.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.303(b) - Examination, installation, and use of equipment.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.305(a)(2)(x) - Flexible cords and cables shall be protected from accidental damage, as might be caused, for example, by sharp corners, projections, and doorways or other pinch points.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.303(g)(1)(i) - Working space for equipment likely to require examination, adjustment, servicing, or maintenance while energized shall comply with the following dimensions, except as required or permitted elsewhere in this subpart.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.305(b)(3)(iii) - Covers for boxes shall be permanently marked \"HIGH VOLTAGE.\" The marking shall be on the outside of the box cover and shall be readily visible and legible.'),
          findsOneWidget);
      expect(find.text('1910.23(c) - Portable ladders.'), findsOneWidget);
      expect(
          find.text(
              '1910.1450(h)(1)(i) or 1910.1200(b)(3)(i) - Employers shall ensure that labels on incoming containers of hazardous chemicals are not removed or defaced.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.1200(f)(9) - The employer shall not remove or deface existing labels on incoming containers of hazardous chemicals, unless the container is immediately marked with the required information.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.1200(f)(10) - The employer shall ensure that workplace labels or other forms of warning are legible, in English, and prominently displayed on the container, or readily available in the work area throughout each work shift. Employers having employees who speak other languages may add the information in their language to the material presented, as long as the information is presented in English as well.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.1200(i)(1) - The chemical manufacturer, importer, or employer may withhold the specific chemical identity, including the chemical name, other specific identification of a hazardous chemical, or the exact percentage (concentration) of the substance in a mixture, from the safety data sheet.'),
          findsOneWidget);
      expect(find.text('1910.1450(e) Chemical hygiene plan - General'),
          findsOneWidget);
      expect(find.text('1910.132(f) Training. (PPE)'), findsOneWidget);
      expect(
          find.text(
              '1910.1450(f)(1) (Chemical Hazards) - The employer shall provide employees with information and training to ensure that they are apprised of the hazards of chemicals present in their work area.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.132(d)(2) - The employer shall verify that the required workplace hazard assessment has been performed through a written certification that identifies the workplace evaluated; the person certifying that the evaluation has been performed; the date(s) of the hazard assessment; and, which identifies the document as a certification of hazard assessment.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.1030(d)(2)(xiii)(B) - If outside contamination of the primary container occurs, the primary container shall be placed within a second container which prevents leakage during handling, processing, storage, transport, or shipping and is labeled or color-coded according to the requirements of this standard.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.1450(e)(3)(iii) - A requirement that fume hoods and other protective equipment are functioning properly and specific measures that shall be taken to ensure proper and adequate performance of such equipment.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.151(c) - Where the eyes or body of any person may be exposed to injurious corrosive materials, suitable facilities for quick drenching, or flushing of the eyes and body shall be provided within the work area for immediate emergency use.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.151(c) - Where the eyes or body of any person may be exposed to injurious corrosive materials, suitable facilities for quick drenching or flushing of the eyes and body shall be provided within the work area for immediate emergency use.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.151(b) - In the absence of an infirmary, clinic, or hospital in near proximity to the workplace which is used for the treatment of all injured employees, a person or persons shall be adequately trained to render first aid. Adequate first aid supplies shall be readily available.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.157(c)(1) - The employer shall provide portable fire extinguishers and shall mount, locate and identify them so that they are readily accessible to employees without subjecting the employees to possible injury.'),
          findsOneWidget);
      expect(find.text('1910.157(e) - Inspection, maintenance, and testing.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.1030(d)(2)(viii) - Immediately or as soon as possible after use, contaminated reusable sharps shall be placed in appropriate containers until properly reprocessed.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.134(c) - Respiratory protection program. This paragraph requires the employer to develop and implement a written respiratory protection program with required worksite-specific procedures and elements for required respirator use. The program must be administered by a suitably trained program administrator. In addition, certain program elements may be required for voluntary use to prevent potential hazards associated with the use of the respirator. The Small Entity Compliance Guide contains criteria for the selection of a program administrator and a sample program that meets the requirements of this paragraph. Copies of the Small Entity Compliance Guide will be available on or about April 8, 1998 from the Occupational Safety and Health Administration\'s Office of Publications, Room N 3101, 200 Constitution Avenue, NW, Washington, DC, 20210 (202-219-4667).'),
          findsOneWidget);
      expect(
          find.text(
              '1910.1450(i) - Use of respirators. Where the use of respirators is necessary to maintain exposure below permissible exposure limits, the employer shall provide, at no cost to the employee, the proper respiratory equipment. Respirators shall be selected and used in accordance with the requirements of 29 CFR 1910.134.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.132(a) - Application. Protective equipment, including personal protective equipment for eyes, face, head, and extremities, protective clothing, respiratory devices, and protective shields and barriers, shall be provided, used, and maintained in a sanitary and reliable condition wherever it is necessary by reason of hazards of processes or environment, chemical hazards, radiological hazards, or mechanical irritants encountered in a manner capable of causing injury or impairment in the function of any part of the body through absorption, inhalation or physical contact.'),
          findsOneWidget);
      expect(
          find.text(
              '1910.132(e) - Defective and damaged equipment. Defective or damaged personal protective equipment shall not be used.'),
          findsOneWidget);
    }));

    testWidgets('checkboxes', ((WidgetTester tester) async {
      await tester.pumpWidget(createOSHAFormScreen());
      final checkboxesFinder = find.byType(Checkbox);
      var checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
      expect(checkboxes.length, 112);
      
      
      for (int i = 1; i < checkboxes.length + 1; i++) {
        var checkboxFinder = find.byKey(Key('checkbox' + Key(i.toString()).toString()));
      /*
        var checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, false);

        await tester.dragUntilVisible(checkboxFinder, find.byType(SingleChildScrollView), const Offset(0, 50));
        await tester.tap(checkboxFinder);
        await tester.pump();

        checkboxes = tester.widgetList<Checkbox>(checkboxesFinder);
        checkboxFinder = find.byKey(Key('checkbox' + Key(i.toString()).toString()));
        checkbox = tester.firstWidget<Checkbox>(checkboxFinder);
        expect(checkbox.value, true);
        */
      }
      
    }));

    testWidgets('comments', (WidgetTester tester) async {
      await tester.pumpWidget(createOSHAFormScreen());
      final commentBoxFinder = find.byType(TextField);
      var commentBoxes = tester.widgetList<TextField>(commentBoxFinder);
      expect(commentBoxes.length, 20);
      expect(find.byKey(Key('CommentBox')), findsAtLeastNWidgets(1));
    });

    testWidgets('done button', ((WidgetTester tester) async {
      await tester.pumpWidget(createOSHAFormScreen());
      final buttonFinder = find.byKey(Key('Done'));
      await tester.dragUntilVisible(buttonFinder,
          find.byType(SingleChildScrollView), const Offset(0, 50));
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(find.text('Lab Safety Inspection Form'), findsOneWidget);
    }));
  });
}
