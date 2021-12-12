# Welcome to Haskell Tic Tac Toe

Haskell tic tac toe is a game that uses the command line as an interface to play the game. It is a manual 2 player game, so grab your favorite coworker and challenge them in a timeless game of tic tac toe. 

***Please note that instructions are assuming you already have Haskell installed in your local device. If that is not the case, please install Hakell before beginning the game.***

### Instructions:
1. Clone this repo to your local computer.
2. cd tic_tac_toe
3. Run ghci
4. Run :l tic_tac_toe
5. Run main
6. Decide who is going first. Note, the first player going will automatically be assigned **O** as a character.
7. Last and most important step, HAVE FUN! You a are all setup to play!

<br>
<br>

# The Learning Curve

Learning a new language is fun, however; it can become overwhelming quickly. This is why it is important to familiarize oneself with the core concepts first. Understanding the foundation on which the language is built and operates on, will provide you with an overall better understanding of its functionality. Therefore, I decided to start with following concepts:

- Data Types
- Variables
- Functions
- Loops
- Conditionals

My first approach was to begin reading the Haskell documentation, however; it was difficult to follow because it seems to be targeted towards more experienced Haskell developers. After some research, I was able to find a couple of credible resources that were targeted towards Jr Haskell developers. My first option was to watch a 101 Haskell crash course [Haskell-101](https://www.youtube.com/watch?v=02_H3LjqMr8) and supplement my learning with this free e-book [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/chapters). These two resources were key to understanding the basics of Haskell, because the tutorial used the book as reference. Once I felt comfortable with some of the core concepts I decided to take it to the next level and build a simple input and output application. This application takes your name and the year you were born as inputs. Using those two inputs will give you a greeting and calculate your age. The application uses most of the core principles mentioned above.
 
 A function takes two a data type, reads that data and renders a different greeting based on your age.
 
  *Would you like to use it? go to the **Greetings** section for the instructions*.

Once this simple input/output application was fully functioning, I felt confident to dive into the challenge of building the tic tac toe game. However, it was still unclear on where to start building the game. I decided to look for some documentation or tutorials that could give me some guidance on where to start. As mentioned before, there is not a big Haskell community and it is a little challenging to find good documentation, but after some research I found a great tutorial [Tic Tac Toe Haskel](https://www.youtube.com/watch?v=0-pOaa0dpko). This tutorial was a good guide to build the game for a few reasons:  First, the person in the tutorial starts from scratch and describes what is going to be built. Second, the person is always describing the why's and how's of something is being done. Third, the comments in the code are extremely helpful and descriptive which allowed me to go through the code and thoroughly understand the logic and syntax. Lastly, the tutorial was candid, allowing me to see unforseen mistakes and bugs made by the developer, but I found this to be extremely helpful in my learning process as well. Seeing the challenges the person ran into, how the challenges were solved and the resources used to look for information were key to helping me understand the logic. 

<br>
<br>

# Challenges

### Lack of Credible Resources
The biggest challenge I ran into while building this tic tac toe game was the limited amount of resources. Most of the resources found such as Haskell.org and the ones suggested by it were written for developers with experience in the language. In addition, searching for other resources was difficult as well since the Haskell community is small, making it hard to find beginner-oriented resources. However, by doing some in-depth and specific research it was possible to find a couple of tutorials and articles, that together, helped me to get going on this project.

### Strongly Typed Language
Coming from a loosely typed language such as JavaScript made me run into a couple of small bugs that were hard to find due to how strongly typed Haskell is. First, I would like to point out that coding in Haskell at the beginning was very confusing due to my text editor because it did not provide any sort of color distinction, making it challenging to read several lines of code in one color. This was solved by installing a code extension called *Haskell Syntax Highlighting*. This extension made it easier to read, but did not prevent me from making indentation errors. The first bug was hard to find due to the misleading error message "variable not in scope" and all of the information that I researched was not particularly helpful.  I decided to re-write the function and discovered that the previous function was indented with two extra spaces. The second challenge was also another indentation issue, but this time with a different error message, " parser error". The issue this time was the same as before, except found in a different section of a function.  I had previously used the tab bar for indentation, however; Haskell prefers four spaces for indentation practices instead.   

Once everything was working properly, there was one more challenge I encountered. The input value and the tic tac toe board were printing on the same line in the terminal. The first thing was to compare my code to the one in the tutorial to check for any syntax and spelling errors, but everything seemed to match. Second, was to follow the logic to see if at some point I was adding the user input to the beginning of the board and also to the space the user chose to play, however; everything seemed okay there as well. After not finding any evident errors in my code, the research began. I started by researching how to add a new line to the command line, this way I could put the whole board in a new line everytime it was rendered on CLI. I did not find a solid solution on how to solve the issue, but I learned more about printing things in the terminal. Therefore, I decided to print a couple of empty strings before and after the board to see if the input would separate from the board and it worked!

<br>
<br>

# Learning Resources
[Haskell-101](https://www.youtube.com/watch?v=02_H3LjqMr8) - This a YouTube tutorial that goes over the core concepts of Haskell. It is a very useful resource to start learning Haskell since it touches on all of the data types, variables, functions, built-in methods, loops etc. It helped me to begin building a general idea of what Haskell is, how it works and how the bits and pieces connect with eachother. 

[Learn You a Haskell for Great Good!](http://learnyouahaskell.com/chapters) - This a free e-book that goes in detail about how Haskell works. It helped me clear up questions I had while watching the above mentioned YouTube tutorial. 

[Hoogle](https://hoogle.haskell.org/) -  Hoogle is a search engine where the user can look up Haskell terminology, built-in methods, data types, etc. 

[Parser error on input]( https://www.reddit.com/r/haskellquestions/comments/9usljx/parse_error_on_input/) - A Reddit block about why this error shows up and how to solve it. It helped me to understand more about indentation in Haskell.

[Haskell Cheat Sheet]( http://www.newthinktank.com/2015/08/learn-haskell-one-video/) - It is a really nice summary explaining the core concepts and syntax of Haskell. I used it to get more familiar with Haskell syntax. 

[Tic Tac Toe Haskell](https://www.youtube.com/watch?v=0-pOaa0dpko) - It is a YouTube tutorial on how to build a tic tac toe game using Haskell. I used it as a guide to understand how to build the game. It was very useful due to the creator being fully engaged in the video and always explaining the logic of each step. 

<br>
<br>

# Greetings
Greetings is an app that uses the command line as an interface. It asks you for your name and year born to greet you with a unique message. 




### Instructions:
1. Clone this repo to your local computer.
2. cd tic_tac_toe
3. Run ghci
4. Run :l greetings
5. Run main
6. Type your name
7. Type the year you were born
8. Receive a very special message!!



