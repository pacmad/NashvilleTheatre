INSERT INTO [UserType]([Type])
VALUES
('audience'),
('venue')

INSERT INTO [Subscription]([Level], Price)
VALUES
(1,20.00),
(2,50.00),
(3,80.00),
(4,120.00),
(5,500.00)

INSERT INTO [Category](CategoryName)
VALUES
('Comedy'),
('Tragedy'),
('Drama'),
('Musical'),
('Stand-Up'),
('Horror'),
('Magic'),
('Mystery'),
('Romance'),
('Satire'),
('Thriller')

INSERT INTO [Venue](VenueName, StreetAddress, City, [State], ZipCode, Capacity)
VALUES
('Music Valley Event Center', '2416 Music Valley Drive', 'Nashville', 'TN', '37016', 250),
('Dark Horse Theatre', '4610 Charlotte Ave', 'Nashville', 'TN', '37209', 100),
('Looby Center Theater', '2301 Rosa L Parks Blvd', 'Nashville', 'TN', '37208', 218),
('Chaffin''s Barn Dinner Theatre', '8204 TN-100', 'Nashville', 'TN', '37221', 300),
('Tennessee Performing Arts Center','505 Deaderick St', 'Nashville', 'TN', '37243', 2472),
('Encore Theatre Company','6978 Lebanon Rd', 'Mt. Juliet', 'TN', '37122', 75)

INSERT INTO [TheatreCompany](TheatreCompanyName)
VALUES
('Encore Theatre Company'),
('Way-Off Broadway Productions'),
('Act1 Theatre Company'),
('Circle Players'),
('Centerpiece Theatre'),
('Inebriated Shakespeare'),
('Chaffin''s Barn Dinner Theatre')

INSERT INTO [User](FirstName, LastName, Email, TotalCredits, SubscriptionId, UserTypeId)
VALUES
('Evan','Grabenstein','evangdesigns@gmail.com',2,(SELECT SubscriptionId FROM Subscription WHERE [Level]= 1),(SELECT UserTypeId FROM UserType WHERE [Type]='audience')),
('Denise','Baker','denviol125@gmail.com', 4,(SELECT SubscriptionId from Subscription WHERE [Level]=2),(SELECT UserTypeId from UserType WHERE [Type]='audience')),
('Jacob','Best-Wittenberg', 'wittenberg.jacob@gmail.com', 6, (SELECT SubscriptionId from subscription WHERE [Level]=3), (SELECT UserTypeId from UserType WHERE [Type]='audience')),
('Kelsey','Creel', 'kelseycreel@gmail.com',100 , (SELECT SubscriptionId from Subscription WHERE [Level]=4), (SELECT UserTypeId from UserType WHERE [Type]='audience')),
('Helen','Mirren','evangdesigns@gmail.com',0,(SELECT SubscriptionId FROM Subscription WHERE [Level]= 5),(SELECT UserTypeId FROM UserType WHERE [Type]='venue')),
('Kevin','Bacon','evangdesigns@gmail.com',0,(SELECT SubscriptionId FROM Subscription WHERE [Level]= 5),(SELECT UserTypeId FROM UserType WHERE [Type]='venue'))

INSERT INTO [Show](TheatreCoId, VenueId, ShowName, Synopsis, CreditCost, CategoryId)
VALUES
((SELECT TheatreCoId FROM TheatreCompany WHERE [TheatreCompanyName]='Encore Theatre Company'),(SELECT VenueId FROM Venue WHERE [VenueName]='Encore Theatre Company'), 'Who''s Afraid of Virginia Woolf', 'Who''s Afraid of Virginia Woolf? is a play by Edward Albee first staged in 1962. It examines the complexities of the marriage of a middle-aged couple, Martha and George. Late one evening, after a university faculty party, they receive an unwitting younger couple, Nick and Honey, as guests, and draw them into their bitter and frustrated relationship.', 1, (SELECT CategoryId FROM Category WHERE [CategoryName]='Drama')),
((SELECT TheatreCoId FROM TheatreCompany WHERE [TheatreCompanyName]='Chaffin''s Barn Dinner Theatre'),(SELECT VenueId FROM Venue WHERE [VenueName]='Chaffin''s Barn Dinner Theatre'), 'Sister Act', 'Sister Act is a musical based on the hit 1992 film of the same name with music by Alan Menken, lyrics by Glenn Slater, book by Bill and Cheri Steinkellner, and additional book material by Douglas Carter Beane. After having a regional premiere in 2006 in Pasadena, California, the original West End production opened on June 2, 2009 at the London Palladium, starring Patina Miller and produced by Stage Entertainment and Whoopi Goldberg. Subsequent productions have been seen on Broadway and in many countries around the world.', 1, (SELECT CategoryId FROM Category WHERE [CategoryName]='Musical')),
((SELECT TheatreCoId FROM TheatreCompany WHERE [TheatreCompanyName]='Way-Off Broadway Productions'),(SELECT VenueId FROM Venue WHERE [VenueName]='Music Valley Event Center'), 'The Curious Incident of the Dog in the Night-Time', 'Fifteen-year-old math whiz Christopher Boone lives with his divorced dad in Swinton, a working-class town west of London. After being falsely accused of killing a neighbor''s dog, Christopher—who is brilliant but has difficulty dealing with the sounds and stresses of everyday life—decides to investigate the crime.', 1, (SELECT CategoryId FROM Category WHERE [CategoryName]='Mystery')),
((SELECT TheatreCoId FROM TheatreCompany WHERE [TheatreCompanyName]='Circle Players'),(SELECT VenueId FROM Venue WHERE [VenueName]='Looby Center Theater'), 'Chorus Line', 'Hundreds of hopefuls congregate at a cattle call for Broadway dancers. A sour director, Zach (Michael Douglas), and his brusque assistant (Terrence Mann) whittle down the ranks until they''re left with 16 dancers. All tell their life stories -- some tragic, some comic -- and explain their love of dance. Tension mounts when Cassie (Alyson Reed) -- once both a big star and the director''s lover but now desperate for a part -- auditions. But Zach must choose only the best for his show.', 1, (SELECT CategoryId FROM Category WHERE [CategoryName]='Musical')),
((SELECT TheatreCoId FROM TheatreCompany WHERE [TheatreCompanyName]='Inebriated Shakespeare'),(SELECT VenueId FROM Venue WHERE [VenueName]='Tennessee Performing Arts Center'), 'Hamlet', 'Hamlet, the Prince of Denmark, returns home from university to discover the world-shattering news that, not only is his father (Old Hamlet) newly dead, but that his mother, Gertrude, has married Old Hamlet''s brother, Claudius, and that Claudius is now king. The resultant instability has also led to threats of invasion by a solider from a neighboring state, Fortinbras. Late one night, the ghost of Hamlet''s father appears to him, accusing Claudius of his murder and urging Hamlet to revenge. This sets in motion a train of events that destroys both family and state.', 1, (SELECT CategoryId FROM Category WHERE [CategoryName]='Tragedy')),
((SELECT TheatreCoId FROM TheatreCompany WHERE [TheatreCompanyName]='Inebriated Shakespeare'),(SELECT VenueId FROM Venue WHERE [VenueName]='Tennessee Performing Arts Center'), 'A Midsummer Night''s Dream', 'A Midsummer Night''s Dream begins in Athens, where Theseus, Duke of Athens and Hippolyta are preparing for an elaborate wedding. Despite the upcoming nuptials and festivities that surround a nobleman''s marriage, Egeus brings a legal dispute before Theseus demanding the death penalty for his disobedient daughter, Hermia who refuses to marry the man of his choosing, Demetrius.  The young Athenian lady and her lover, Lysander hightail it into the enchanted wood, with Demetrius trailing after her. The enchanted wood, where fairies reign over a gorgeous and lush natural world of magic, wonder, and mischief. At the same time three thespians are preparing a play to cap off the wedding festivities of the Duke, making the mistake to rehearse in the enchanted forest away from prying eyes.', 1, (SELECT CategoryId FROM Category WHERE [CategoryName]='Comedy')),
((SELECT TheatreCoId FROM TheatreCompany WHERE [TheatreCompanyName]='Act1 Theatre Company'),(SELECT VenueId FROM Venue WHERE [VenueName]='Dark Horse Theatre'), 'Death of a Salesman', 'Death of a Salesman takes place in New York and Boston. The action begins in the home of Willy Loman, an aging salesman who has just returned from a road trip. Willy is having difficulty remembering events, as well as distinguishing the present from his memories of the past.', 1, (SELECT CategoryId FROM Category WHERE [CategoryName]='Drama'))

INSERT INTO [ShowDateTime] (ShowId, ShowDateTime)
VALUES
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), '20200731 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), '20200801 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), '20200802 02:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), '20200807 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), '20200808 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), '20200809 02:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), '20200814 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), '20200815 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), '20200816 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200807 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200808 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200809 01:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200814 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200815 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200816 01:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200821 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200822 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200823 01:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200828 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200829 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), '20200830 01:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200731 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200801 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200802 05:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200807 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200808 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200809 05:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200814 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200815 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200816 05:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200821 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200822 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), '20200823 05:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200807 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200808 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200809 01:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200814 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200815 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200816 01:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200821 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200822 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200823 01:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200828 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200829 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200930 01:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200904 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200905 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), '20200906 01:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Hamlet'), '20200731 08:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Hamlet'), '20200807 08:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Hamlet'), '20200814 08:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Hamlet'), '20200821 08:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='A Midsummer Night''s Dream'), '20200801 08:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='A Midsummer Night''s Dream'), '20200808 08:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='A Midsummer Night''s Dream'), '20200815 08:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='A Midsummer Night''s Dream'), '20200822 08:00:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200831 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200801 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200802 04:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200807 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200808 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200809 04:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200814 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200815 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200821 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200822 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200823 04:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200828 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200829 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200830 04:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200904 07:30:00 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), '20200905 07:30:00 PM')

INSERT INTO [ShowOrder] (ShowId, ShowDateTimeId, [Uid], ShowOrderDate)
VALUES
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), 3, (SELECT [Uid] FROM [User] WHERE [email]='kelseycreel@gmail.com'), '20200604 07:34:48 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'), 14, (SELECT [Uid] FROM [User] WHERE [email]='wittenberg.jacob@gmail.com'), '20200603 10:06:27 AM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), 70, (SELECT [Uid] FROM [User] WHERE [email]='denviol125@gmail.com'), '20200603 11:26:12 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), 27, 1, '20200604 10:22:36 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='A Midsummer Night''s Dream'),53, (SELECT [Uid] FROM [User] WHERE [email]='kelseycreel@gmail.com'), '20200602 12:31:28 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Hamlet'), 52, (SELECT [Uid] FROM [User] WHERE [email]='wittenberg.jacob@gmail.com'), '20200601 10:06:27 AM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Hamlet'), 52, (SELECT [Uid] FROM [User] WHERE [email]='denviol125@gmail.com'), '20200605 08:45:12 AM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), 34, 1, '20200604 04:16:36 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'),72, (SELECT [Uid] FROM [User] WHERE [email]='kelseycreel@gmail.com'), '20200602 07:34:48 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), 72, (SELECT [Uid] FROM [User] WHERE [email]='wittenberg.jacob@gmail.com'), '20200601 11:06:27 AM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Death of a Salesman'), 72, (SELECT [Uid] FROM [User] WHERE [email]='denviol125@gmail.com'), '20200605 11:26:12 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Sister Act'),16, (SELECT [Uid] FROM [User] WHERE [email]='kelseycreel@gmail.com'), '20200608 09:04:23 AM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Who''s Afraid of Virginia Woolf'), 9, (SELECT [Uid] FROM [User] WHERE [email]='wittenberg.jacob@gmail.com'), '20200610 06:06:07 AM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Hamlet'), 52, (SELECT [Uid] FROM [User] WHERE [email]='denviol125@gmail.com'), '20200615 07:26:12 AM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='Chorus Line'), 48, (SELECT [Uid] FROM [User] WHERE [email]='kelseycreel@gmail.com'), '20200604 03:21:46 PM'),
((SELECT ShowId FROM SHOW WHERE [ShowName]='The Curious Incident of the Dog in the Night-Time'), 23, (SELECT [Uid] FROM [User] WHERE [email]='wittenberg.jacob@gmail.com'), '20200608 05:12:36 PM')

select * from [user]


INSERT INTO [SubscriptionOrder]([Uid], [SubscriptionId], [SubscriptionOrderDate])
VALUES
(1,1, '20200801 10:43:33 AM'),
(2,2, '20200801 11:43:33 AM'),
(3,3, '20200801 08:43:33 AM'),
(4,4, '20200801 08:43:33 AM'),
(5,5, '20200801 03:43:33 PM'),
(6,5, '20200801 12:43:33 PM')