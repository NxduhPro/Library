//import '/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:projectbookhive/utils/app_styles.dart';
import 'package:flutter/services.dart';

class hub_inventory_screen extends StatefulWidget {
  const hub_inventory_screen({super.key});

  @override
  _HubInventoryScreenState createState() => _HubInventoryScreenState();
}

class _HubInventoryScreenState extends State<hub_inventory_screen> {

  ////////////
  ///ADD BOOK CONTENT
  final TextEditingController _ANB_BI_BookTitleController = TextEditingController();
  final TextEditingController _ANB_BI_AuthorController = TextEditingController();
  final TextEditingController _ANB_BI_ISBNController = TextEditingController();
  final TextEditingController _ANB_BI_PublisherController = TextEditingController();
  final TextEditingController _ANB_BI_EditionController = TextEditingController();
  final TextEditingController _ANB_BI_PublicationYearController = TextEditingController();
  final TextEditingController _ANB_BI_GenreSubjectController = TextEditingController();
  final TextEditingController _ANB_BI_LanguageController = TextEditingController();
  String ANB_BI_BookFormat = "";

  ///ADD BOOK CONTENT
  TextEditingController _acquisitiondateController = TextEditingController(text: DateTime.now().toString().split(" ")[0]);
  String ANB_AD_Source = "";
  String ANB_AD_Condition = "";
  final TextEditingController _ANB_AD_AccessionCodeController = TextEditingController();

    @override
  void dispose() {
    _acquisitiondateController.dispose();
    // Dispose of the controllers when the widget is disposed
    _ANB_BI_BookTitleController.dispose();
    _ANB_BI_AuthorController.dispose();
    _ANB_BI_ISBNController.dispose();
    _ANB_BI_PublisherController.dispose();
    _ANB_BI_EditionController.dispose();
    _ANB_BI_PublicationYearController.dispose();
    _ANB_BI_GenreSubjectController.dispose();
    _ANB_BI_LanguageController.dispose();

    ANB_AD_Condition = "";
    ANB_AD_Source = "";
    _ANB_AD_AccessionCodeController.dispose();

    super.dispose();
  }

  void _resetContentText() {
    // Clear the text in the TextField
    _ANB_BI_BookTitleController.clear();
    _ANB_BI_AuthorController.clear();
    _ANB_BI_ISBNController.clear();
    _ANB_BI_PublisherController.clear();
    _ANB_BI_EditionController.clear();
    _ANB_BI_PublicationYearController.clear();
    _ANB_BI_PublisherController.clear();
    _ANB_BI_EditionController.clear();

    _acquisitiondateController = TextEditingController(text: DateTime.now().toString().split(" ")[0]);


    _ANB_AD_AccessionCodeController.clear();

    setState(() {
      _acquisitiondateController.text = DateTime.now().toString().split(" ")[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            image: AssetImage(AppAssets.backgroundWall),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            //
            //
            //
            Expanded(
              flex: 660,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(143, 238, 234, 186),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            //
            //
            //
            Expanded(
              flex: 5,
              child: Container(),
            ),
            //
            //
            //
            Expanded(
              flex: 333,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(143, 238, 234, 186),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    const Text(
                      'ADD NEW BOOKS',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: AppTheme.dark,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 1000 - 313,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(60, 71, 10, 10),
                        border: Border.all(
                          color: const Color.fromARGB(0, 148, 84, 25),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ////////////////////////////////
                            const Text(
                              'BOOK INFORMATION:',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            //

                            // Book Title
                            TextFormField(
                              controller: _ANB_BI_BookTitleController,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: 'BOOK TITLE:',
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            // Author
                            TextFormField(
                              controller: _ANB_BI_AuthorController,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "AUTHOR:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            // ISBN
                            TextFormField(
                              controller: _ANB_BI_ISBNController,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // Allows only digits
                              ],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: 'ISBN:',
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            // PUBLISHER
                            TextFormField(
                              controller: _ANB_BI_PublisherController,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "PUBLISHER:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            // EDITION
                            TextFormField(
                              controller: _ANB_BI_EditionController,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // Allows only digits
                              ],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: 'EDITION (no.) :',
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            // PUBLICATIONYEAR
                            TextFormField(
                              controller: _ANB_BI_PublicationYearController,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // Allows only digits
                              ],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: 'PUBLICATION YEAR :',
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            // GenreSubject
                            TextFormField(
                              controller: _ANB_BI_GenreSubjectController,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "GENRE/SUBJECT:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            // LANGUAGE
                            TextFormField(
                              controller: _ANB_BI_LanguageController,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "LANGUAGE:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            // Format
                            DropdownButtonFormField<String>(
                              value: "Hardcover",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "BOOK FORMAT:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: "Hardcover",
                                  child: Text("Hardcover"),
                                ),
                                DropdownMenuItem(
                                  value: "Paperback",
                                  child: Text("Paperback"),
                                ),
                                DropdownMenuItem(
                                  value: "Mass Market Paperback",
                                  child: Text("Mass Market Paperback"),
                                ),
                                DropdownMenuItem(
                                  value: "Board Book",
                                  child: Text("Board Book"),
                                ),
                                DropdownMenuItem(
                                  value: "Slipcase Edition",
                                  child: Text("Slipcase Edition"),
                                ),
                                DropdownMenuItem(
                                  value: "Leatherbound",
                                  child: Text("Leatherbound"),
                                ),
                                DropdownMenuItem(
                                  value: "Pocket Edition:",
                                  child: Text("Paperback"),
                                ),
                                DropdownMenuItem(
                                  value: "Large Print:",
                                  child: Text("Paperback"),
                                ),
                              ],
                              onChanged: (value) {
                                // Handle selection

                                print("Selected: $value");
                                ANB_BI_BookFormat = "$value";

                              },
                            ),
                            const SizedBox(height: 10),
                            //

                            //////////////////////////////////
                            const Text(
                              'ACQUISITION DETAILS:',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            //

                            TextFormField(
                              controller: _acquisitiondateController,

                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                  labelText: "DATE OF ACQUISITION:",
                                  labelStyle: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.white30,
                                  prefixIcon: Icon(Icons.calendar_today)),
                              readOnly: true,
                              onTap: () {
                                _acquisitiondate();
                              },
                            ),
                            const SizedBox(height: 12),
                            //

                            // Source
                            DropdownButtonFormField<String>(
                              value: "PURCHASED",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "SOURCE:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: "PURCHASED",
                                  child: Text("PURCHASED"),
                                ),
                                DropdownMenuItem(
                                  value: "DONATED",
                                  child: Text("DONATED"),
                                ),
                                DropdownMenuItem(
                                  value: "OTHERS",
                                  child: Text("OTHERS"),
                                ),
                              ],
                              onChanged: (value) {
                                // Handle selection
                                print("Selected: $value");
                                ANB_AD_Source = "$value";
                                
                              },
                            ),
                            const SizedBox(height: 10),
                            //

                            // Condition
                            DropdownButtonFormField<String>(
                              value: "NEW",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "CONDITION:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: "NEW",
                                  child: Text("NEW"),
                                ),
                                DropdownMenuItem(
                                  value: "USED",
                                  child: Text("USED"),
                                ),
                                DropdownMenuItem(
                                  value: "DAMAGED",
                                  child: Text("DAMAGED"),
                                ),
                              ],
                              onChanged: (value) {
                                // Handle selection
                                print("Selected: $value");
                                ANB_AD_Condition = "$value";
                              },
                            ),
                            const SizedBox(height: 10),
                            //

                            // Accession
                            TextFormField(
                              controller: _ANB_AD_AccessionCodeController,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "ACCESSION CODE:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            ////////////////////////////////
                            const Text(
                              'CATALOGING DETAILS:',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            //

                            //Library Clasification Code
                            TextFormField(
                              ///////////controller: titleController,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "LIBRARY CLASSIFICATION CODE:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            //Shelf Location
                            TextFormField(
                              ///////////controller: titleController,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "SHELF LOCATION:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            ////////////////////////////////
                            const Text(
                              'MORE DETAILS:',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            //

                            // CIRCULATION STATUS
                            DropdownButtonFormField<String>(
                              value: "ON-THE-SHELF",
                              onChanged: null,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "CIRCULATION STATUS:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: "ON-THE-SHELF",
                                  child: Text("ON-THE-SHELF"),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            //

                            // BOOK AVAILABILITY
                            DropdownButtonFormField<String>(
                              value: "AVAILABLE",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "BOOK AVAILABILITY:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: "AVAILABLE",
                                  child: Text("AVAILABLE"),
                                ),
                                DropdownMenuItem(
                                  value: "NOT AVAILABLE",
                                  child: Text("NOT AVAILABLE"),
                                ),
                              ],
                              onChanged: (value) {
                                // Handle selection
                                print("Selected: $value");
                              },
                            ),
                            const SizedBox(height: 10),
                            //

                            //REMARKS
                            TextFormField(
                              ///////////controller: titleController,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 43, 43, 43),
                              ),
                              decoration: const InputDecoration(
                                labelText: "REMARKS:",
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            //

                            ElevatedButton.icon(
                              onPressed: () {
                                print("BOOKTITLE: "+_ANB_BI_BookTitleController.text);
                                print("AUTHOR: "+_ANB_BI_AuthorController.text);
                                print("ISBN: "+_ANB_BI_ISBNController.text);
                                print("PUBLISHER: "+_ANB_BI_PublisherController.text);
                                print("EDITION: "+_ANB_BI_EditionController.text);
                                print("AUTHOR: "+_ANB_BI_PublicationYearController.text);
                                print("GENER/SUBJECT: "+_ANB_BI_GenreSubjectController.text);
                                print("LANGUAGE: "+_ANB_BI_LanguageController.text);
                                print("BOOKFORMAT: "+ANB_BI_BookFormat);

                                print("AUTHOR: "+_ANB_BI_AuthorController.text);
                                print("SOURCE: "+ANB_AD_Source);
                                print("CONDITION: "+ANB_AD_Condition);
                                print("AccessionCode: "+_ANB_AD_AccessionCodeController.text);

                                //print("AUTHOR: "+_ANB_BI_AuthorController.text);
                                //print("AUTHOR: "+_ANB_BI_AuthorController.text);
                                //print("AUTHOR: "+_ANB_BI_AuthorController.text);
                                //print("AUTHOR: "+_ANB_BI_AuthorController.text);
                                _resetContentText();
                              },
                              label: const Text(
                                'SUBMIT',
                                style: TextStyle(
                                  fontSize: 16, 
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, 
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    AppTheme.accentShade, // background
                                foregroundColor: Colors.black, // foreground
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _acquisitiondate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (_picked != null) {
      setState(() {
        _acquisitiondateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
