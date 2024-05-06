import 'package:flutter/material.dart';
import 'package:nabih/models/corpmodel.dart';

import '../core/Route.dart';
import 'Purchase.dart';

class AssetDetails extends StatefulWidget {
  int quantity;
  double price;
  double walletBalance;
  int asset; //1 stc // 2 zain // 3 mobily
  int entryMethod; //0 all // 1 buy // 2 sell
   AssetDetails({Key? key,required this.quantity,required this.price , required this.walletBalance,required this.asset,required this.entryMethod}) : super(key: key);

  @override
  State<AssetDetails> createState() => _AssetDetailsState();
}

class _AssetDetailsState extends State<AssetDetails> {
CorpModel? model;
  @override
  void initState() {
if(widget.asset==1){
  model= CorpModel(name: 'اس تي سي', fullName: 'شركة الاتصالات السعودية', price: widget.price, quantity: widget.quantity);
}
else if(widget.asset==2){
  model= CorpModel(name: 'زين', fullName: 'شركة زين السعودية', price: widget.price, quantity: widget.quantity);

}
else{
  model= CorpModel(name: 'موبايلي', fullName: 'شركة موبايلي السعودية', price: widget.price, quantity: widget.quantity);

}
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 50.0, // Adjust top padding as needed
            left: 20.0, // Adjust left padding as needed
            child: IconButton(
              color: Colors.white,
              iconSize: 30,
              icon: RotatedBox(
                quarterTurns: 2, // Rotate 180 degrees (2 quarter turns)
                child: Icon(Icons.arrow_back), // Your icon
              ),// Use the Icons.arrow_back icon
              onPressed: () => Navigator.pop(context), // Pop the current screen
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children:[Text('تفاصيل السهم',style: TextStyle(color: Colors.white,fontSize: 28),),
                  SizedBox(height: 40,),

                  Center(
                    child: Container(
                      height: 230,
                      width: MediaQuery.of(context).size.width*0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), // Added for rounded corners

                        gradient: LinearGradient(
                          colors: [Colors.grey[400]!,Colors.white], // White to grey gradient
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color with transparency
                            offset: Offset(5.0, 5.0), // Shadow offset
                            blurRadius: 10.0, // Shadow blur radius
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16,42,16,0),
                            child: Row(
                              children: [
                                Text(model!.fullName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                Spacer(),
                                Text(model!.price.toStringAsFixed(2),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16,16,16,0),
                            child: Row(
                              children: [
                                Text(model!.name,style: TextStyle(fontSize: 14),),
                                  ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              color: Colors.black12, // Adjust divider color
                              thickness: 2, // Adjust divider thickness
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(28,10,28,0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('عدد الاسهم',style: TextStyle(fontSize: 14,decoration: TextDecoration.underline),),
                                   SizedBox(height: 8,),
                                    Text(model!.quantity.toStringAsFixed(2),style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('القيمة السوقية',style: TextStyle(fontSize: 14,decoration: TextDecoration.underline,),),
                                    SizedBox(height: 8,),

                                    Text(model!.costPrice.toStringAsFixed(2),style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),

                  widget.entryMethod!=2?SizedBox.shrink(): Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: (){                          navigateTo(context,SellAndPurchaseScreen(price: model!.price, walletBalance: widget.walletBalance, currentQuantity: model!.quantity, asset: widget.asset, isPurchase: false,));
                        },
                        borderRadius: BorderRadius.circular(15.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('بيع', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500)),
                                  // SizedBox(height: 3,),
                                  Text(model!.price.toStringAsFixed(2), style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w800)),

                                ],
                              ),
                              Icon(Icons.download, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                      height: 60,
                      width: 140,
                    ),
                  ),

                  widget.entryMethod!=1?SizedBox.shrink():   Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: (){
                          navigateTo(context,SellAndPurchaseScreen(price: model!.price, walletBalance: widget.walletBalance, currentQuantity: model!.quantity, asset: widget.asset, isPurchase: true,));

                        },
                        borderRadius: BorderRadius.circular(15.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('شراء', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500)),
                                  Text(model!.price.toStringAsFixed(2), style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w800)),

                                ],
                              ),
                              Icon(Icons.upload, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                      height: 60,
                      width: 140,
                    ),
                  ),


                  widget.entryMethod!=0?SizedBox.shrink():    Padding(
                    padding: const EdgeInsets.only(right: 50.0,left: 50),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: InkWell(
                          onTap: (){                          navigateTo(context,SellAndPurchaseScreen(price: model!.price, walletBalance: widget.walletBalance, currentQuantity: model!.quantity, asset: widget.asset, isPurchase: false,));
                          },
                          borderRadius: BorderRadius.circular(15.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('بيع', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500)),
                                    // SizedBox(height: 3,),
                                    Text(model!.price.toStringAsFixed(2), style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w800)),

                                  ],
                                ),
                                Icon(Icons.download, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                        height: 60,
                        width: 140,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: InkWell(
                          onTap: (){
                            navigateTo(context,SellAndPurchaseScreen(price: model!.price, walletBalance: widget.walletBalance, currentQuantity: model!.quantity, asset: widget.asset, isPurchase: true,));

                          },
                          borderRadius: BorderRadius.circular(15.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('شراء', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500)),
                                    Text(model!.price.toStringAsFixed(2), style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w800)),

                                  ],
                                ),
                                Icon(Icons.upload, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                        height: 60,
                        width: 140,
                      )
                    ],
                ),
                  )
                ]

              ),
            ),
          ),
        ],
      )
    );
  }
}