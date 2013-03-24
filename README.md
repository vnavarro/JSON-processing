# JSON Processing implementation

This library is simply a fork of the original JSON for [Java library written by Douglas Crockford](https://github.com/douglascrockford/JSON-java) for easy use inside Processing IDE. See the original README below.

# Since Processing 2.0 beta 8

Since the beta release (8) of Processing 2.0 (February 24) JSON is part of the core libraries; the combination of this contributed library and the core library will cause the "type is ambiguous" error, basically meaning that Processing doesnt know which of the libraries to use. The simplest way to combat this is to delete the json4processing library.

# Installation in Processing

1. Download the latest version [here](santiclaws.se/json4processing/json4processing-0.1.6.zip)
2. Extract the zip-file into your /sketchbook/libraries/ folder.
3. Restart Processing IDE

You can still find the OLD versions [here](https://github.com/agoransson/JSON-processing/downloads)

# Getting started with JSON in Processing.

**Creating a JSONObject with primitive members**

``` java
/**
 * Creating a JSONObject with primitive members
 */

JSONObject obj = new JSONObject();
obj.put("myint", 5);
obj.put("myfloat", 5.5);

println( obj );
```

**Creating a JSONObject with complex members**

``` java
/**
 * Creating a JSONObject with complex members
 */
JSONObject myfirstmember = new JSONObject();
myfirstmember.put("myint", 5);

JSONObject mysecondmember = new JSONObject();
mysecondmember.put("myfloat", 5.5);

JSONObject obj = new JSONObject();
obj.put("myobj", myfirstmember);
obj.put("myobj2", mysecondmember);

println( obj );
```

**Creating a JSONObject from a json-formatted String.**

``` java
/**
 * Creating a JSONObject from a json-formatted String.
 */
String json_formatted_string = "{\"myint\":5,\"myfloat\":5.5}";
JSONObject obj = new JSONObject(json_formatted_string);
println( obj );
```

**Creating a JSONArray of primitives**

``` java
/**
 * Creating a JSONArray of primitives
 */
JSONArray arr = new JSONArray();
arr.put(5);
arr.put(5.5);
arr.put('a');

println(arr);
```

**Creating a JSONArray of objects**

``` java
/**
 * Creating a JSONArray of objects
 */
JSONObject first = new JSONObject();
first.put("val", 5);

JSONObject sec = new JSONObject();
sec.put("val", 5.5);

JSONObject third = new JSONObject();
third.put("val", 'a');

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