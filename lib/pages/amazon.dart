import 'package:flutter/material.dart';

class Amazon extends StatefulWidget {
  const Amazon({Key? key}) : super(key: key);
  static const String id = 'amazon';

  @override
  _AmazonState createState() => _AmazonState();
}

class _AmazonState extends State<Amazon> {
  List<String> images = [
    'assets/amazon/item_2.jpeg',
    'assets/amazon/item_4.jpeg',
    'assets/amazon/item_5.jpeg',
    'assets/amazon/item_6.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: const Color(0xff377f95),
        leading: IconButton(
          icon: const Icon(Icons.menu_sharp),
          onPressed: (){},
        ),
        title: Image(
            image: const AssetImage('assets/amazon/amazon_logo.png'),
            width: MediaQuery.of(context).size.width * 0.25),
        actions: [
          IconButton(
            icon: const Icon(Icons.mic),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize:
          Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search_outlined),
                suffixIcon: Icon(Icons.camera_alt),
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                hintText: 'What are you looking for?',
                contentPadding: EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              color: const Color(0xff667b89),
              child: Row(
                children: const [
                  SizedBox(width: 8),
                  Icon(Icons.location_pin, color: Colors.white),
                  SizedBox(width: 10),
                  Text('Deliver to Korea, Republic of', style: TextStyle(color: Colors.white, fontSize: 13))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              color: Colors.white,
              child: Row(
                children: [
                  const Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          'We ship 45 million products',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xff1cd0f5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            bottomLeft: Radius.circular(70),
                          ),
                          image: DecorationImage(
                              image: AssetImage('assets/amazon/image_1.jpeg')
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Divider(thickness: 7),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Sign in for the best experience',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                  MaterialButton(
                      color: Color(0xfff29c37),
                      height: 45,
                      child: const Center(
                          child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          )
                      ),
                      onPressed: () {}
                  ),
                  const Text('Create an account',
                      style: TextStyle(fontSize: 16, color: Colors.blue))
                ],
              ),
            ),
            const Divider(thickness: 7),
            Container(
                height: MediaQuery.of(context).size.width * 0.75,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('Deal of the Day', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 10),
                    Expanded(
                        child: Image(
                            image: AssetImage('assets/amazon/item_7.jpeg'),
                            fit: BoxFit.fitWidth)),
                    SizedBox(height: 10),
                    Text(
                        'Up to 31% off APC UPC Battery Back\n\$10.99 - \$79.9',
                        style: TextStyle(fontSize: 16)),
                  ],
                )),
            const Divider(thickness: 7),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Best sellers in Electronics',
                      style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                    ),
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(images[index], fit: BoxFit.cover);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
