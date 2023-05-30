import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/onboarding/login.dart';
import 'package:flutter_application_1/onboarding/start.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(109, 132, 158, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 68, 105, 1),
        elevation: 0,
        title: Text("Create New Account"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Help?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(109, 132, 158, 1),
                  onPrimary: Colors.white,
                  minimumSize: Size(70, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                  )),
            ),
          ),
        ],
      ),
      body: Center(
        child: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _index = 0;
  String countryValue = "Indonesia";
  String provinceValue = "Bali";
  String cityValue = "Singaraja";
  String contentValue = "Pet";
  List<Step> getSteps() => [
        Step(
            isActive: _index >= 0,
            title: const Text(
              'Account',
              style: TextStyle(color: Colors.white),
            ),
            content: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 40, width: 250),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(161, 177, 194, 1),
                      labelText: "Full Name",
                      labelStyle: TextStyle(
                          color: Color.fromARGB(160, 0, 0, 0), fontSize: 12),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(161, 177, 194, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(161, 177, 194, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(161, 177, 194, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: CustomRadioButton(
                    buttonLables: ["Male", "Female"],
                    buttonValues: [1, 2],
                    width: 120,
                    height: 40,
                    radioButtonValue: (value) => print(value),
                    unSelectedColor: Color.fromRGBO(161, 177, 194, 1),
                    selectedColor: Color.fromRGBO(35, 68, 105, 1),
                    unSelectedBorderColor: Color.fromRGBO(161, 177, 194, 1),
                    selectedBorderColor: Color.fromRGBO(35, 68, 105, 1),
                    enableShape: true,
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 40, width: 250),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(161, 177, 194, 1),
                        labelText: "Date of Birth",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(160, 0, 0, 0), fontSize: 12),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        prefixIcon: Icon(Icons.calendar_month)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(height: 40, width: 85),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(161, 177, 194, 1),
                                enabled: false,
                                hintText: "+62",
                                hintStyle: TextStyle(fontSize: 12),
                                labelStyle: TextStyle(
                                    color: Color.fromARGB(160, 0, 0, 0),
                                    fontSize: 12),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(161, 177, 194, 1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(22))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(161, 177, 194, 1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(22))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(161, 177, 194, 1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(22))),
                                prefixIcon: Image(
                                  image: AssetImage("images/indo.png"),
                                  width: 24,
                                  height: 17,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(height: 40, width: 160),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(161, 177, 194, 1),
                              labelText: "No. Handphone",
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(160, 0, 0, 0),
                                  fontSize: 12),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(161, 177, 194, 1)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(22))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(161, 177, 194, 1)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(22))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(161, 177, 194, 1)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(22))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 40, width: 250),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(161, 177, 194, 1),
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: Color.fromARGB(160, 0, 0, 0), fontSize: 12),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(161, 177, 194, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(161, 177, 194, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(161, 177, 194, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(height: 40, width: 250),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(161, 177, 194, 1),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(160, 0, 0, 0), fontSize: 12),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 40, width: 250),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(161, 177, 194, 1),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                          color: Color.fromARGB(160, 0, 0, 0), fontSize: 12),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(161, 177, 194, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(161, 177, 194, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(161, 177, 194, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                    ),
                  ),
                ),
              ],
            )),
        Step(
            isActive: _index >= 1,
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
            content: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    width: 250,
                    height: 60,
                    child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(161, 177, 194, 1)),
                              borderRadius: BorderRadius.circular(22)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(161, 177, 194, 1)),
                              borderRadius: BorderRadius.circular(22)),
                          filled: true,
                          fillColor: Color.fromRGBO(161, 177, 194, 1),
                        ),
                        dropdownColor: Color.fromRGBO(161, 177, 194, 1),
                        value: countryValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            countryValue = newValue!;
                          });
                        },
                        items: countryItems),
                  ),
                ),
                Container(
                  width: 250,
                  height: 60,
                  child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius: BorderRadius.circular(22)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius: BorderRadius.circular(22)),
                        filled: true,
                        fillColor: Color.fromRGBO(161, 177, 194, 1),
                      ),
                      dropdownColor: Color.fromRGBO(161, 177, 194, 1),
                      value: provinceValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          provinceValue = newValue!;
                        });
                      },
                      items: provinceItems),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, top: 15),
                  child: Container(
                    width: 250,
                    height: 60,
                    child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(161, 177, 194, 1)),
                              borderRadius: BorderRadius.circular(22)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(161, 177, 194, 1)),
                              borderRadius: BorderRadius.circular(22)),
                          filled: true,
                          fillColor: Color.fromRGBO(161, 177, 194, 1),
                        ),
                        dropdownColor: Color.fromRGBO(161, 177, 194, 1),
                        value: cityValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            cityValue = newValue!;
                          });
                        },
                        items: cityItems),
                  ),
                ),
                Container(
                  width: 250,
                  height: 60,
                  child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius: BorderRadius.circular(22)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(161, 177, 194, 1)),
                            borderRadius: BorderRadius.circular(22)),
                        filled: true,
                        fillColor: Color.fromRGBO(161, 177, 194, 1),
                      ),
                      dropdownColor: Color.fromRGBO(161, 177, 194, 1),
                      value: contentValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          contentValue = newValue!;
                        });
                      },
                      items: contentItems),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 50),
                  child: Row(
                    children: [
                      MyCheckBox(),
                      Column(
                        children: [
                          Text(
                            "I understand and agree to the Terms",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "and Conditions Ngendorse.id",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ];
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          canvasColor: Color.fromRGBO(35, 68, 105, 1),
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(primary: Color.fromRGBO(161, 177, 194, 1))),
      child: Stepper(
          type: StepperType.horizontal,
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          onStepContinue: () {
            final isLastStep = _index == getSteps().length - 1;
            if (isLastStep) {
              showDataAlert(context);
              // Send data to server
            } else if (_index <= 0) {
              setState(() {
                _index += 1;
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          steps: getSteps()),
    );
  }
}

class _MyCheckBox extends State<MyCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.black;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBox();
}

List<DropdownMenuItem<String>> get countryItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Indonesia"), value: "Indonesia"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get provinceItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Bali"), value: "Bali"),
    DropdownMenuItem(child: Text("Sumatera Utara"), value: "Sumatera Utara"),
    DropdownMenuItem(child: Text("Jawa Timur"), value: "Jawa Timur"),
    DropdownMenuItem(child: Text("Sulawesi"), value: "Sulawesi"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get cityItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Singaraja"), value: "Singaraja"),
    DropdownMenuItem(child: Text("Medan"), value: "Medan"),
    DropdownMenuItem(child: Text("Gresik"), value: "Gresik"),
    DropdownMenuItem(child: Text("Makasar"), value: "Makasar"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get contentItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Entertainment"), value: "Entertainment"),
    DropdownMenuItem(child: Text("Pet"), value: "Pet"),
    DropdownMenuItem(child: Text("Gaming"), value: "Gaming"),
    DropdownMenuItem(
        child: Text("Beauty & Fashion"), value: "Beauty & Fashion"),
    DropdownMenuItem(
        child: Text("Food & Beverages"), value: "Food & Beverages"),
    DropdownMenuItem(child: Text("Health & Sport"), value: "Health & Sport"),
    DropdownMenuItem(
        child: Text("Lifestyle & Travel"), value: "Lifestyle & Travel"),
    DropdownMenuItem(
        child: Text("Family & Parenting"), value: "Family & Parenting"),
    DropdownMenuItem(child: Text("Technology"), value: "Technology"),
  ];
  return menuItems;
}

/// This is the private State class that goes with MyStatefulWidget.
class MyRadioButton extends State<MyStatefulWidget> {
  int value = 0;
  Widget CustomRadioButton(String text, int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          value = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (value == index) ? Colors.green : Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(109, 132, 158, 1),
          onPrimary: Colors.white,
          minimumSize: Size(120, 35),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(22)),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomRadioButton("Male", 1),
        CustomRadioButton("Female", 2),
      ],
    );
  }
}

showDataAlert(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                22.0,
              ),
            ),
          ),
          contentPadding: EdgeInsets.only(
            top: 10.0,
          ),
          title: Icon(
            Icons.mail_outline,
            size: 100,
            color: Colors.blue[800],
          ),
          content: Container(
            height: 200,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Your Registration is Complete! ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Verify your account first",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "so that it can be used",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    padding: const EdgeInsets.all(30),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(35, 68, 105, 1),
                        // fixedSize: Size(250, 50),
                      ),
                      child: Text(
                        "Close",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
