import "package:flutter/material.dart";
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Resources extends StatefulWidget {
  @override
  _ResourcesState createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {

  bool _isLoading = false, _isinit = true;
  PDFDocument document;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources'),
      ),

      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: _isinit?Text('Press button to load pdf file'): _isLoading?
              Center(
                child: CircularProgressIndicator(),
              ):PDFViewer(document: document,),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(child: MaterialButton(
                child: Text('ASSETS'),
                onPressed: (){
                  loadFromAssets();
                },
              )),
              Expanded(child: MaterialButton(
                child: Text('URL'),
                onPressed: (){
                  loadFromUrl();
                },
              )),
            ],
          )
        ],
      ),
    );
  }

  loadFromAssets() async{
    setState(() {
      _isinit = false; //remove text
      _isLoading = true;// show loading
    });
    document = await PDFDocument.fromAsset("doc/");
    setState(() {
      _isLoading=false; //remove loading
    });
  }

  loadFromUrl() async{
    setState(() {
      _isinit = false; //remove text
      _isLoading = true;// show loading
    });
    document = await PDFDocument.fromURL("http://www.africau.edu/images/default/sample.pdf");
    setState(() {
      _isLoading=false; //remove loading
    });
  }


}
