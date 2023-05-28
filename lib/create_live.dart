import 'package:flutter/material.dart';
import 'package:live_stream/live_page.dart';
class create extends StatefulWidget {
  const create({Key? key}) : super(key: key);

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  var host=false;
  
  TextEditingController userNameController=TextEditingController();

  TextEditingController userIdController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Focus.of(context).requestFocus(FocusNode());
        },
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(child: Column(
              children: [
                textField(
                  controller:userNameController, text: 'User Name',

                  icon:Icons.person,

                ),
                SizedBox(height: 25,),
                textField(controller: userIdController, text: 'User Id', icon: Icons.pin),
                SizedBox(height: 30,),
                hostcheck(),
                SizedBox(height: 15,),

                submitButton(context),

              ],
            ),

            ),
          ),
        ),
      ),
    );
  }
  TextFormField textField(
  {
  required TextEditingController controller,
    required String text,
    required IconData icon,
}
      ){
    return TextFormField(
      controller: controller,
      onSaved: (value){
        controller.text=value!;
      },
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 1,
          )
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          )
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.blue,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: text,
        hintStyle: const TextStyle(
          color:
            Color.fromARGB(255, 182, 174, 172),
        )
      ),
    );

  }
  Material submitButton(BuildContext context){
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(8),
      color: Colors.blue,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 12),
        minWidth: MediaQuery.of(context).size.width, onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>MyWidget(
            userID:userIdController.text,
            userName:userNameController.text,
            liveID:'1',
            ishost: host,

          )
          ),
          ),
          );
      },
        child: const Text("Join",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white,),),
      ),

    );
  }
  Row hostcheck(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Host'),
      Checkbox(value:host,
        onChanged: ((value){
          setState(() {
            host =value!;
          });
        }

        ),

      )
      ],
    );

  }


}
