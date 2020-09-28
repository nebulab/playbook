---
title: Discovery and estimation
meta_description: >
  In the consulting world, we're often called upon to discover a project's requirements and estimate
  their implementation effort. Here's how we do it at Nebulab!
---

As consultants, we are often contacted by prospective clients who have a very clear idea of what
they want to implement, but no defined technical strategy to get there. Such clients call us to help
them put together an implementation plan, and estimate the effort required for its execution. This
allows the client to get a sense of:

1. how quickly they can go to market, and
2. how much it will cost them to do it.

Over the years, we have put together a set of processes and tools that help us perform these tasks
in a quick, efficient and reliable manner. If you're a team lead, it will be your responsibility to
run these processes and deliver the output to the prospect, so that they can use it to make an
informed decision about whether and how to move forward with the engagement.

## Collecting requirements with Discovery Sessions

The first step of the process is turning the client's vision into a workable set of project
requirements that the team can then use for estimating the project and implementing it.

We do this in **Discovery Sessions**, long meetings with all the client's stakeholders. The output
of these meetings is the project's backlog in the form of user stories.

Here's how to approach a discovery session:

1. First, ask the client to provide a Product Owner, who will act as the point of reference for all
   questions and concerns related to the project. This is a person who should have enough visibility
   into the project and its stakeholders to make informed decisions about the backlog. While it can
   be tempting to invite as many people as possible to the meeting, it will often lead to a longer
   and less productive meeting.
2. Schedule a meeting with the client. Ideally, discovery sessions should be 2-4 hours long. Less
   than 2 hours is most likely not enough to cover all the aspects that need to be discussed, while
   more than 4 hours stretches the attention span of even the most focused attendee. If needed, you
   can schedule multiple sessions, splitting them by topic.
3. Take copious notes during the meeting. Resist the urge to write user stories immediately: they
   take time to be worded properly and may distract you from the purpose of the meeting, which is
   mainly to gather as much context and details as possible about what the client is looking to
   build.
4. After the discovery session has ended, take some time to let everything sink in, and start
   writing user stories. Write them down, one by one, as fast as you can. Don't add details yet:
   if something comes to mind, just make a quick note of it and you can come back to it later.
5. Review the user stories you have written to ensure they make sense at a high level. Split, join,
   reorder, rewrite and remove stories as needed. Now is also the time to go back to each story and
   add all the details you've noted during the discovery sessions.
7. Finally, confirm the project backlog with the product owner and make any final adjustments.

An important thing to know about discovery sessions is that they can feel really awkward, especially
the first ones you do. Software projects are large, complex messes, and it can be uncomfortable to
make a sense of them. There can be a lot of "uhm"s and "so"s as you try to figure out how to kick
things off or what to talk about next.

A good approach is to map all the user journeys for both the end consumers and any internal users,
then walk the PO through each flow, one by one, and ask them to picture the flow in as much detail
as possible: what does the user see on the page? How do they interact with different elements? What
happens in the background when they do?

Finally, don't make the mistake of merely collecting a list of technical requirements, skipping the
context. Strive to understand the client's market, their target customer and their rationale for
building this product. This will help you create rapport with the client and give you a better
understanding of the environment in which your team will be operating.

## Estimating effort with Estimation Sessions

Once you have a workable backlog of user stories that you have confirmed with your PO, it is time to
estimate them. If you know anything about Agile, you understand how hard it can be to estimate a
backlog of work, of which you know very little about, with a team of people that have potentially
never worked together before.

With that said, clients still need a number they can put in their budget, so the goal of this part
is to get as accurate of an estimate as possible by _embracing_ uncertainty rather than fighting it.
The tool we have found for this purpose are **Estimation Sessions**. Here's how they work:

1. Talk to the team about the client and the project at a high level, making sure they have any
   background and context they will need to reason about the requirements. Also provide team members
   with a copy of the project backlog: they need to have access to the output of the discovery
   phase.
2. Go through each story in the backlog, provide the team with any context they may need, and give
   them time to reflect on the story and ask any questions. Then, ask each team member to categorize
   the story under one of the following buckets: No-Brainer, 2 Hours, 4 Hours, 1 Day, 3 Days,
   1 Week, 2 Weeks. Each team member should do this on their own and only reveal their estimates at
   the end.
3. When the team is not in agreement, ask the team member who gave the lowest score and the one who
   gave the highest to present their reasons, then do your best to have the team converge on a
   single score. When this isn't possible, you're responsible make the call yourself.

At the end of this process, you should have a rough estimate of how much effort is required to
implement the project backlog.

## Delivering estimates to the client

You're now ready to deliver your estimate to the client!

In doing it, you should be upfront with the client about the uncertainty of such an estimate: most
likely, the PO, you and your team got a lot of things wrong at multiple steps. This is okay: it's
virtually impossible to accurately predict the duration of a big software project upfront, and you
did the best you could. 

In fact, when providing the estimate, you should send the following to your client:

- The estimated backlog along with the original, optimistic estimate.
- An inflated, pessimistic estimate that accounts for unanticipated requirements and issues that
  will arise during the execution of the project.
  
As a rule of thumb, we use a 1.5X multiplier for inflating estimates, which is a number that works
well in our experience. Lower/higher levels of uncertainty call for lower/higher multipliers.
