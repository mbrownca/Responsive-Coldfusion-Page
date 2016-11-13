<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width">
<title>Northern California Peace Corps Association</title>

<link rel="stylesheet" type="text/css" href="style.css">

<svg style="position: absolute; width: 0; height: 0; overflow: hidden;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
  <defs>
    <symbol id="icon-caret-down" viewBox="0 0 16 28">
      <path class="path1" d="M16 11c0 0.266-0.109 0.516-0.297 0.703l-7 7c-0.187 0.187-0.438 0.297-0.703 0.297s-0.516-0.109-0.703-0.297l-7-7c-0.187-0.187-0.297-0.438-0.297-0.703 0-0.547 0.453-1 1-1h14c0.547 0 1 0.453 1 1z"></path>
    </symbol>
  </defs>
</svg>
 
</head>

<body>
<div class="container">
  <div class="header" > <a href="" ><img src="images/logo.png" style="float:left;"></a>
    <ul class="nav" >
      <li   > <a href="/board.cfm"> About Us
        <svg class="icon icon-caret-down">
          <use xlink:href="#icon-caret-down"></use>
        </svg>
        </a>
        <ul class="dropdown"  >
          <a href="mission.cfm" >Mission</a> 
          <a href="board.cfm">Board of Directors</a>
           <a href="history.cfm">History</a> 
          <a href="annualreport.pdf">2014 Annual Report</a>
        </ul>
      </li>
      <li   > <a href="/membership.cfm"> Membership </a> </li>
      <li > <a href="/calendar.cfm"> News &amp; Events
        <svg class="icon icon-caret-down">
          <use xlink:href="#icon-caret-down"></use>
        </svg>
        </a>
        <ul class="dropdown" >
          <a href="/neweventcalendar.cfm">Event Calendar</a> 
          <a href="/blog.cfm">News | Stories</a>
        </ul>
      </li>
      <li    > <a href="programs.cfm"> Programs
        <svg class="icon icon-caret-down">
          <use xlink:href="#icon-caret-down"></use>
        </svg>
        </a>
        <ul class="dropdown" >
          <a href="globalpresenters.cfm">Global Presenters</a>
           <a href="beyondborders.cfm">Beyond Borders Storytelling</a>
            <a href="grants.cfm">Grants</a> 
            <a href="mentor.cfm">Mentoring</a>
        </ul>
      </li>
      <li  > <a  href="/donate.cfm">Donate</a> </li>
    </ul>
    <!--end menu--> 
    
  </div>
  <!--end header-->
  
  <div style="clear:both;"></div>
  <div class="col_2">
    <div class="hero" >
      <div  class="welcome">
        <h1>Bringing Peace Corps Service Home</h1>
        <br />
        The Northern California Peace Corps Association is a 501(c)(3) nonprofit educating the public about the work of Peace Corps Volunteers and the countries they serve and supporting prospective, current and returned volunteers.<br />
        <br>
        </div>
    </div>
    <div class="box">
      <h2>Intercultural Education</h2>
      <div class="sub"> <span>Request a Global Presenter</span> <a href="/globalpresenters.cfm"><img src="Library/EllaSpeaker2.jpg" class="thumb" height="81" width="108" ></a>Returned Peace Corps Volunteers provide a unique, on-the-ground perspective of peoples and cultures in over 130 countries.  Our volunteers are available to speak to elementary schools, high schools, girl scout troops, Rotary clubs, etc. <br />
        <a href="/globalpresenters.cfm">Request a Global Presenter Today</a> </div>
    </div>
    <div  class="box" >
      <h2>Upcoming Events </h2>
      <div class="sub"> <a href="_feedburnerlink_"><img src="/images/feed-icon-16x16.png" style="float:right;"></a>
        <cfinclude template="eventfeed.cfm">
        <a href="/calendar.cfm" >See all events</a> </div>
    </div>
    <div class="box"  >
      <h2>Latest News</h2>
      <div class="sub">
        <CFQUERY datasource="#REQUEST.datasource#" name="contentDetail" cachedwithin="#createtimespan(0,0,15,0)#">
                          SELECT TOP (2)  * FROM nor_content_con
                              WHERE status_con='P'
                              AND homepage_con = 1
                              ORDER BY id_con DESC
                           </CFQUERY>
        <CFOUTPUT query="contentDetail" maxrows="2"  > 
          <!--- Use teaser_con for story.  If teaser_con does not exist then use first 200 characters of story as teaser instead --->
          <cfif len(teaser_con) gt 0>
            <cfset sDescription = #teaser_con#>
            <cfelse>
            <!--- Remove any formatting--->
            <cfset sDescription = REReplace(contentDetail.content_con,'<[^>]*>','','all')>
            <cfset sDescription = Left(sDescription, 200)>
          </cfif>
          <h3><a href="content.cfm?id=#id_con#" >#title_con#</a></h3>
          <cfif len(thumbnail_con) gt 0>
            <img src="#thumbnail_con#" class="thumb" height="81" width="108" >
          </cfif>
          #sDescription# ... <a href="content.cfm?id=#id_con#">read more</a> </CFOUTPUT> </div>
    </div>
    
    <div style="clear:both;"></div>
    
    <div class="footer "> &copy; 2015 Northern California Peace Corps Association. &nbsp;&nbsp;
      All rights reserved <a href="/privacy.cfm" >Privacy policy</a>
      <div  style="width:100px; float:right;  "> 
      <A href="_feedburnerlink_"><img src="images/rss.png" ></A>
       <a  href="_fb_"><img src="images/fb.png" ></a>
        <A href="_flickr_"><img src="images/flickr.png"  ></A>
         </div>
    </div>
 
  </div><!--end col 2--> 
  
</div><!--end container--> 

</body>

</html>

