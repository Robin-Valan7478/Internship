
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:surf_wall/models/user_details_model.dart';


class HiveLocalStorage  {

    static Box? userCredentialsBox;
    

 static void initializeHive() async{
    //final dir = await getApplicationDocumentsDirectory();
    //String hiveRepoPath = path.join(dir.path, 'SurfWall');
    await Hive.initFlutter();
    
    Hive.registerAdapter(UserDetailsAdapter());

    userCredentialsBox = await Hive.openBox('userCredentialBox');
 }

static void putUserDetails(String key, UserDetails userDetails) async {
    
    await userCredentialsBox?.put(key, userDetails);
    print(key);
    print(userDetails);
  }

static void getUserDetails (String key ) async {
   
    await userCredentialsBox?.get(key);
}
}


