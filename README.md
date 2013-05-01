# Week 5 Homework

This is the last homework assignment of the quarter!

Please put your completed app inside the "homework" folder.

## Requirements

Create a Rails application that demonstrates a one-to-many model association as shown:

[Click Here To See the Meetup App](http://cspp52553.com/events)

* The appearance/styling of your app doesn't matter.
* The mechanics and business rules of your app should match those found in the Meetup App.
* Your home page should show the list of events.
* Create two resources: events and venues.
* A venue has a name and address.
* An event has a title, date and time, and venue.
* HINT: Rails supports "datetime" as a column type when you generate your model/resource/scaffold that can store the date and time together in a single column.
* A venue holds many events over time.
* An event can only take place at one venue.
* The list of venues must be shown in alphabetical order, both in the master list of venues as well as in any selection lists.
* Each model must have at least one validation rule.
* The UI should display validation error messages if the user tries to save invalid data.
* You should use an application layout to provide a header area with global navigation links that are shared across every page.

## Remember these key ideas:

* Model associations are best implemented in the models themselves.
* You'll have to figure out which model gets the foreign key.
* You can use the has_many and belongs_to methods in your models if you want.
* Avoid putting any explicit where clauses or find_by_id calls in your views.
* The collection_select helper method can be tricky.  There's an example in the code folder as well as in the model association PDF on the course website.







