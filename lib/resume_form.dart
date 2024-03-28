import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResumeForm extends StatefulWidget {
  const ResumeForm({super.key});

  @override
  State<ResumeForm> createState() => _ResumeFormState();
}

class _ResumeFormState extends State<ResumeForm> {

  TextEditingController namecontroler = TextEditingController();

  List<TextEditingController> employeelistcontroler = [TextEditingController()];
  List<TextEditingController> educationlistcontroler = [TextEditingController()];
  List<TextEditingController> skilllistcontroler = [TextEditingController()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume Builder',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Personl Details',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),

              SizedBox(height: 10,),
              Text('Name', style: TextStyle(fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),),
              SizedBox(height: 10,),
              Container(
                height: 50,
                child: TextField(
                  controller: namecontroler,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54
                        ),
                      ),
                      hintText: 'Enter Your Name',
                      hoverColor: Colors.green
                  ),
                ),
              ),


              SizedBox(height: 15,),
              Text('Last Name', style: TextStyle(fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),),
              SizedBox(height: 10,),
              Container(
                height: 50,
                child: TextField(
                  controller: namecontroler,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54
                        ),
                      ),
                      hintText: 'Enter Last Your Name',
                      hoverColor: Colors.green
                  ),
                ),
              ),


              SizedBox(height: 15,),
              Text('Email', style: TextStyle(fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),),
              SizedBox(height: 10,),
              Container(
                height: 50,
                child: TextField(
                  controller: namecontroler,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54
                        ),
                      ),
                      hintText: 'Enter Your Email',
                      hoverColor: Colors.green
                  ),
                ),
              ),


              SizedBox(height: 15,),
              Text('Address', style: TextStyle(fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),),
              SizedBox(height: 10,),
              Container(
                height: 50,
                child: TextField(
                  controller: namecontroler,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54
                        ),
                      ),
                      hintText: 'Enter Your Address',
                      hoverColor: Colors.green
                  ),
                ),
              ),


              SizedBox(height: 15,),
              Text('Phone No', style: TextStyle(fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),),
              SizedBox(height: 10,),
              Container(
                height: 50,
                child: TextField(
                  controller: namecontroler,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54
                        ),
                      ),
                      hintText: 'Enter Your Phone No',
                      hoverColor: Colors.green
                  ),
                ),
              ),


              SizedBox(height: 15,),
              Text('OverView',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                height: 50,
                child: TextField(
                  controller: namecontroler,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54
                        ),
                      ),
                      hintText: 'Tell me about your self',
                      hoverColor: Colors.green
                  ),
                ),
              ),


              SizedBox(height: 15,),
              Text('Employment History',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    employeelistcontroler.add(TextEditingController());
                  });
                },
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text('Add Employment', style: TextStyle(color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),)
                  ],
                ),
              ),

              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: employeelistcontroler.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              height: 50,
                              child: TextField(
                                controller: employeelistcontroler[index],
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black54
                                      ),
                                    ),
                                    hintText: 'Employment details',
                                    hoverColor: Colors.green
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        IconButton(onPressed: () {
                          setState(() {
                            employeelistcontroler[index].clear();
                            employeelistcontroler[index].dispose();
                            employeelistcontroler.removeAt(index);
                          });
                        }, icon: Icon(CupertinoIcons.multiply))
                      ],
                    );
                  }),


              SizedBox(height: 15,),
              Text('Education',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    educationlistcontroler.add(TextEditingController());
                  });
                },
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text('Add Education', style: TextStyle(color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),)
                  ],
                ),
              ),

              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: educationlistcontroler.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              height: 50,
                              child: TextField(
                                controller: educationlistcontroler[index],
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black54
                                      ),
                                    ),
                                    hintText: 'Education Details',
                                    hoverColor: Colors.green
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        IconButton(onPressed: () {
                          setState(() {
                            educationlistcontroler[index].clear();
                            educationlistcontroler[index].dispose();
                            educationlistcontroler.removeAt(index);
                          });
                        }, icon: Icon(CupertinoIcons.multiply))
                      ],
                    );
                  }),


              SizedBox(height: 15,),
              Text('Skills',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    skilllistcontroler.add(TextEditingController());
                  });
                },
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text('Add Skills', style: TextStyle(color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),)
                  ],
                ),
              ),

              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: skilllistcontroler.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              height: 50,
                              child: TextField(
                                controller: skilllistcontroler[index],
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black54
                                      ),
                                    ),
                                    hintText: 'Skills',
                                    hoverColor: Colors.green
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        IconButton(onPressed: () {
                          setState(() {
                            skilllistcontroler[index].clear();
                            skilllistcontroler[index].dispose();
                            skilllistcontroler.removeAt(index);
                          });
                        }, icon: Icon(CupertinoIcons.multiply))
                      ],
                    );
                  }),

              SizedBox(height: 25,),

              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    ///
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                    child: Text('Make Resume',
                      style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              SizedBox(height: 15,),
            ],),
        ),
      ),
    );
  }
}