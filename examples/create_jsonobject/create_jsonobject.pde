/*
 * JSON 4 Processing
 * Basic example 1: Creating a JSON Object
 */

import org.json.*;

void setup(){
  
  // 1. Initialize the object
  JSONObject myJsonObject = new JSONObject();
  
  // 2. Add some content to the object
  myJsonObject.put( "myIntegerValue", 7 );
}

void draw(){
}
