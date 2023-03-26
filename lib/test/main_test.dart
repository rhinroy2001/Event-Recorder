import 'package:event_recorder/labInspectionForm_old/lif_general_fire_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:event_recorder/main.dart';

void main() {
  group('Home Page', () {
    testWidgets(
      "title is displayed",
      (WidgetTester tester) async {
        await tester.pumpWidget(MyApp());
        expect(find.text('Environmental Health and Safety'), findsOneWidget);
      },
    );

    testWidgets("Lab Safety Inspection Button", (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      await tester.tap(find.byKey(Key('labSafetyInspectionForm')));
      await tester.pumpAndSettle();
      // expect(find.byType(GeneralInfo), findsOneWidget);
      expect(find.text('General Information'), findsOneWidget);
    });

    // Edit this test once OSHA form is done
    // testWidgets("OSHA form Button", (WidgetTester tester) async {
    //   await tester.pumpWidget(createWidgetUnderTest());
    //   await tester.tap(find.byKey(Key('OSHAForm')));
    //   await tester.pumpAndSettle();
    //   expect(find.te, findsOneWidget);
    // });

    testWidgets('send email with no text in fields',
        ((WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      await tester.tap(find.byKey(Key('sendEmail')));
      await tester.pumpAndSettle();
      expect(find.byType(AlertDialog), findsOneWidget);
    }));

    testWidgets('follow up email text', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      await tester.pump();
      expect(find.byKey(Key('sendFollowUpEmail')), findsOneWidget);
    });

    testWidgets('fill out form text', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      await tester.pump();
      expect(find.byKey(Key('fillOutForm')), findsOneWidget);
    });

    testWidgets('previously completed form text', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      await tester.pump();
      expect(find.byKey(Key('previouslyCompletedForm')), findsOneWidget);
    });

    testWidgets('mail to text field', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      await tester.enterText(find.byKey(Key('mailTo')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('subject text field', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      await tester.enterText(find.byKey(Key('subject')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });

    testWidgets('email body text field', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      await tester.enterText(find.byKey(Key('emailBody')), 'hi');
      await tester.pumpAndSettle();
      expect(find.text('hi'), findsOneWidget);
    });
  });
}
