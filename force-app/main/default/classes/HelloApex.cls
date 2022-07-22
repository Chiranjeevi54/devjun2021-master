@RestResource(urlMapping='/Hello')

global with sharing class HelloApex {
   @HttpGet
   global static String getHello(){
    return 'Hello Team Good Morning';
   }
}