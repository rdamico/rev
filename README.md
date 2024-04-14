

# Wildgoose Technical Interview Exercise

## Tech
- Ruby 3.1.4
- Rails 6.1.0
- RSpec
- Rubocop
- Bootstrap

## Setup
First clone the repository. Once cloned, run `bundle` to install the Gems. Next set up the database:

`rails db:setup`

This will set up the development and test databases and set up ten events with allocated customers and event types.

## Usage
In the console run `rails s` to boot your local server. You can then visit `localhost:3000` to use the system. From here you may view and filter Events.

## Testing
The application was developed with TDD. To run the test suite (unit tests), use `rspec` in the console. The test files are located in the `spec` directory.

## Coding Techniques
The following coding techniques/patterns have been used in the development of this challenge:
- Scalable filtering concerns on both model and controller level
- Query object pattern
- Test Driven Development
- Modular, reusable code
- SOLID design principles

## Assumtions
I made several assumtions during the development process, including:
- Is this an administrative system?
  - Yes, being able to see all events suggests this.
- Should both start and finish dates be filterable by range?
  - Yes, this will give more flexibility during filtering.
- Will more models need filtering in future?
  - Yes, if customer and event type views are created, they will likely need filtering.

## Future Improvements
1. More testing (Controller tests and Feature tests)
2. Add secong scenario - Adding a freelancer to an event
3. Live filtering without the need of a search button
4. Error handling for partial date/time input - Fuzzy search
5. Update to a more sophisticated UI/Design


## Task

We'd like you to improve the dashboard for "Ugly Duckling Events" - a small demo app we use as a pretext during interviews.  It is a dashboard to manage and view a list of events.

To prepare for the technical interview, we'd like you to add the following feature to the app:

    As a user,
    I can filter and search through events,
    by customer, event theme and date range

You should use sensible defaults, and use your best judgement on how and where these filters are presented.  It might also be useful to allow selection of a group of customers or themes, rather than just one.

If you have time left (optional!), please also add or consider this feature:

    As a user and given a specific event,
    I can assign a freelancer to an event

Considerations should be made to help make this an intuitive process.  Also consider how to overcome common logistical problems, such as double-booking of freelancers.

You're most welcome to use any resource to work on this (be it documentation or third party code); we only ask that you don't use outside help or just copy someone else's code.

Apologies if I am stating the obvious, but we'd like your code to be of production-quality.  In particular, you should consider good UI/UX and consider test coverage.  Bonus points are available if you decide to improve any of the UX or UI across the app as you proceed.

### Deliverable

Please submit one PR with your changes, as well as some notes you'd like to us to consider (for example, your assumptions or future suggestions for improvement).

Once submitted, we'll schedule a time to run through the exercise with you.

Please come to the interview with the code set up on your laptop, and be prepared to share your screen with the interviewer.

### Notes

It should be simple to "get going" (`bundle install` `rake db:setup`), but do get in touch with your point of contact if any issues arise.

Please do not spend too long on this - consider timing yourself up to an hour and round off your work there.

Thanks for taking the time to complete the challenge - and good luck!
