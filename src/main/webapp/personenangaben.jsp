<%@ page contentType="text/html; charset=UTF-8" %>

<html>
  <head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    
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
        $("#dlg-foto1").dialog();
      });
      $(function() {
        $("#dlg-foto2").dialog();
      });
      $(function() {
        $("#dlg-foto3").dialog();
      });
      $(function() {
        $("#dlg-foto4").dialog();
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
<p><img src="<%=request.getContextPath()%>/fotos/foto1.png"/></p>
</div>
<div id="dlg-foto2" title="Beweisfoto Nr. 2">
<p><img src="<%=request.getContextPath()%>/fotos/foto2.png"/></p>
</div>
<div id="dlg-foto3" title="Beweisfoto Nr. 3">
<p><img src="<%=request.getContextPath()%>/fotos/foto3.png"/></p>
</div>
<div id="dlg-foto4" title="Beweisfoto Nr. 4">
<p><img src="<%=request.getContextPath()%>/fotos/foto4.png"/></p>
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
								<div class="fms-vorgangsangaben-row">Firma Mustermann &amp; Co GmbH</div>
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Straße:</span>	
							</div>		            
							<div class="col-md-10">	
								<div class="fms-vorgangsangaben-row">Müllerstr. 1</div>    
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Ort:</span>	
							</div>		            
							<div class="col-md-10">	
								<div class="fms-vorgangsangaben-row">13349 Berlin</div>	
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Kfz:</span>	
							</div>		            
							<div class="col-md-10">
								<div class="fms-vorgangsangaben-row">	
									<span>HVL-BB 341</span>
								</div>		
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Tatzeit:</span>	
							</div>		            
							<div class="col-md-10">	
								<div class="fms-vorgangsangaben-row">
<span>02.05.2016 11:11 Uhr</span>								
					            </div>    
							</div>		            
			            </div>						
			            <div class="row">
							<div class="col-md-2">
								<span>Tatort:</span>	
							</div>		            
							<div class="col-md-10">
								<div class="fms-vorgangsangaben-row">	
									<span>10117 Berlin, Unterbaumstr. ggü. Hnr. 4</span>	
								</div>	
							</div>		            
			            </div>						
					</div>
					<div class="col-md-4">
						
<img src="<%=request.getContextPath()%>/fotos/foto1.png"/>
<img src="<%=request.getContextPath()%>/fotos/foto2.png"/>
<img src="<%=request.getContextPath()%>/fotos/foto3.png"/>
<img src="<%=request.getContextPath()%>/fotos/foto4.png"/>

							<p:commandLink id="showGalleria" onclick="PF('dlgGalleria').show()">
								<p:galleria id="fotoGalleria" value="" var="foto" panelWidth="180" panelHeight="1"  
								            frameWidth="48" frameHeight="48" effect="clip">  
								  
									<p:graphicImage id="fotoImage" value=""
										alt="" title="" cache="false">
										<f:param name="photo_id" value=""/>
									</p:graphicImage>	
								      
								    <f:facet name="content">  
								        <h:panelGrid  columns="2" cellpadding="5">  
								            								             
								        </h:panelGrid>  
								    </f:facet>  
								  
								</p:galleria>  					
							</p:commandLink>
												
					</div>
					
		        </div>		

				<div class="row">
					<div class="col-md-12">
						<h1>Tatvorwurf</h1>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="fms-vorgangsangaben-row">Sie parkten im Bereich eines Parkscheinautomaten ohne gültigen Parkschein.&lt;BR /&gt;§ 13 Abs. 1, 2, § 49 StVO; § 24 StVG; 63.1 BKat</div>
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
				<button id="cancel" value="Abbrechen" style="width: 100%;" action="cancel" immediate="true"/>
			     </div>			 
				<div class="text-right col-md-offset-6 col-md-2 col-sm-2 col-xs-12">
				  <button id="next" action="next" value="Weiter" style="width: 100%;" update="@form"/>
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
