<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.File" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.UnknownHostException" %>

<%@ page import="com.mongodb.DB" %>
<%@ page import="com.mongodb.DBCollection" %>
<%@ page import="com.mongodb.DBObject" %>
<%@ page import="com.mongodb.BasicDBObject" %>
<%@ page import="com.mongodb.Mongo" %>
<%@ page import="com.mongodb.util.JSON" %>

<%! DB mongoDB = null; %>

<%
/*	String mongoHost = (System.getenv("MONGODB_SERVICE_HOST") == null) ? "127.0.0.1" : System.getenv("MONGODB_SERVICE_HOST");
	String mongoPort = (System.getenv("MONGODB_SERVICE_PORT") == null) ? "27017" : System.getenv("MONGODB_SERVICE_PORT"); 
	String mongoUser = (System.getenv("MONGODB_USER")== null) ? "boaportal" : System.getenv("MONGODB_USER");
	String mongoPassword = (System.getenv("MONGODB_PASSWORD") == null) ? "boaportal" : System.getenv("MONGODB_PASSWORD");
	String mongoDBName = (System.getenv("MONGODB_DATABASE") == null) ? "boaportal" : System.getenv("MONGODB_DATABASE");
	// Check if we are using a mongoDB template or mongodb RHEL 7 image
	if (mongoHost == null) {
		mongoHost = System.getenv("MONGODB_24_RHEL7_SERVICE_HOST");
	} 
	if (mongoPort == null) {
		mongoPort = System.getenv("MONGODB_24_RHEL7_SERVICE_PORT");
	}
		
	int port = Integer.decode(mongoPort);
	boolean dbFailed = false;
	
	Mongo mongo = null;
	try {
		mongo = new Mongo(mongoHost, port);
		System.out.println("Connected to database " + mongoHost + " " + port + " " + mongoDBName );
	} catch (UnknownHostException e) {
		System.out.println("Couldn't connect to MongoDB: " + e.getMessage() + " :: " + e.getClass() + " with " + mongoHost + ":" + port + " " + mongoUser + " " + mongoPassword );
		dbFailed = true;
	} catch (Exception ex) {
	  	dbFailed = true;
	}

	if ( !dbFailed ) {
	
	mongoDB = mongo.getDB(mongoDBName);
	
	try {	
	if (mongoDB.authenticate(mongoUser, mongoPassword.toCharArray()) == false) {
		System.out.println("Failed to authenticate DB with " + mongoUser + " " + mongoPassword );
		dbFailed = true;
	}
	} catch (Exception ex) {
	  	dbFailed = true;
	} 

	if ( !dbFailed ) {

	DBCollection fotosCollection = mongoDB.getCollection("fotos");
	int fotosImported = 0;
	if (fotosCollection.count() < 1) {
	   System.out.println("The database is empty.  We need to populate it");
	   try {
	       File file = new File (request.getSession().getServletContext().getRealPath(request.getServletPath()));
	       String path = file.getParentFile().getName();
	       path += "/fotos/";
	       System.out.println ( "get fotos from path: " + path );

	       byte buf[] = new byte[4096];
	       ByteArrayOutputStream baos = new ByteArrayOutputStream();
	       InputStream is = this.getClass().getClassLoader().getResourceAsStream ( "fotos/foto1.png" );
	       while ( is.available() > 0 )
	       {
			int len = is.read(buf);
			baos.write ( buf, 0, len );
	       }
	       is.close();
	       baos.close();

       	       byte imageBytes[] = baos.toByteArray();
	       
	       System.out.println ( "Image foto1 mit " + imageBytes.length + " geladen." );

	       DBObject doc1 = new BasicDBObject("foto1", 1);
	       doc1.put("fileName", "foto1");
	       doc1.put("size", imageBytes.length);
	       doc1.put("data", imageBytes);
	       
	       fotosCollection.insert ( doc1 );

	       //BufferedReader in = new BufferedReader(new InputStream 
	       //String currentLine = new String();
	       //URL jsonFile = new URL("https://raw.githubusercontent.com/gshipley/openshift3mlbparks/master/mlbparks.json");
	       //BufferedReader in = new BufferedReader(new InputStreamReader(jsonFile.openStream()));
	       //while ((currentLine = in.readLine()) != null) {
	       //	     parkListCollection.insert((DBObject) JSON.parse(currentLine.toString()));
	//	     fotosImported++;
	       //}
	       System.out.println("Successfully imported " + fotosImported + " fotos.");

	   } catch (Exception e) {
	     e.printStackTrace();
	   }
	}
	}
	}
*/
%>

<html>
  <head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

	  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/jquery-ui.css"/>
	      
      <script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery-1.8.2.js"></script>
      <script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery-ui.js"></script>
    
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/ico/favicon.ico"/>
    
    <title>Online-Portal der Bußgeldstelle</title>
	
    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/bootstrap-3.0.0/css/bootstrap.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/fms.css" rel="stylesheet"/>
		
    <style>

/* Down-Button bei Comboboxen - überschreibt primefaces */
.ui-selectonemenu .ui-selectonemenu-trigger {
    background-color: #CCCCCC;
    width: 23px;
}

/* Anzeige Seite x von y */
.ui-paginator-pages .ui-paginator-page {
	color: #000000;
}

.ui-accordion-content.ui-helper-reset.ui-widget-content{
	border: 1px solid !important;
}
            
.ui-state-default .ui-icon {
	background-image: url('<%=request.getContextPath()%>/frm/javax.faces.resource/images/ui-icons_222222_256x240.png?ln=primefaces-berlin_de');
} 
            
    </style>

    <script>

      $(function() {

          $( "#dlg-foto1" ).dialog({
        	  autoOpen: false,
              resizable: false,
              height:"auto",
              width:420,
              modal: true,
              buttons: {
                  "Schließen": function() {
                      $( this ).dialog( "close" );
                  }
              }
          });

          $( "#dlg-foto2" ).dialog({
        	  autoOpen: false,
              resizable: false,
              height:"auto",
              width:420,
              modal: true,
              buttons: {
                  "Schließen": function() {
                      $( this ).dialog( "close" );
                  }
              }
          });

          $( "#dlg-foto3" ).dialog({
        	  autoOpen: false,
              resizable: false,
              height:"auto",
              width:420,
              modal: true,
              buttons: {
                  "Schließen": function() {
                      $( this ).dialog( "close" );
                  }
              }
          });

          $( "#dlg-foto4" ).dialog({
        	  autoOpen: false,
              resizable: false,
              height:"auto",
              width:420,
              modal: true,
              buttons: {
                  "Schließen": function() {
                      $( this ).dialog( "close" );
                  }
              }
          });
          
      });
      
      $(document).ready(function() {
    	  
	      $( "#dlg-foto1-open" ).click(function(ev) {
	   		$( "#dlg-foto1" ).dialog( "open" );
	      });
	      $( "#dlg-foto2-open" ).click(function(ev) {
	   		$( "#dlg-foto2" ).dialog( "open" );
	      });
	      $( "#dlg-foto3-open" ).click(function(ev) {
	   		$( "#dlg-foto3" ).dialog( "open" );
	      });
	      $( "#dlg-foto4-open" ).click(function(ev) {
	   		$( "#dlg-foto4" ).dialog( "open" );
	      });
	
      });

    </script>

  <head>
  
  <body>
  
    <div class="container">

      <div class="page-header">

        <div class="row">

          <div class="col-md-12">

            <!-- template start: portal-header -->
            <div class="fms-header">
              
              <div class="red-line"></div>
                
   	          <div>
                  <a href="http://www.berlin.de">
                    <img class="fms-logo" src="<%=request.getContextPath()%>/berlinonline/images/berlin_de.png" alt="" />
                  </a>
              </div>
                
            </div>

          </div>

		</div>
		
        <div class="fms-content">
            <div class="row">
                    <!-- template start: content-header -->
                    <div class="fms-content-header ">
                        <div class="row-fluid">
                            <div class="col-md-8">
                                <div class="section-logo">
                                    <div class="text">
                                    	<span class="institution"/>
										<span class="title"/>	                                         
                                    </div>
                                </div>								
                            </div>
                            <div class="col-md-4">
                            	<span style="font-size: 10px; color: #CCCCCC;">DEMO 1.0.1</span>
                            </div>
                        </div>
					</div>                    
            </div>
            
			<div class="row fms-content-navi-top" style="height: 52px; margin-top: 15px; margin-bottom: 8px; margin-right: 1px; margin-left: 1px;">	      
                		<div class="col-md-6" style="padding-left: 0px;">
							<form>
									<span style="margin-right: 8px; margin-left: 0px;">
										<a href="#" class="fms-ueberschrift"> Online-Portal der Bußgeldstelle </a>				                                                      </span>
								
								
							</form>
						</div>
                		<div class="col-md-6">
							<div class="beberlin"><span class="bb-logo">beBerlin</span></div>
						</div>
			</div>
			
		  <div class="row">
				<div class="col-md-12">
				    <div style="border: 1px solid #E3E3E3; border-radius: 4px;">
            		  <ui:insert name="verlauf"/>

		<div class="row">
			<div class="col-md-12">
				<h:form id="verlaufForm">
					<p:breadCrumb>
						<p:menuitem value="Home" url="#" />    
						<p:menuitem value="Anmeldung" url="#" />    
					</p:breadCrumb>
				</h:form>
			</div>
		</div>	

            		</div>  
            	</div>
          </div>
          <div class="row">  	
            	
				<div class="col-md-9" style="margin-top: 2px;">


<!-- beginn content -->

		<form id="boaForm">
							
<div id="dlg-foto1" title="Beweisfoto Nr. 1">
<h2>Beweisfoto Nr. 1</h2>
<p><img src="<%=request.getContextPath()%>/fotos/foto1.jpg"/></p>
</div>
<div id="dlg-foto2" title="Beweisfoto Nr. 2">
<h2>Beweisfoto Nr. 1</h2>
<p><img src="<%=request.getContextPath()%>/fotos/foto2.jpg"/></p>
</div>
<div id="dlg-foto3" title="Beweisfoto Nr. 3">
<h2>Beweisfoto Nr. 1</h2>
<p><img src="<%=request.getContextPath()%>/fotos/foto3.jpg"/></p>
</div>
<div id="dlg-foto4" title="Beweisfoto Nr. 4">
<h2>Beweisfoto Nr. 1</h2>
<p><img src="<%=request.getContextPath()%>/fotos/foto4.jpg"/></p>
</div>


							
				<div class="row">
					<div class="col-md-12">
						<h1>Betroffene(r)</h1>
					</div>
				</div>


	            <div class="row">
					<div class="col-md-8">
			            <div class="row">
							<div class="col-md-2">
								<span>Name:</span>	
							</div>		            
							<div class="col-md-10">	
								<div class="fms-vorgangsangaben-row" style="height: 22px;">Firma Mustermann &amp; Co GmbH</div>
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Straße:</span>	
							</div>		            
							<div class="col-md-10">	
								<div class="fms-vorgangsangaben-row" style="height: 22px;">Müllerstr. 1</div>    
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Ort:</span>	
							</div>		            
							<div class="col-md-10">	
								<div class="fms-vorgangsangaben-row" style="height: 22px;">13349 Berlin</div>	
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Kfz:</span>	
							</div>		            
							<div class="col-md-10">
								<div class="fms-vorgangsangaben-row" style="height: 22px;">	
									<span>HVL-BB 341</span>
								</div>		
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Tatzeit:</span>	
							</div>		            
							<div class="col-md-10">	
								<div class="fms-vorgangsangaben-row" style="height: 22px;">
<span>02.05.2016 11:11 Uhr</span>								
					            </div>    
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Tatort:</span>	
							</div>		            
							<div class="col-md-10">
								<div class="fms-vorgangsangaben-row" style="height: 22px;">	
									<span>10117 Berlin, Unterbaumstr. ggü. Hnr. 4</span>	
								</div>	
							</div>		            
			            </div>						
					</div>
					<div class="col-md-4">
						
<a href="#" id="dlg-foto1-open"><img src="<%=request.getContextPath()%>/fotos/thumb1.jpg"/></a>
<a href="#" id="dlg-foto2-open"><img src="<%=request.getContextPath()%>/fotos/thumb2.jpg"/></a>
<a href="#" id="dlg-foto3-open"><img src="<%=request.getContextPath()%>/fotos/thumb3.jpg"/></a>
<a href="#" id="dlg-foto4-open"><img src="<%=request.getContextPath()%>/fotos/thumb4.jpg"/></a>
												
					</div>
					
		        </div>		

				<div class="row">
					<div class="col-md-12">
						<h1>Tatvorwurf</h1>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="fms-vorgangsangaben-row" style="height: 120px;">Sie parkten im Bereich eines Parkscheinautomaten ohne gültigen Parkschein.<br>§ 13 Abs. 1, 2, § 49 StVO; § 24 StVG; 63.1 BKat</div>
					</div>
				</div>
				
				<hr/>
				
	          <div class="row">
              <div class="col-md-8">
			            <div class="row">
							<div class="col-md-12 fms-personenangaben-row">
								<span style="font-size: 1.1em;">Bitte tragen Sie auf der folgenden Seite die Angaben zur/zum Verantwortlichen für das Fahrzeug bzw. zur/zum Fahrzeugführer/in in die entsprechenden Felder ein.</span>
							</div>
						</div>		
			      <div class="row">
							<div class="col-md-12 fms-personenangaben-row">
								<span style="font-size: 1.1em;">Ergänzen Sie bitte - wenn zutreffend - die Angaben zum gesetzlichen Vertreter.</span>
							</div>
						</div>		
			      <div class="row">
							<div class="col-md-12 fms-personenangaben-row">
								<span style="font-size: 1.1em;">Für minderjährige Personen sind Angaben zum Erziehungsberechtigten als gesetzlicher Vertreter erforderlich.</span>
							</div>
						</div>		
			      <div class="row">
							<div class="col-md-12 fms-personenangaben-row">
								<span style="font-size: 1.1em;">Bei den mit * gekennzeichneten Feldern handelt es sich um Pflichtangaben.</span>
							</div>
						</div>		
			      <div class="row">
							<div class="col-md-12 fms-personenangaben-row">
								<span style="font-size: 1.1em;">Um die Online-Befragung abzubrechen, benutzen Sie bitte die Schaltfläche "Abbrechen". Alle bisher eingegebenen Informationen gehen verloren.</span>
							</div>
						</div>		
			      <div class="row">
							<div class="col-md-12 fms-personenangaben-row">
								<span style="font-size: 1.1em; text-decoration: underline;">Bitte beachten Sie die Hinweise auf der Ihnen übersandten Anhörung.</span>
							</div>
						</div>		
					</div>
					<div class="col-md-4">
						<img src="<%=request.getContextPath()%>/berlinonline/images/kostenpunkte200.jpg"/>
					</div>
				</div>
					
				<hr />

		<p:panel id="pagebuttonbar" style="border: 0px;">
	
			<div class="row">
			     <div class="col-md-3 col-sm-3 col-xs-12">	
				<button id="cancel" value="Abbrechen" style="width: 100%;" action="cancel" immediate="true">Abbrechen</button>
			     </div>			 
				<div class="text-right col-md-offset-6 col-md-2 col-sm-2 col-xs-12">
				  <button id="next" action="next" value="Weiter" style="width: 100%;">Weiter</button>
		             </div>		  
			</div>
					
	 		<p:confirmDialog global="true" showEffect="fade" width="500px">  
	        	<p:commandButton value="Ja" type="button" styleClass="ui-confirmdialog-yes" icon="ui-icon-pin-s"/>  
	        	<p:commandButton value="Nein" type="button" styleClass="ui-confirmdialog-no" icon="ui-icon-close"/>       
	    	</p:confirmDialog>
    	
    	</p:panel>
    				
		<p:blockUI block="pagebuttonbar" trigger="next" />


		</form>

<!-- ende content -->

            	</div>
            	<div class="col-md-3">
            		<div class="notes">

		<h3 style="margin-top: 16px;">Bankverbindungen</h3>

		<h3>Verwarnungsgelder, Bußgeld- und Kostenbescheide</h3>
			
		<p>Landeshauptkasse Berlin</p>
		<p>International IBAN:</p>
		<p>DE50100100100000082102</p>
		<p>BIC: PBNKDEFFXXX</p>
		
		<hr/>

		<h3>Kfz-Abschleppgebühren:</h3>

		<p>Landeshauptkasse Berlin</p>
		<p>International IBAN:</p>
		<p>DE12100100100000137106</p>
		<p>BIC: PBNKDEFFXXX</p>
		
		<p>Bei Zahlungen geben Sie bitte immer das Aktenzeichen bzw. das Kassenzeichen an.</p>

		<hr/>
		
		<p>Weitere Informationen auf der <a target="_blank" href="http://www.berlin.de/polizei/aufgaben/bussgeldstelle/allgemeines/">Seite der Bußgeldstelle</a> ...</p>



            		</div>
            	</div>	
			</div>

	      <div class="row">
	        	<div class="col-md-12">
	                    
	            	<div class="fms-content-footer">
	            		<h:form>
	            			            		
		                	<ul class="nav">
		                    	<li class="icon-footer icon-imprint_32">
		                    		<a href="http://www.berlin.de/polizei/allgemeine-seiten/artikel.40141.php" style="font-size: 1.1em;">Impressum</a></li>                            
		                    	<li class="icon-footer icon-imprint_32">
		                    		<p:commandLink id="helpLinkDatenschutz" onclick="PF('dlgDatenschutz').show();">Hinweise zum Datenschutz</p:commandLink>	                    		
		                    	</li>       
			
		                    	<li class="icon-footer icon-imprint_32">
									<p:commandLink id="helpLinkServiceangebot" onclick="PF('dlgServiceangebot').show();">Hinweise zum Serviceangebot</p:commandLink>
								</li>	
		                    </ul>
	                    </h:form>
	                    
	                </div>
	                    
	            </div>
	        </div>
			
        </div>
          
        <div style="clear:both"></div>
        
        <!-- Footer -->
        <div class="row">
          <div class="col-md-12">
          	<!-- template start: portal-footer -->
            <div class="fms-content-footer">
              <div>
              </div>
            </div><!-- /html5-footer -->
            <!-- /template end: portal-footer -->
          </div>
        </div>
        
      </div> <!-- ENDE page-header -->
    
    </div> <!-- ENDE container -->
  						
  </body>
  
</html>
