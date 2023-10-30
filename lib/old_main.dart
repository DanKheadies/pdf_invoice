import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

// import 'package:makepdfs/models/invoice.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
// import 'package:flutter/services.dart' show rootBundle;

class OldPdfPage extends StatefulWidget {
  const OldPdfPage({super.key});

  @override
  State<OldPdfPage> createState() => _OldPdfPageState();
}

class _OldPdfPageState extends State<OldPdfPage> {
  Future<Uint8List> makePdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Column(
            children: [
              pw.Container(
                color: PdfColors.red,
                height: 45,
                width: 30,
                // child: pw.Image(imageLogo),
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                'OPENBAAR LICHAAM BONAIRE',
                style: const pw.TextStyle(
                  fontSize: 10,
                ),
              ),
              pw.Text(
                'HAVENMEESTER',
                style: const pw.TextStyle(
                  fontSize: 10,
                ),
              ),
              pw.SizedBox(height: 15),
              pw.Text(
                'Kennisgeving',
                style: pw.TextStyle(
                  fontSize: 13,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                'Loods-en havengelden',
                style: const pw.TextStyle(
                  fontSize: 10,
                ),
              ),
              pw.Text(
                'Precariorechten- en retributie voor gebruik pieren',
                style: const pw.TextStyle(
                  fontSize: 10,
                ),
              ),
              pw.Container(height: 30),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Text(
                    'Agent : Dawn Summers', // TODO: Agent
                    style: const pw.TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Text(
                    'Adres : ', // TODO: Address
                    style: const pw.TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Text(
                    'Port: Kralendijk',
                    style: pw.TextStyle(
                      fontSize: 10,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(width: 50),
                ],
              ),
              pw.Divider(
                thickness: 2,
                height: 2,
              ),
              pw.SizedBox(height: 10),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        'Schip:',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Text(
                        'Carnival Celebration', // TODO: ship
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        'Vlag:',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 175,
                      child: pw.Text(
                        'Bahamas', // TODO: flag
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.Text(
                      'Bruto tonnage: 183521', // TODO: tonange
                      style: const pw.TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        'Komende van:',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Text(
                        'Aruba', // TODO: ? LPoC
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        'Vertrekkende naar:',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Text(
                        'Curacao', // TODO: ? NPoC
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        'Aard verrichting:',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Text(
                        'Cruise', // TODO: ship type
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        'Aankomst: d.d.',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        '13-Sep-23',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        'om',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Text(
                        '6:30',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        'Vertrek: d.d.',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        '13-Sep-23',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 125,
                      child: pw.Text(
                        'om',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Text(
                        '21:55',
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 10),
              pw.Divider(
                thickness: 2,
                height: 2,
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Container(
                    decoration: const pw.BoxDecoration(
                      border: pw.Border(
                        bottom: pw.BorderSide(
                          width: 1,
                        ),
                      ),
                    ),
                    child: pw.Text(
                      'Loods- en havengelden',
                      style: pw.TextStyle(
                        fontSize: 10,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  ),
                  pw.Container(
                    decoration: const pw.BoxDecoration(
                      border: pw.Border(
                        bottom: pw.BorderSide(
                          width: 1,
                        ),
                      ),
                    ),
                    child: pw.Text(
                      'Precariorechten- en retributie voor gebruik pieren',
                      style: pw.TextStyle(
                        fontSize: 10,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 1),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  // mainAxisAlignment: pw.MainAxisAlignment.start,
                  children: [
                    pw.SizedBox(width: 3),
                    pw.SizedBox(
                      width: 175,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Loodsgeld       \$',
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          pw.Text(
                            '2,487.00', // TODO
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      width: 65,
                      child: pw.Text(
                        '0', // TODO: value
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                        textAlign: pw.TextAlign.right,
                      ),
                    ),
                    pw.SizedBox(width: 5),
                    pw.Expanded(
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.SizedBox(
                            child: pw.Text(
                              'Container 20\'    \$', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                          pw.SizedBox(
                            child: pw.Text(
                              '0.00', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 3),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(width: 3),
                    pw.SizedBox(
                      width: 175,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Liggerld',
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          pw.Text(
                            '3,588.00', // TODO
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      width: 65,
                      child: pw.Text(
                        '0', // TODO: value
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                        textAlign: pw.TextAlign.right,
                      ),
                    ),
                    pw.SizedBox(width: 5),
                    pw.Expanded(
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.SizedBox(
                            child: pw.Text(
                              'Container 40\' en groter', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                          pw.SizedBox(
                            child: pw.Text(
                              '0.00', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 3),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(width: 3),
                    pw.SizedBox(
                      width: 175,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Meergeld',
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          pw.Text(
                            '168.00', // TODO
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      width: 65,
                      child: pw.Text(
                        '0', // TODO: value
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                        textAlign: pw.TextAlign.right,
                      ),
                    ),
                    pw.SizedBox(width: 5),
                    pw.Expanded(
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.SizedBox(
                            child: pw.Text(
                              'Auto\'s', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                          pw.SizedBox(
                            child: pw.Text(
                              '0.00', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 3),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(width: 3),
                    pw.SizedBox(
                      width: 175,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Wachtgeld',
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          pw.Text(
                            '0.00', // TODO
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      width: 65,
                      child: pw.Text(
                        '0', // TODO: value
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                        textAlign: pw.TextAlign.right,
                      ),
                    ),
                    pw.SizedBox(width: 5),
                    pw.Expanded(
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.SizedBox(
                            child: pw.Text(
                              'Bus/Vrachtwagens', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                          pw.SizedBox(
                            child: pw.Text(
                              '0.00', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 3),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(width: 3),
                    pw.SizedBox(
                      width: 175,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Verhaalreis',
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          pw.Text(
                            '0.00', // TODO
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      width: 65,
                      child: pw.Text(
                        '0', // TODO: value
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                        textAlign: pw.TextAlign.right,
                      ),
                    ),
                    pw.SizedBox(width: 5),
                    pw.Expanded(
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.SizedBox(
                            child: pw.Text(
                              'Mt Losse Lading', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                          pw.SizedBox(
                            child: pw.Text(
                              '0.00', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 3),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(width: 3),
                    pw.SizedBox(
                      width: 175,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Waterlevering',
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          pw.Text(
                            '0.00', // TODO
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      width: 65,
                      child: pw.Text(
                        '0', // TODO: value
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                        textAlign: pw.TextAlign.right,
                      ),
                    ),
                    pw.SizedBox(width: 5),
                    pw.Expanded(
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.SizedBox(
                            child: pw.Text(
                              'Cement/Zand/Steenslag', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                          pw.SizedBox(
                            child: pw.Text(
                              '0.00', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 3),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(width: 3),
                    pw.SizedBox(
                      width: 175,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Loodsboothuur',
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          pw.Text(
                            '0.00', // TODO
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      width: 65,
                      child: pw.Text(
                        '5524', // TODO: value
                        style: const pw.TextStyle(
                          fontSize: 10,
                        ),
                        textAlign: pw.TextAlign.right,
                      ),
                    ),
                    pw.SizedBox(width: 5),
                    pw.Expanded(
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.SizedBox(
                            child: pw.Text(
                              'Passagier Tax', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                          pw.SizedBox(
                            child: pw.Text(
                              '55,240.00', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 3),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 2),
              pw.SizedBox(
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.SizedBox(width: 3),
                    pw.SizedBox(
                      width: 175,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Totaal           \$',
                            style: pw.TextStyle(
                              fontSize: 10,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Text(
                            '6,243.00', // TODO
                            style: pw.TextStyle(
                              fontSize: 10,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      width: 65,
                    ),
                    pw.SizedBox(width: 5),
                    pw.Expanded(
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.SizedBox(
                            child: pw.Text(
                              'Totaal           \$',
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                          pw.SizedBox(
                            child: pw.Text(
                              '\$55,240.00', // TODO: value
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 3),
                  ],
                ),
              ),
              pw.Divider(
                thickness: 1,
                height: 1,
              ),
              pw.SizedBox(height: 35),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Text(
                    'Datum: Kralendijk,    21-Sep-23',
                    style: const pw.TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  pw.Text(
                    'v/d Havenmeester:',
                    style: const pw.TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 50),
              pw.Text(
                'Deze kennisgeving is geen officiële factuur',
                style: pw.TextStyle(
                  color: PdfColors.blue,
                  fontSize: 10,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 50),
              pw.Wrap(
                // mainAxisAlignment: pw.MainAxisAlignment.start,
                alignment: pw.WrapAlignment.start,
                children: [
                  pw.Text(
                    'De betaling van de havengelden dient te geschiden conform de door afdeling financien opgemaakte nota,  ten kantore van de eliandontvanger of door storting/overmaking op een door afdeling financien opgegeven rekeningnummer.',
                    style: const pw.TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              pw.Wrap(
                // mainAxisAlignment: pw.MainAxisAlignment.start,
                alignment: pw.WrapAlignment.start,
                children: [
                  pw.Text(
                    'Alle havengelden, die in de loop van de maand invorderbaar zijn geworden, dienen vóór de tiende van de daarop volgende maand worden betaald. (conform EILANDSVERORDENING van de 17e januari 1975, no. 2 regelende de loodsdienst en de heffing en inning van havengelden).',
                    style: const pw.TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Text(
                    'Note: Accordering van deze kennisgeving dient binnen 2 werkdagen te geschiden.',
                    style: const pw.TextStyle(
                      color: PdfColors.blue,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PdfPreview(
          build: (context) => makePdf(),
        ),
      ),
    );
  }
}
