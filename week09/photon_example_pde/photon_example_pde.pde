import http.requests.*; 

String device_id = "xxxxxxxx_your_device_id_goes_here";
String access_token = "xxxxx_your_token_goes_here";
int count =0;

void setup(){
  size(1000,1000); 
 String reqprefix = "https://api.particle.io/v1/devices/"+device_id+"/counter?access_token="+access_token;
  GetRequest get = new GetRequest(reqprefix);
  get.send();
  JSONObject response = parseJSONObject(get.getContent());
  JSONObject info = response.getJSONObject("coreInfo");
  //print(response); 
  count = response.getInt("result"); 
  println(count);
}

void draw(){
  
  String reqprefix = "https://api.particle.io/v1/devices/"+device_id+"/counter?access_token="+access_token;
  GetRequest get = new GetRequest(reqprefix);
  get.send();
  JSONObject response = parseJSONObject(get.getContent());
  JSONObject info = response.getJSONObject("coreInfo");
  //print(response); 
  count = response.getInt("result"); 
  println(count);
  
  fill(255,0,0); 
  ellipse(width/2, height/2, count, count); 

} 