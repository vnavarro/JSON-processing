/*
 * JSON 4 Processing
 * Basic example 1: Creating a JSON Object
<<<<<<< HEAD
 *
 * Good for sending values that has a specific meaning (complex values)
=======
>>>>>>> origin/HEAD
 */

import org.json.*;

void setup(){
  
  // 1. Initialize the object
  JSONObject myJsonObject = new JSONObject();
  
  // 2. Add some content to the object
  myJsonObject.put( "myIntegerValue", 7 );
<<<<<<< HEAD
  
  println( myJsonObject );
=======
>>>>>>> origin/HEAD
}

void draw(){
}
