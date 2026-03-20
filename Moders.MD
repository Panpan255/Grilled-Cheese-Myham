# Hi MODERS 
wellcome moders if you reading this eather you want to read stuff because well boardem or because your a moder and this is what you like to do so Lets get started with some modding stuff

## why make this file????
Well because moding a game makes a game more alive because people can add some stuff 
and I make code confussing a lot of the time so this file is here to help you add your code in
to make your mods for the game 

## Splash Screens

### why set should I set one up?
I suggest you put in a splash screen because well it promots you and thats somthing that really use full at times also your a dev why not make sure people know it and people know what mod their using

### So how do you set one up?
well its pretty simple in the idea but maybe not in the way its created so the code for the splash screen at the moment of writing this works like this

1. On load the game checks the screen demtions choicen 
2. the based on the screen size will check which time it needs to load
3. loades up the splash screens

so where do you put your splash screens well you would put it in the folder that it is sized for

1. HD - 1920x1080
2. Widescreen - 1280x720
3. Mini - 800x500

then the code would look something like this 

```
splashy.addSplash(love.grpahics.newImage("Path-to-your-splash screen")) 
```
This is put into for every screen size I don't know why I did it this way but I did because I did 


## Testing 
while moding I suggest that you test your new code to make sure it works and that it works with all the screen sizes the reason why is because while I was coding I got splash screen problems with 720p due to the fact that love2d was changing 720 to 721 no mater what so I needed to adapt my code to that function in the love2D code.



