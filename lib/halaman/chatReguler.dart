import 'package:flutter/material.dart';

class ChatReguler extends StatefulWidget {
  ChatReguler({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChatRegulerState createState() => new _ChatRegulerState();
}

class _ChatRegulerState extends State<ChatReguler> {
  final _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final List<ChatMessage> _messages = [];

  void _handleSubmitted(String text) {
    _textController.clear();
//    ChatMessage message = ChatMessage(text: text);
    setState(() {
//      _messages.insert(0, message);
    });
    _focusNode.requestFocus();
  }
  Widget _buildTextComposer() {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(                             // NEW
        children: [                            // NEW
          Flexible(                           // NEW
            child:  TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration:  InputDecoration.collapsed(
                  hintText: 'Send a message'),
              focusNode: _focusNode,
            ),
          ),                                    // NEW
        ],                                      // NEW
      ),                                        // NEW
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Nama Dokter"),),
          body: Column(
            children: <Widget>[
              Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),                // NEW
                  reverse: true,
                  itemBuilder: (_, int index) => _messages[index], // NEW
                  itemCount: _messages.length,
                ),
              ),
              Divider(height: 1.0),
              Container(                                       // NEW
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor),         // NEW
                child: _buildTextComposer(),
              ),
            ],
          ),
        )
    );
  }
}
class ChatMessage extends StatelessWidget{
  ChatMessage({this.text});     // NEW
  final String text;
  String _name="Ello";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(child: Text(_name[0])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name, style: Theme.of(context).textTheme.headline4),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}