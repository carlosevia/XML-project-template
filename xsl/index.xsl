<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">       

<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Instructions for my favorite gadgets</title>

    <!-- Bootstrap core CSS -->
    <link href="http://netdna.bootstrapcdn.com/bootswatch/3.0.0/simplex/bootstrap.min.css" rel="stylesheet"/>
    
     
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">Home</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
           
            <li class="active"><a href="sources.html">Sources</a></li>
                      </ul>
                 </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Instructions for my favorite gadgets</h1>
        <p><xsl:value-of select="instructions/intro"/></p>
        
         <div class="row">
           
           <xsl:for-each select="instructions/gadgets/gadget[@id='1']">
  <div class="col-md-6">
    <img class="img-responsive">
      <xsl:attribute name="src">
        <xsl:value-of select="picture"/>
      </xsl:attribute>
    </img>
  
    <p><a class="btn btn-primary btn-lg" href="gadget1.html"><xsl:value-of select="shortname"/></a></p>
  </div>
           </xsl:for-each>
           <xsl:for-each select="instructions/gadgets/gadget[@id='2']">  
             <div class="col-md-6"> <img class="img-responsive">
               <xsl:attribute name="src">
                 <xsl:value-of select="picture"/>
               </xsl:attribute>
             </img>
    <p><a class="btn btn-primary btn-lg" href="gadget2.html"><xsl:value-of select="shortname"/></a></p>
  </div>
           </xsl:for-each>
</div>
   
      </div>
      <footer><p><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</em></p></footer>


    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
  </body>
  </html>

</xsl:template> 
</xsl:stylesheet>