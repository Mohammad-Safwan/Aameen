import 'package:aameen/data/appColors.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';

class AhkamatDetails extends StatefulWidget {
  final String arabic;
  final String urdu;
  final String ref;
  AhkamatDetails({Key key, this.arabic, this.urdu, this.ref}) : super(key: key);

  @override
  _AhkamatDetailsState createState() => _AhkamatDetailsState();
}

class _AhkamatDetailsState extends State<AhkamatDetails>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(widget.ref),
        backgroundColor: AppColors.golden,
        centerTitle: true,
      ),
      bottomNavigationBar: TabBar(
        unselectedLabelColor: Colors.black,
        labelColor: AppColors.golden,
        tabs: [
          Tab(
            child: Text("Ayat", style: TextStyle(fontSize: 18.0),),
          ),
          Tab(
            child: Text("Tarjuma", style: TextStyle(fontSize: 18.0),),
          )
        ],
        controller: _tabController,
      ),
      body: Stack(
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png'
          ),
          TabBarView(
            controller: _tabController,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(30.0),
                        border: new Border.all(
                          color: AppColors.golden,
                          width: 1.5,
                        ),
                        color: AppColors.golden.withOpacity(0.5),
                      ),
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            widget.arabic,
                            style: new TextStyle(
                                fontSize: 26.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(30.0),
                        border: new Border.all(
                          color: AppColors.golden,
                          width: 1.5,
                        ),
                        color: AppColors.golden.withOpacity(0.5),
                      ),
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            widget.urdu,
                            style: new TextStyle(
                                fontSize: 19.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
