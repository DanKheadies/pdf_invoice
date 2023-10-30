import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

// import 'package:makepdfs/models/invoice.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
// import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PdfPage(),
    );
  }
}

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  Future<Uint8List> makePdf(double width) async {
    final pdf = pw.Document();

    List<Map<String, dynamic>> loods = [
      {
        'item': '1. Loodsgeld',
        'quantity': 4,
        'price': 56,
        'total': 224,
      },
      {
        'item': '2. Liggeld',
        'quantity': 1,
        'price': 20,
        'total': 20,
      },
    ];

    List<Map<String, dynamic>> precariorechten = [
      {
        'item': 'Unload Container 20 voet',
        'quantity': 2,
        'price': 45,
        'total': 90,
      },
      {
        'item': 'Unload Container 40 voet',
        'quantity': 14,
        'price': 67,
        'total': 938,
      },
    ];

    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Column(
            children: [
              pw.Text(
                'Openbaar Lichaam Bonaire',
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
              pw.Text(
                'HAVENMEESTER',
                style: const pw.TextStyle(
                  fontSize: 10,
                ),
              ),
              pw.SizedBox(height: 13),
              pw.Text(
                'Kennisgeving',
                style: const pw.TextStyle(
                  fontSize: 14,
                ),
              ),
              pw.Container(height: 20),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(
                    'DON ANDRES', // TODO: vessel
                    style: const pw.TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  pw.Text(
                    'Sep 15, 2023 - Sep 16, 2023', // TODO: arrival / departure
                    style: const pw.TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 3),
              pw.Divider(
                thickness: 2,
                height: 2,
              ),
              pw.SizedBox(height: 3),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Flexible(
                    flex: 1,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(height: 2),
                        pw.Text(
                          '47.55m Deck Cargo Ship', // TODO: length & type
                          style: const pw.TextStyle(
                            fontSize: 8,
                          ),
                        ),
                        pw.Text(
                          '499 gross tons', // TODO: grt
                          style: const pw.TextStyle(
                            fontSize: 8,
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Text(
                          'Pilot Movements: 0', // TODO: pjos
                          style: const pw.TextStyle(
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Flexible(
                    flex: 1,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'South Pier RORO', // TODO: location
                          style: const pw.TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        pw.Text(
                          'Aankomst: d.d. Fri, Sep 15, 2023  16:00', // TODO: arrival
                          style: const pw.TextStyle(
                            fontSize: 8,
                          ),
                        ),
                        pw.Text(
                          'Vertrek: d.d. Sat, Sep 16, 2023  02:00', // TODO: departure
                          style: const pw.TextStyle(
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Flexible(
                    flex: 1,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Don Andres', // TODO: agency
                          style: const pw.TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        pw.Text(
                          'Jean-Carlo de Jongh', // TODO: attending agent
                          style: const pw.TextStyle(
                            fontSize: 8,
                          ),
                        ),
                        pw.Text(
                          'Jeancarlo@donandresnv.com', // TODO: aa email
                          style: const pw.TextStyle(
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                children: [
                  pw.Text(
                    'Loods - en havengelden',
                    style: const pw.TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              pw.Divider(
                thickness: 2,
                height: 2,
              ),
              pw.SizedBox(height: 3),
              pw.Row(
                // Note: ~480 width
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'Item Name',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    width: 100,
                    child: pw.Text(
                      'Quantity',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    width: 100,
                    child: pw.Text(
                      'Price',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    width: 130,
                    child: pw.Text(
                      'Total',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ),
                ],
              ),
              pw.ListView.builder(
                itemCount: loods.length,
                itemBuilder: (context, index) {
                  return pw.Padding(
                    padding: const pw.EdgeInsets.only(
                      top: 5,
                    ),
                    child: pw.Row(
                      // Note: ~480 width
                      children: [
                        pw.SizedBox(
                          width: 150,
                          child: pw.Text(
                            loods[index]['item'],
                            style: const pw.TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 100,
                          child: pw.Text(
                            loods[index]['quantity'].toString(),
                            style: const pw.TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 100,
                          child: pw.Text(
                            '\$${loods[index]['price'].toString()}',
                            style: const pw.TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 130,
                          child: pw.Text(
                            '\$${loods[index]['total']}',
                            style: const pw.TextStyle(
                              fontSize: 8,
                            ),
                            textAlign: pw.TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Text(
                    'loods total: \$244',
                    style: const pw.TextStyle(
                      fontSize: 8,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.SizedBox(width: 2),
                ],
              ),
              pw.SizedBox(height: 15),
              pw.Row(
                children: [
                  pw.Text(
                    'Precariorechten - en retributie voor gebruik pieren',
                    style: const pw.TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              pw.Divider(
                thickness: 2,
                height: 2,
              ),
              pw.SizedBox(height: 3),
              pw.Row(
                // Note: ~480 width
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'Item Name',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    width: 100,
                    child: pw.Text(
                      'Quantity',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    width: 100,
                    child: pw.Text(
                      'Price',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    width: 130,
                    child: pw.Text(
                      'Total',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ),
                ],
              ),
              pw.ListView.builder(
                itemCount: precariorechten.length,
                itemBuilder: (context, index) {
                  return pw.Padding(
                    padding: const pw.EdgeInsets.only(
                      top: 5,
                    ),
                    child: pw.Row(
                      // Note: ~480 width
                      children: [
                        pw.SizedBox(
                          width: 150,
                          child: pw.Text(
                            precariorechten[index]['item'],
                            style: const pw.TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 100,
                          child: pw.Text(
                            precariorechten[index]['quantity'].toString(),
                            style: const pw.TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 100,
                          child: pw.Text(
                            '\$${precariorechten[index]['price'].toString()}',
                            style: const pw.TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 130,
                          child: pw.Text(
                            '\$${precariorechten[index]['total']}',
                            style: const pw.TextStyle(
                              fontSize: 8,
                            ),
                            textAlign: pw.TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Text(
                    'precario total: \$1,028',
                    style: const pw.TextStyle(
                      fontSize: 8,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.SizedBox(width: 2),
                ],
              ),
              pw.SizedBox(height: 15),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Text(
                    'Kennisgeving Total: \$1,272',
                    style: pw.TextStyle(
                      fontSize: 8,
                      fontWeight: pw.FontWeight.bold,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.SizedBox(width: 2),
                ],
              ),
              pw.SizedBox(height: 25),
              pw.Text(
                'Deze kennisgeving is geen officiële factuur',
                style: pw.TextStyle(
                  color: PdfColors.blue800,
                  fontSize: 10,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Wrap(
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
              pw.SizedBox(height: 8),
              pw.Wrap(
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
              pw.SizedBox(height: 10),
              pw.Text(
                'Note: Accordering van deze kennisgeving dient binnen 2 werkdagen te geschiden.',
                style: const pw.TextStyle(
                  color: PdfColors.blue800,
                  fontSize: 10,
                ),
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
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: PdfPreview(
          build: (context) => makePdf(width),
        ),
      ),
    );
  }
}
