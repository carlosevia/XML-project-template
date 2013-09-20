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

    <title>Instructions for <xsl:value-of select="instructions/gadget/shortname"/></title>

    <!-- Bootstrap core CSS -->
    <link href="http://netdna.bootstrapcdn.com/bootswatch/3.0.0/simplex/bootstrap.min.css" rel="stylesheet"/>
<style>
      body {
        padding-top: 40px; /* 40px to make the container go all the way to the bottom of the topbar */
      }
      .danger {color: red;}
</style>

   
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
          <a class="navbar-brand" href="index.html"><xsl:value-of select="instructions/gadget/shortname"/></a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="index.html">Home</a></li>
            
            <xsl:for-each select="instructions/modules/module">
      
           
            <li><a href="{url}"><xsl:value-of select="menutitle"/></a></li>
            </xsl:for-each>
                      </ul>
                 </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">


<xsl:for-each select="instructions/modules/module">
<div class="row" id="shortdesc">
  <div class="col-md-12">

     <h1><xsl:value-of select="title"/></h1>
    <p><xsl:value-of select="staging"/></p>
    </div>
 
   </div> <!-- close shortdesc -->    

  
<div class="row" id="collapses">
<div class="col-md-12">
  <div class="accordion" id="accordion2">
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
        <h2>Tools and ingredients</h2>
      </a>
    </div>
    <div id="collapseOne" class="accordion-body collapse">
      <div class="accordion-inner">
        <ul>
          <xsl:for-each select="ingredients/ingredient">
          <li><xsl:value-of select="item"/></li>
        </xsl:for-each>
        </ul>
      </div>
    </div>
  </div>
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
        <h2>Steps</h2>
      </a>
    </div>
    <div id="collapseTwo" class="accordion-body collapse">
      <div class="accordion-inner">
        <ol>
          <xsl:for-each select="steps/step">
          <li><xsl:value-of select="action"/></li>
            
            <xsl:choose>
              <xsl:when test="note/@type='danger'">
                <p class="danger"><strong><xsl:value-of select="note"/></strong></p>
                </xsl:when>
              <xsl:otherwise>
                <i><xsl:value-of select="note"/></i>
              </xsl:otherwise>
            </xsl:choose>
           
       
          </xsl:for-each>
        </ol>
        <p><xsl:value-of select="summary"/></p>
        <img class="img-responsive">
          <xsl:attribute name="src">
            <xsl:value-of select="picture"/>
          </xsl:attribute>
        </img>
        
        
      </div>
    </div>
  </div>
</div>
      


</div>
</div><!--closes collapses -->


     <hr/>
     
      <footer><p><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</em></p></footer>

</xsl:for-each>
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