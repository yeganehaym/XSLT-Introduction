<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Free CSS Template for Music Websites</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--
This is a free CSS template provided by templatemo.com
-->
<div id="templatemo_container">

	<div id="templatemo_header">
    	<div id="templatemo_title">
            <div id="templatemo_sitetitle">Music <span>Layout</span></div>
        </div>
        
        <div id="templatemo_login">
        	<form method="get" action="#">
                <label>Search:</label><input class="inputfield" name="keyword" type="text" id="keyword"/>
                <input class="button" type="submit" name="Search" value="Search" />
            </form>
        </div>
    </div>

	<div id="templatemo_banner">
       	<div id="templatemo_banner_text">
            <div id="banner_title">Welcome To Music Store</div>
            <p>
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nunc quis sem nec tellus blandit tincidunt. Duis vitae velit sed dui malesuada dignissim. Donec mollis aliquet ligula. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nunc quis sem nec tellus blandit tincidunt.
            </p>
            <div class="more_button"><a href="#">Read More</a></div>
    	</div>
	</div>
    
    <div id="templatemo_menu">
     	<ul>
			<li><a href="index.html" class="current">Main Page</a></li>
			<li><a href="subpage.html">Videos</a></li>
            <li><a href="subpage.html">Audios</a></li>
            <li><a href="subpage.html">Albums</a></li>  
            <li><a href="subpage.html">Artists</a></li>                      
            <li><a href="subpage.html" class="lastmenu">Contact</a></li>            
        </ul>  
    </div>
    
    <div id="templatemo_content">
    
    	<div id="templatemo_left_column">
            <h2>Customer Login</h2>
            <div class="left_col_box">
                <form method="get" action="#">
                  <div class="form_row"><label>Email</label><input class="inputfield" name="email_address" type="text" id="email_addremss"/></div>
                    <div class="form_row"><label>Password</label><input class="inputfield" name="password" type="password" id="password"/></div>
                    <input class="button" type="submit" name="Submit" value="Login" />
                </form>
			</div>
            
            <h2>Blog Entries</h2>
            <div class="left_col_box">
                <div class="blog_box">
                    <h3><a href="#">Curabitur quis velit quis tortor</a></h3>
                    Suspendisse vitae neque eget ante tristique vestibulum. Pellentesque vitae magna.<br />
                    Posted by <a href="#"><span>Admin</span></a> in <a href="#"><span>Videos</span></a><br />
                    14 December 2020
				</div>
                <div class="blog_box">
                    <h3><a href="#">Duis vitae velit sed dui</a></h3>
                    Pellentesque vitae magna. Suspendisse vitae neque eget ante tristique vestibulum.<br />
                    Posted by <a href="#"><span>Admin</span></a> in <a href="#"><span>Audios</span></a><br />
                    20 December 2020
				</div>
                <div class="blog_box">
                    <h3><a href="#">Donec mollis aliquet ligula</a></h3>
                    Suspendisse vitae neque eget ante tristique vestibulum.<br />
                    Posted by <a href="#"><span>Admin</span></a> in <a href="#"><span>Samples</span></a><br />
                    22 December 2020
				</div> 
                <div class="blog_box">
                    <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
    <a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
				</div> 
                <div class="more_button"><a href="#">View All</a></div>                                              

			</div>
		</div>
        
        <div id="templatemo_right_column">
        	<div id="new_released_section">
            	<h1>Latest Albums</h1>
		

		
	
		
	
		
				<xsl:for-each select="Albums/Album">
				<!-- <xsl:for-each select="Albums/Album[contains(Genres/Genre, 'POP')]">-->
				<xsl:sort select="name"/>
            	<div class="new_released_box">
				<img src="{cover}" width="200px" height="200px">
				<xsl:value-of select="cover" />
               </img>
                    <h3><xsl:value-of select="name" /></h3> 				
					<h4>
					<xsl:for-each select="Genres/Genre">
						<xsl:value-of select="."/>
						<xsl:if test="position() != last()">
						,
						</xsl:if>
					 </xsl:for-each>
					</h4>
					
					<xsl:variable name="numprice" select="number(substring(price,1,string-length(price)-1))" /> 
					<xsl:choose>
						<xsl:when test="$numprice>=10">
							<h4 >
							<span style='text-decoration:line-through;color:red'><xsl:value-of select="price" /></span>
							<b><xsl:value-of select="$numprice -2" />$</b>
							</h4>
						</xsl:when>
						
						<xsl:otherwise>
						<h4 >
							<b><xsl:value-of select="$numprice" />$</b>
						</h4>
						</xsl:otherwise>
					</xsl:choose>
				  <h4>
					 <xsl:apply-templates select="DateOfRelease"/>
					 </h4>
					<h4><xsl:value-of select="Description"/></h4>
                    <div class="more_button"><a href="#">More</a></div>
				</div>
            </xsl:for-each>
		
				
				
				
				
				

	
            </div>
            
            <div class="templatemo_right_panel_fullwidth">
                <div id="news_section">
                    <h1>News </h1>
                    <div class="news_box">
                        <img src="images/sampleimage(110x110).gif" alt="image" />
                        <h3>News Title 1</h3> 
                        <h4>14 OCT 2020</h4>
                        <p>Maecenas vulputate, arcu id fermentum eleifend, tortor enim tincidunt mauris, fringilla tincidunt purus urna vel risus. <a href="#">more...</a>
                        </p>
                    </div>
                    <div class="news_box">
                        <img src="images/sampleimage(110x110).gif" alt="image" />
                        <h3>News Title 2</h3> 
                        <h4>13 OCT 2020</h4>
                        <p> Fusce vulputate tellus ac felis. Praesent mauris. Quisque gravida faucibus ligula. Aliquam magna. Phasellus id felis. <a href="#">more...</a>
                        </p>
                    </div>
                    <div class="more_button" style="margin-left:15px;"><a href="#">View All</a></div>
                </div> <!-- end of news -->
                
                <div id="topdownload_section">
                    <h1>Top Downloads</h1>
                    <div class="topdownload_box">
                        <div class="title_singer">Song Title 1 by <span>Artist 1</span></div><span class="download_button"><a class="download_button" href="#">Download</a></span>
                    </div>
                    <div class="topdownload_box">
                        <div class="title_singer">Song Title 2 by <span>Artist 2</span></div><span class="download_button"><a class="download_button" href="#">Download</a></span>
                    </div>
                    <div class="topdownload_box">
                        <div class="title_singer">Song Title 3 by <span>Artist 3</span></div><span class="download_button"><a class="download_button" href="#">Download</a></span>
                    </div>
                    <div class="topdownload_box">
                        <div class="title_singer">Song Title 4 by <span>Artist 4</span></div><span class="download_button"><a class="download_button" href="#">Download</a></span>
                    </div>
                    <div class="topdownload_box">
                        <div class="title_singer">Song Title 5 by <span>Artist 5</span></div><span class="download_button"><a class="download_button" href="#">Download</a></span>
                    </div>
                    <div class="topdownload_box">
                        <div class="title_singer">Song Title 6 by <span>Artist 6</span></div><span class="download_button"><a class="download_button" href="#">Download</a></span>
                    </div> 
                     <div class="topdownload_box">
                        <div class="title_singer">Song Title 7 by <span>Artist 7</span></div><span class="download_button"><a class="download_button" href="#">Download</a></span>
                    </div>       
                </div> <!-- end of top download -->
			</div>                
            
		</div>
    </div>
    <!--  Designed by w w w . t e m p l a t e m o . c o m  --> 
    
	<div id="templatemo_footer">
        <a href="#">Home</a> | <a href="#">Videos</a> | <a href="#">Audios</a> | <a href="#">Albums</a> | <a href="#">Artists</a> | <a href="#">Contact</a><br />
        Copyright © <a href="#"><strong>Your Company Name</strong></a> 
        <!-- Credit: www.templatemo.com -->
	</div>
</div>
<!-- templatemo 047 music -->
<!-- 
Music Template 
http://www.templatemo.com/preview/templatemo_047_music 
-->  
</body>
</html>
	</xsl:template>

	<xsl:template match="DateOfRelease">
	
	<xsl:variable name="date" select="."/>
	<xsl:variable name="day" select="substring($date,1,2)"/>
	<xsl:variable name="month" select="number(substring($date,4,2))"/>
	<xsl:variable name="year" select="substring($date,7,4)"/>
	Release Date:

	<xsl:choose>
	<xsl:when test="$month = 1">
		<xsl:value-of select="$day"/>,Jan/<xsl:value-of select="$year"/>
	</xsl:when>
	<xsl:when test="$month = 2">
		<xsl:value-of select="$day"/>,Feb/<xsl:value-of select="$year"/>
	</xsl:when>
	<xsl:when test="$month = 3">
		<xsl:value-of select="$day"/>,Mar/<xsl:value-of select="$year"/>
	</xsl:when>
	<xsl:when test="$month = 4">
		<xsl:value-of select="$day"/>,Apr/<xsl:value-of select="$year"/>
	</xsl:when>
	<xsl:when test="$month = 5">
		<xsl:value-of select="$day"/>,May/<xsl:value-of select="$year"/>
	</xsl:when>
	<xsl:when test="$month = 6">
	<xsl:value-of select="$day"/>,Jun/<xsl:value-of select="$year"/>
	</xsl:when>
	
	<xsl:when test="$month = 7">
		<xsl:value-of select="$day"/>,Jul/<xsl:value-of select="$year"/>
	</xsl:when>
	<xsl:when test="$month = 8">
	<xsl:value-of select="$day"/>,Aug/<xsl:value-of select="$year"/>
	</xsl:when>
	<xsl:when test="$month = 9">
		<xsl:value-of select="$day"/>,Sep/<xsl:value-of select="$year"/>
	</xsl:when>
	<xsl:when test="$month = 10">
		<xsl:value-of select="$day"/>,Oct/<xsl:value-of select="$year"/>
	</xsl:when>
	<xsl:when test="$month = 11">
		<xsl:value-of select="$day"/>,Nov/<xsl:value-of select="$year"/>
	</xsl:when>
	
	<xsl:otherwise>
		<xsl:value-of select="$day"/>,Dec/<xsl:value-of select="$year"/>
	</xsl:otherwise>
	</xsl:choose>

	
	</xsl:template>
	


</xsl:stylesheet>