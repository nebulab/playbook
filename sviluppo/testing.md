# Testing

At Nebulab, we strongly believe in the value of automated testing. All the code we write is tested, 
and when we happen to work on a project without tests, we try to test it one piece at a time, as we 
work on it, until it reaches a satisfactory state. The tests allow for a project to be modified 
without breaking anything, and allow us to work quickly while still producing high quality code.

That said, we have a pragmatic philosophy around testing (and everything else). Tests should act as 
an aid to implementing the work and not become all our work. There are a few clever moves we can 
make to ensure our tests are effective without becoming a burden:

- We mainly write integration tests, which require less maintenance and test multiple components
  at the same time.
- During testing, we prioritize what can break most easily and what is most critical to the client's 
  business.
- We make sure that the tests are significant: do they really ensure that the code does not break,
  or would they pass in any case?
- We write tests that also act as documentation for the code, so that they can be used as a resource 
  to understand how the project works.

This blog post is a good guide to pragmatic testing: 
[Write tests. Not too many. Mostly integration.](https://blog.kentcdodds.com/write-tests-not-too-many-mostly-integration-5e8c7fff591c)
