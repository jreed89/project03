# Project03: Box it

##User Stories
This application is a wonderful tool to make moving easier! It enables you to list your possessions and group them into boxes. Once you arrive at your destination, simply compare the boxes recorded in this app to your actual boxes to make sure there are no missing boxes!

This application will have the following pages and capabilities:

-Home page:
The home page will welcome the user to the site and will have a form for adding new items. This page will also show items that have already been created and will be grouped by which box they're in.

Each item will have an edit and delete button which will enable the user to update any information entered. The user will also have the option to delete items. Each box on the home page will have a details link which will take the user to the details of the contents for each box. 

-Add a Box and Box Details:

This button will take the user to another page to, hence its name, add a box. The box will show the details of a single box complete with the label, the volume, and other specific dimensions of the box. If the box has items, there will be a specific list of items in the box along with the total weight and approximate value of the items in the box.

-Editing an Item:

From the home page, the user will be taken to a page with a form for editing an ItemThis form will contain a drop-down menu of the different Boxes and will enable the user to select a Box from the menu should move that item into the selected Box.

##MVP

Specifications:

This application will take two resources being Items and Boxes. 

-Each item will have:

A name, detailed description, a weight, and an approximate value for insurance purposes.

-Each box will need:

Dimensions such as length, width, and height, a label, an indiction as to whether or not the box is sealed (when sealed, no more items can be added to the box).
The box will also need to properly indicate whether or not the box arrived.

-This application will have the following pages:

A home page, a form for editing an item, box details and a form for creating a box.

##Stretch Goals
-Make it so that Items can be moved from Box to Box by dragging and dropping.

-Add a User resource to your app, using the devise Ruby gem for authentication. This will allow people to sign up for, and sign into, your application.

-Associate Items and Boxes with Users (one User to many Runs) so that each User can only see and edit their own Items and Boxes.

-Modify the previous feature so that a select group of other Users can be added to your User account as collaborators.


