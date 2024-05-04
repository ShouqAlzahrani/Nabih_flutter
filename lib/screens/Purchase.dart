import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'edit.dart';

class SellAndPurchaseScreen extends StatefulWidget {
  final double price;
  final double walletBalance;
  final int currentQuantity;
  final int asset;
  final bool isPurchase;

  const SellAndPurchaseScreen({Key? key, required this.price,required this.walletBalance, required this.currentQuantity, required this.asset, required this.isPurchase}) : super(key: key);

  @override
  State<SellAndPurchaseScreen> createState() => _SellAndPurchaseScreenState();
}

class _SellAndPurchaseScreenState extends State<SellAndPurchaseScreen> {
  int counter = 0;
  double availableQuantityToBePaid =0;
  void decrement() {
    if (counter - 1 > 0) {
      setState(() {
        counter--;
        buyingAmount = counter * widget.price;
      });
    }
  }
  double buyingAmount=0;
  void increment() {

  if (counter + 1 <= availableQuantityToBePaid) {
    setState(() {
      counter++;
      buyingAmount = counter * widget.price;
    });

}
  }
@override
  void initState() {

    if(widget.isPurchase) {
      if (widget.walletBalance > 0)
        availableQuantityToBePaid = widget.walletBalance / widget.price;
    }
    else{
      availableQuantityToBePaid=widget.currentQuantity.toDouble();
    }
    // TODO: implement initState
    super.initState();
  }
  String get totalPrice => (counter * widget.price).toStringAsFixed(2); // Calculate total price

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12, // Set background color to black

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
            child: Column(
              children: [
                SizedBox(height: 40,),

                Text(widget.isPurchase? 'يرجى تحديد عدد الأسهم التي ستقوم بشرائها؟':'يرجى تحديد عدد الأسهم التي ستقوم ببيعها؟',style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(height: 100,),
                Center(
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width/1.5,
                    decoration: BoxDecoration(
                      color: Color(0xff0d5536),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: IconButton(
                            icon: Icon(Icons.add, color: Colors.white),
                            onPressed: increment,
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.white30,
                          thickness: 2.5,
                        ),

                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                'عدد الاسهم',
                                style: TextStyle(fontSize: 14.0, color: Colors.white), // White text for better visibility
                              ),
                              // SizedBox(height: 5,),
                              Text(
                                '$counter',
                                style: TextStyle(fontSize: 24.0, color: Colors.white), // White text for better visibility
                              ),
                           ],
                          ),
                        ),
                        VerticalDivider( // Vertical separator
                          color: Colors.white30, // Adjust divider color
                          thickness: 2.5, // Adjust divider thickness
                        ),
                        // Increment button
                        Flexible( // Wrap with Flexible for separator space
                          child: IconButton(
                            icon: Icon(Icons.remove, color: Colors.white), // White icon for better visibility
                            onPressed: decrement,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),

                Text(widget.isPurchase?'إجمالي عدد الحصص للشراء:':'إجمالي عدد الحصص للبيع:',style: TextStyle(fontSize: 16,color: Colors.white),),
                Text(availableQuantityToBePaid.toStringAsFixed(2),style: TextStyle(fontSize: 14,color: Colors.white),),
                SizedBox(height: 40,),

                InkWell(
                  onTap: () async {
                  if(counter==0)return;
              bool result =  await    showConfirmationSheet(context , "ماتقوم به سيؤثر على رصيدك في المحفظة"+"\n"+
              "هل تريد الإستمرار؟");
              if(result!=true)return;

if(widget.isPurchase) {
  Map<String, dynamic> updateData;

  double balance = widget.walletBalance - buyingAmount;
  if (widget.asset == 1)
    updateData = {'wallet_balance': balance, 'stc': counter+widget.currentQuantity};
  else if (widget.asset == 2)
    updateData = {'wallet_balance': balance, 'zain': counter+widget.currentQuantity};
  else
    updateData = {'wallet_balance': balance, 'mobily':  counter+widget.currentQuantity};


  updateFirestore(updateData);


  insertToOrders(widget.asset,counter,widget.price,true);
}else{
  Map<String, dynamic> updateData;

  double balance = widget.walletBalance + buyingAmount;
  if (widget.asset == 1)
    updateData = {'wallet_balance': balance, 'stc': widget.currentQuantity-counter};
  else if (widget.asset == 2)
    updateData = {'wallet_balance': balance, 'zain': widget.currentQuantity-counter};
  else
    updateData = {'wallet_balance': balance, 'mobily': widget.currentQuantity-counter};


  updateFirestore(updateData);
  insertToOrders(widget.asset,counter,widget.price,false);
}
Navigator.pushReplacement<void, void>(
  context,
  MaterialPageRoute<void>(
    builder: (BuildContext context) =>
        DoneTrue(),
  ),
);
                  }, // Handle tap on the container
                  child: Container(
                    height: 50.0, // Set button height
                    width: MediaQuery.of(context).size.width/1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0), // Optional: rounded corners
                      gradient: LinearGradient(
                        colors: [Color(0xffD8C97D),Color(0xffA27D27)], // Gold gradient colors
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 2.0, // Adjust shadow spread
                          blurRadius: 4.0, // Adjust shadow blur
                          offset: Offset(0, 3), // Adjust shadow offset
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.isPurchase? "الشراء بقيمة "+buyingAmount.toStringAsFixed(2)
                        :"البيع بقيمة "+buyingAmount.toStringAsFixed(2),
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
  Future<void> updateFirestore(Map<String, dynamic> updateData) async {
    try {
      // Get a reference to the document
      final SharedPreferences sp = await SharedPreferences.getInstance();

      final documentReference = FirebaseFirestore.instance.collection('users').doc(sp.getString('uid'));

      // Update the specific fields
      await documentReference.update(updateData);
      print('Firestore field(s) updated successfully!');
    } on FirebaseException catch (e) {
      print('Error updating Firestore field(s): $e');
      // Handle errors (e.g., show a snackbar to the user)
    }
  }
}
Future<bool> showConfirmationSheet(BuildContext context, String message) async {
  final result = await showModalBottomSheet(
    context: context,
    isDismissible: false,
    enableDrag: false,
    builder: (context) => Container(
      height:
      MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),

        image: DecorationImage(
          image: AssetImage("img/new.png"), // Replace with your image path
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset('img/done.png'),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0,color: Colors.white), // Adjust text style
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left :16,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context, true);

                  },
                  child: Container(
                    width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0), // Optional: rounded corners
                        gradient: LinearGradient(
                          colors: [Color(0xffD8C97D),Color(0xffA27D27)], // Gold gradient colors
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2.0, // Adjust shadow spread
                            blurRadius: 4.0, // Adjust shadow blur
                            offset: Offset(0, 1), // Adjust shadow offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: const Text('نعم',
                              style: TextStyle(
                                fontSize: 16,

                                color: Colors.white,
                              )),
                        ),
                      )),
                ),
                InkWell(
                  onTap: () {
             Navigator.pop(context, false);

                  },
                  child: Container(
                    width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0), // Optional: rounded corners
                        gradient: LinearGradient(
                          colors: [Color(0xffD8C97D),Color(0xffA27D27)], // Gold gradient colors
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2.0, // Adjust shadow spread
                            blurRadius: 4.0, // Adjust shadow blur
                            offset: Offset(0, 1), // Adjust shadow offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: const Text('لا',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              )),
                        ),
                      )),
                ),
              ],
            ),
          ),

        ],
      ),
    ),
  );
  return result;
}
Future<int> updateCounter() async {
  final firestore = FirebaseFirestore.instance;
  final docRef = firestore.collection('counters').doc("gEuCzlO3y9qFuvHDKD34");

  try {
    final doc = await docRef.get();
    final currentCount = doc.data()?['ordersCounter'] ?? 0;

    final newCount = currentCount + 1;
    await docRef.update({'ordersCounter': newCount});

    print('Counter updated successfully!');
    return newCount;
  } catch (e) {
    print('Error updating counter: $e');
  }
  return 0;
}

Future<void> insertToOrders(
    int assetCode,
    int quantity,
    double price,
    bool isPurchase,
    ) async {
  final firestore = FirebaseFirestore.instance;
  final collectionRef = firestore.collection('orders');

  final id = await updateCounter();
  final SharedPreferences sp = await SharedPreferences.getInstance();
  final data = {
    'assetCode': assetCode,
    'quantity': quantity,
    'price': price,
    'isPurchase': isPurchase,
    'date': FieldValue.serverTimestamp(),
    'uid':sp.getString('uid'),
    'idCounter':id,
  };

  try {
    await collectionRef.doc().set(data);
    print('Order added successfully!');
  } catch (e) {
    print('Error adding data: $e');
  }
}
