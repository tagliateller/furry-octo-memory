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
	
    <!--[if lt IE 9]>
	<script src=&quot;<%=request.getContextPath()%>/assets/js/html5shiv.js&quot;&gt;&lt;/script&gt;
	<script src=&quot;<%=request.getContextPath()%>/assets/js/respond.min.js&quot;&gt;&lt;/script&gt;
    <![endif]-->
	
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

		<h:form id="boaForm">
			
			<p:fieldset > 		
								
				<div class="row">
					<div class="col-md-12">
						<span>Sehr geehrte Dame, sehr geehrter Herr,</span>
					</div>
				</div>

				<div class="row" style="margin-top: 10px;">
					<div class="col-md-12">
						<span>das Serviceangebot der Bußgeldstelle des Polizeipräsidenten in Berlin steht Ihnen gebührenfrei zur Verfügung. In wenigen Schritten können Sie Ihre Äußerungen zum Verkehrsordnungswidrigkeitenverfahren tätigen. Im Anschluss an die Übermittlung Ihrer Angaben erhalten Sie einen ausdruckbaren Nachweis für Ihre Unterlagen.</span>
					</div>
				</div>

				<div class="row" style="margin-top: 10px;">
					<div class="col-md-12">
						<span>Bitte beachten Sie, dass die Ihnen im Anhörungsschreiben übermittelten Zugangsinformationen nur kurzfristig gültig sind.</span>
					</div>
				</div>

				<div class="row" style="margin-top: 10px;">
					<div class="col-md-7">
						<span>Mit freundlichen Grüßen - Die Bußgeldstelle</span>
					</div>
					<div class="col-md-3" style="text-align: right;">
						<span>Datum:</span>
					</div>
					<div class="col-md-2">
						<span>18.05.2016</span>
					</div>
				</div>
	
				<hr />

				<p:messages /> 

				<div class="row">
					<div class="col-md-12">
						<h1>Anmeldung</h1>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<span>Bitte geben Sie die Ihnen im Anhörungsschreiben übermittelten Zugangsinformationen in die nachfolgenden Felder ein und betätigen Sie anschließend die Schaltfläche "Anmeldung".</span>
					</div>
				</div>
          		
				<div class="row">
				
					<div class="col-md-offset-4 col-md-4"> 						
						<h:outputLabel for="username">Kennung *</h:outputLabel>
						<br />
						
						<input type="text"id="username" name="username" 
							label="Kennung *"
							required="false"
							requiredMessage="Bitte geben Sie die Kennung ein" size="43"
							maxlength="50" style="width: 100%;" />								
					</div>
				
				</div>

				<div class="row">
				
					<div class="col-md-offset-4 col-md-4"> 						
						<h:outputLabel for="password">Passwort *</h:outputLabel>
						<br />
						<input type="password" id="password" name="password"
						    label="Passwort *"
							required="false"
							requiredMessage="Bitte geben Sie das Passwort ein" size="43"
							maxlength="50" style="width: 100%;" />								
					</div>
				
				</div>
				
				<p:panel id="pagebuttonbar" style="border: 0px;">
				
					<div class="row">
					
						<div class="col-md-offset-9 col-md-3"> 						
	  
<button id="boaForm:login" name="boaForm:login" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" onclick="PrimeFaces.ab({source:'boaForm:login',update:'boaForm'});return false;" style="width: 100%;" type="submit" role="button" aria-disabled="false"><span class="ui-button-text ui-c">Anmeldung</span></button>	              			
	          			</div>
	          
	        		</div>
            
            	</p:panel>
            	
            	<p:blockUI block="pagebuttonbar" trigger="login" />
            	
				<div class="row">
					<div class="col-md-12">
						<span>* Pflichtfeld</span>
					</div>
				</div>
            
			</p:fieldset>
			
		</h:form>




            	</div>
            	<div class="col-md-3">
            		<div class="notes">
	            		<ui:insert name="notes"/>
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
  						
  </h:body>
  
</f:view>
</html>
