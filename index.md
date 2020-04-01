---
layout: default
title: We Teach Blockchain
stylesheet: homepage.css
ogTitle: Blockchain Institute
ogDesc: We are a nonprofit organization with the mission of educating the world on all things related to blockchain, cryptocurrency, and decentralized technology. Sign up for an in-person class or take a free online course today!
ogImage: https://weteachblockchain.org/assets/img/headerBackgroundTile.jpg
ogUrl: https://weteachblockchain.org/
---
<script>
  function bic_showMailChimp () {
    console.log('display mc triggered')
  }
</script>

{% include pageHeader.html 
	img="Homepage_Banner.jpg" 
	header="Help Us Build The Internet of Trust" 
	text="We believe in providing accessible resources on this breakthrough technology for everyone. The internet of trust was created by the people, for the people, and that's why we're teaching it for free." 
	ctaText="Learn Blockchain Free Today!" 
	ctaLink="/courses/blockchain-101/" 
%}


<section class="pathsList">
	<h1 class="hasColorTag teal">Paths</h1>
	<div class="row">
		<div class="col-sm-12">
			<span>
				Select an option from the list below to see courses for your needs. 
			</span>
		</div>
	</div>
	<div class="row pathButtons">
		<div class="col-sm-4">
			<a target="_blank" href="/courses/novice/">
				<img src="/assets/img/Novice_button.jpg">
                <h5>Novices</h5>
                <span>FREE COURSES</span>
			</a>

		</div>
		<div class="col-sm-4">
			<a target="_blank" href="/courses/developers/">
                !('dev-button')["/assets/img/Developers_button.jpg"]
				<h5>Developers</h5>
                <span>FREE COURSES</span>
			</a>
			
		</div>
		<div class="col-sm-4">
			<a target="_blank" href="/courses/professionals/">
				<img src="/assets/img/Professionals_button.jpg">
				<h5>Professionals</h5>
                <span>FREE COURSES</span>
			</a>
			
		</div>
		
  </div>
  <div class="row ctaCenter">
    <a href="/courses/" target="_blank" class="callToActionButton">BROWSE OUR FREE COURSES</a>
  </div>
</section>

<section class="ourMission">
  <div class="row">
      <div class="col-sm-6 hpMission" style="background:url(/assets/img/Homepage_Mission.jpg);background-size:cover;background-position:center;">

      </div>
      <div class="col-sm-6">
        <h1 class="blueBar right">
          Our Mission
        </h1>
        <span>
          The Blockchain Institute was founded to promote the adoption, development, and use of blockchain technology by providing blockchain education to the public. Blockchain systems create decentralized networks without central points of failure. These systems are being used in a wide variety of applications, including building a new internet!
          <br><br>
          Our headquarters in Chicago, Illinois, USA (opening Spring 2019) will offer a forum for education and collaboration in the Midwestern US. 
        </span>
      </div>
  </div>
</section>

<section class="events" style="background:url(/assets/img/Homepage_Events.jpg);background-size:cover;background-position:center;">
  <div class="row">
      <div class="col-sm-6">

      </div>
      <div class="col-sm-6 ourEvents">
        <h1 class="blueBar right">
          Come to an Event
        </h1>
        <div class="eventsContainer">
          {% assign sorted = site.events | sort: 'date' | reverse %}
          {% for event in sorted limit:4 %}
  
              {% include eventTile.html
                link=event.permalink 
                image=event.image 
                title=event.title 
                date=event.eventdate
              %}
  
          {% endfor %}
        </div>
        <a href="/events/" target="_blank" class="callToActionButton">Attend a Blockchain Event</a>
      </div>
  </div>
</section>

<section class="onlineCourses blueDivider">
  <div class="row">
    <h1>Check Out Our Online Courses</h1>
    <div class="coursesThumbnailContainer"> 
      {% assign sorted = site.courses | sort: 'tags' %}
      {% for course in sorted %}
        {% include courseTile.html 
          image=course.image
          title=course.title 
          author=course.author 
          summary=course.summary 
          link=course.permalink 
          tag=course.primaryTag	
        %}
      {% endfor %}
    </div>
    <a href="/courses/" target="_blank" class="callToActionButton">Browse our Free Courses</a>
  </div>
</section>


<section class="faq">
  <div class="row">
    <h1 class="redBar">Got A Question?</h1>
    <div class="faqThumbnailContainer"> 
      {% assign faqSample = site.faq | sample: 3 %}
      {% for item in faqSample limit:3 %}
        {% include faqTile.html 
          image=item.image
          link=item.permalink
          title=item.title
          author=item.author
        %}
      {% endfor %}
    </div>
    <a href="/faq/" target="_blank" class="callToActionButton">Check out our Blockchain FAQ!</a>
  </div>
</section>

<!-- Testimonials go here -->

<!-- Recent tweets integration goes here -->

{% include recentCourses.html %}