# JSON Processing implementation

This library is simply a fork of the original JSON for Java library written by Douglas Crockford for easy use inside Processing IDE. See the original README below.

# Getting started with JSON in Processing.

``` java
/**
 * Creating a JSONObject with primitive members
 */

JSONObject obj = new JSONObject();
try {
  obj.put("myint", 5);
  obj.put("myfloat", 5.5);
}
catch(JSONException e) {
  e.printStackTrace();
}

println( obj );
```

``` java
/**
 * Creating a JSONObject with complex members
 */
JSONObject myfirstmember = new JSONObject();
try {
  myfirstmember.put("myint", 5);
}
catch(JSONException e) {
  e.printStackTrace();
}

JSONObject mysecondmember = new JSONObject();
try {
  mysecondmember.put("myfloat", 5.5);
}
catch(JSONException e) {
  e.printStackTrace();
}

JSONObject obj = new JSONObject();
try {
  obj.put("myobj", myfirstmember);
  obj.put("myobj2", mysecondmember);
}
catch(JSONException e) {
  e.printStackTrace();
}

println( obj );
```

``` java
/**
 * Creating a JSONObject from a json-formatted String.
 */
String json_formatted_string = "{\"myint\":5,\"myfloat\":5.5}";
try {
  JSONObject obj = new JSONObject(json_formatted_string);
  println( obj );
}
catch(Exception e) {
  e.printStackTrace();
}

```

``` java
/**
 * Creating a JSONArray of primitives
 */
JSONArray arr = new JSONArray();
try {
  arr.put(5);
  arr.put(5.5);
  arr.put('a');
}
catch(JSONException e) {
  e.printStackTrace();
}
println(arr);
```

``` java
/**
 * Creating a JSONArray of objects
 */
JSONObject first = new JSONObject();
try {
  first.put("val", 5);
}
catch(JSONException e) {
  e.printStackTrace();
}

JSONObject sec = new JSONObject();
try {
  sec.put("val", 5.5);
}
catch(JSONException e) {
  e.printStackTrace();
}

JSONObject third = new JSONObject();
try {
  third.put("val", 'a');
}
catch(JSONException e) {
  e.printStackTrace();
}

JSONArray arr = new JSONArray();
arr.put(first);
arr.put(sec);
arr.put(third);

println(arr);
```

# Original README

JSON in Java [package org.json]

Douglas Crockford
douglas@crockford.com

2011-02-02


JSON is a light-weight, language independent, data interchange format.
See http://www.JSON.org/

The files in this package implement JSON encoders/decoders in Java. 
It also includes the capability to convert between JSON and XML, HTTP 
headers, Cookies, and CDL. 

This is a reference implementation. There is a large number of JSON packages
in Java. Perhaps someday the Java community will standardize on one. Until 
then, choose carefully.

The license includes this restriction: "The software shall be used for good, 
not evil." If your conscience cannot live with that, then choose a different
package.

The package compiles on Java 1.2 thru Java 1.4.


JSONObject.java: The JSONObject can parse text from a String or a JSONTokener
to produce a map-like object. The object provides methods for manipulating its
contents, and for producing a JSON compliant object serialization.

JSONArray.java: The JSONObject can parse text from a String or a JSONTokener
to produce a vector-like object. The object provides methods for manipulating 
its contents, and for producing a JSON compliant array serialization.

JSONTokener.java: The JSONTokener breaks a text into a sequence of individual
tokens. It can be constructed from a String, Reader, or InputStream.

JSONException.java: The JSONException is the standard exception type thrown
by this package.


JSONString.java: The JSONString interface requires a toJSONString method, 
allowing an object to provide its own serialization.

JSONStringer.java: The JSONStringer provides a convenient facility for 
building JSON strings.

JSONWriter.java: The JSONWriter provides a convenient facility for building 
JSON text through a writer.
 

CDL.java: CDL provides support for converting between JSON and comma
delimited lists.

Cookie.java: Cookie provides support for converting between JSON and cookies.

CookieList.java: CookieList provides support for converting between JSON and
cookie lists.

HTTP.java: HTTP provides support for converting between JSON and HTTP headers.

HTTPTokener.java: HTTPTokener extends JSONTokener for parsing HTTP headers.

XML.java: XML provides support for converting between JSON and XML.

JSONML.java: JSONML provides support for converting between JSONML and XML.

XMLTokener.java: XMLTokener extends JSONTokener for parsing XML text.