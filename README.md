# requestBin

[![Master Branch Build Status](https://img.shields.io/travis/BluewaterSolutions/requestBin/master.svg?style=flat-square&label=master)](https://travis-ci.org/BluewaterSolutions/requestBin)

## 
## Introduction
requestBin gives you a URL that will collect requests made to it and let you inspect them in a coldfusion-friendly way.
Use requestBin to see what your HTTP client is sending or to inspect and debug webhook requests.

### What Does it Do?
* send HTTP POST to: `/requestBin/UNIQUEID`
	* Open this URL in your browser, change `UNIQUEID` to whatever service name you wish to use.
* Creates log file: `requestBin_UNIQUEID.log`
	* This log file stores the information in JSON format to render the `inspect` feature.
* Inspect the post: `/requestBin/UNIQUEID?inspect`
	* See the results from the HTTP post here.

### NOTE: This is a development tool, not intended for production.

#### Screenshot
![alt](http://www.blusol.io/__media/requestBin.png)

```

                                       
                                                  $7                        
                                                  $$$                         
                                                 .$$$$                        
                                                 :$$$$.                       
                                                 $$$$$                        
                                               .$$$$$$.                       
                                               $$$$$$$..,                     
                                              $$$$$$+  .$                     
                                             $$$$$=    .Z$                    
                                           .$$$$       .$$Z                   
                                         $$$.$$$$$$$$$$$$$+ . ..             
                                      ..$$$$$$$$$$$$$$7~,......,:+$$I         
                                    .$$$$7.  .                                
888      888                      .+$...              888                                      
888      888                     ..                   888                                      
888      888                                          888                                      
88888b.  888 888  888  .d88b.  888  888  888  8888b.  888888 .d88b.  888d888                   
888 "88b 888 888  888 d8P  Y8b 888  888  888     "88b 888   d8P  Y8b 888P"                     
888  888 888 888  888 88888888 888  888  888 .d888888 888   88888888 888                       
888 d88P 888 Y88b 888 Y8b.     Y88b 888 d88P 888  888 Y88b. Y8b.     888                       
88888P"  888  "Y88888  "Y8888   "Y8888888P"  "Y888888  "Y888 "Y8888  888 

             .dP"Y8  dP"Yb  88     88   88 888888 88  dP"Yb  88b 88 .dP"Y8 
             `Ybo." dP   Yb 88     88   88   88   88 dP   Yb 88Yb88 `Ybo." 
             o.`Y8b Yb   dP 88  .o Y8   8P   88   88 Yb   dP 88 Y88 o.`Y8b 
             8bodP'  YbodP  88ood8 `YbodP'   88   88  YbodP  88  Y8 8bodP' 

```

