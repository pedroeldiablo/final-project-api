#Journal Maps Back End

##Ruby on Rails API

###Start Journaling [Here](https://journal-maps.herokuapp.com/#/login).

Become an urban explorer. Discover cities like never before.

This is the back end for the project hosted [here](https://github.com/pedroeldiablo/final-project-frontend-).

##Overview

This is the API used to store and provide data for a map based site.

##Project Aims

To create an stand alone Rails API that would provide the database for a separately hosted Angular front end.

One of the outcomes of this project was to gain a better understanding of the way this two aspects interact and how and where you handle changes such as updates to the information stored.  

##Technology Used

Ruby | Rails | Entity Relationship Diagrams for Planning

##Approach and Challenges

The project started with working out ERD for the various models. Which resulted in four models, a user, a walk, a stop, and a place.

A user can have multiple walks and stops, a walk can have multiple stops, a stop has a unique place, but as a place may feature as a stop more than once this can belong to multiple stops. 

Resolving how these related to one another and the best way to reference the data so as to be able to serve the front end required some debate, particularly based on what the end user experience would be. The most complicated question was whether a user should be able to use the same stop in multiple walks, or whether it would be necessary to create an independent copy.

In the current structure a stop is unique to a walk, however there may be times when this might not be the most appropriate approach, such as if multiple users are planning a walk that diverges and then remerges at some point. Having a shared stop would allow a user to update information such as a meeting time and have this seen across all the people that have that stop in their personal walk, however a duplicated stop would not offer this ability.   

##Where to From Here?

In the current state, while it is possible to delete and edit stop that already exist within a walk it isn't possible to amend the order of the stops. Adding this option would make the site considerably more practical.

Similarly it would be helpful to be able to copy stops to another walk.

Once these aspects are achieved I would like to develop the social component more, so that users for example could share a walk, as this was within the original idea.

It would also be a nice addition to be able to search for existing stops on a map within a geographic area, this would allow users to be inspired by searching what's around. Showing the stops within a boundary and adding a filter to narrow these by type of attraction being one approach that might be possible for this.

Populating the site. The biggest challenge to making this project successful would be encouraging people to create an initial library of walks and stops. One approach to tackling this would be to target businesses, and have them create walks within their areas. There is a natural incentive for them in that they get to promote themselves, but would also be adding details and character about their area.

It would also be practical to add a feature for events, so that for example a design festival could list all the locations that will feature and then allow attendees to search and create personalised routes for exploring.  

A sub strand was to allow users to keep a diary of personal walks, this is reflected in the choice of title for the project. This would encourage more regular usage as users could keep a personal and more intimate list of places that they visit along with private thoughts.
