---
layout: lesson
course: hyperledger
module: 3
title: Further Design Considerations
permalink: /courses/hyperledger/3/further-design-considerations
---

<span class="openingParagraph">
Now that you've got the basics, there are a few things to keep in mind as you begin to plan your project. Launching a project on a new protocol like this can be complicated, so it helps to ask the right questions from the beginning.</span>
&nbsp;

<h3>GENERAL ARCHITECTURE</h3>

<hr />

<img class="aligncenter size-full wp-image-11680" src="https://theblockchaininstitute.org/wp-content/uploads/2018/12/Blueprints-01.png" alt="" width="10195" height="3179" />
Since Hyperledger networks are intended to act as common records between multiple legal entities, it's imperative that they're well planned with consideration for the laws of the presiding jurisdictions. Before any code is written, the first step should be to identify an appropriate validator model for all actions that will be tracked by the system. It's important to ensure that the system is designed so that no single bad actor could compromise the long term records while also minimizing the increase in overhead due to validation activities. A best practice is to plan validation events to match existing paper documentation. Ink signatures should be replaced with digital signatures where possible, and any critical information should be recorded to the Hyperledger network.
&nbsp;

<h3>PLANNING YOUR PROJECT</h3>

<hr />

As your team develops a better understanding of the requirements of your system, the next stage will be to identify a minimum viable solution. Hyperledger nodes can be deployed locally on client devices, or delivered using a hosted cloud solution. Depending on the scale of the network, it may be practical to test the functionality in a small test environment before deploying to a fully hosted solution.
<h4>Up Next</h4>
Now that you're up to date on Hyperledger, you'll want to look at planning your project. You may want to review our <a href="/courses/blockchain-security/">Blockchain Security Course</a> to identify potential issues with your planned architecture. Additionally, you might want to consider trying <a href="https://aws.amazon.com/marketplace/pp/B0797GK9YY">Amazon</a> or <a href="https://cloud.oracle.com/blockchain">Oracle</a>'s hosted blockchain options.

&nbsp;

<hr />

<em>We're here to help. If you have any questions or feedback about this course please email us at info@theblockchaininstitute.org - we'd love to hear from you!</em>