# shoplens
###1.clone project to your local machine
###2.change team in signing tab. you may need to change bundle identifier as well
###3.select deploy target to your phone, and deploy. phone must trust your mac.
###4.On your phone, under setting -> general-> device management, trust apple account
###5. task list:

1. Enter Application
Click go button in welcome page, you will land on home page of our application

2. Existing User Login(start: viewdidload in profileviewcontroller)
Click right bottom icon of a person to go to log in page
Login to the application with user credential to open home page(We will provide a existing account and password for testing).
After login, you will find you are at profile page, click on setting to check setting page
Return to previous page by clicking top left arrow

3. Add shopping list function(start: viewdidload in shoppinglistviewcontroller)
Click shopping list tab at bottom
Click that large orgrange button to add a new shopping list
type in a list name and select the person you want to share this list
click OK
You will find a new shopping list has been added. 

2. Home Page/ Search Items(start: viewdidload in homeviewcontroller, there will be several of them, be careuful)
Click on home tab at bottom
Click on search bar.
Example of search: Type in “ice cream” in text field and click search. 
From list for ice creams, click on “add to list” button of Ben&Jerry chocolate ice cream.
Click shopping cart icon of first ice cream to add it to shopping cart.
In prompt window click OK, it means how many you would like to add, default is 1
Click on search bar again ,  type in “cereal” and click search
From list for cereal, click on “add to list” button of “cinnamon raisin ”.
Shopping list will show now, and click on the “mylist” you just created.

3. Navigation (start: viewdidload in navigationviewcontroller)
Now the shopping cart has a 2 symbol on it, which means you have two item in shopping cart
Click on navigation icon at the bottom to start navigation
Now follow the arrow on ground to find first item: cereal.
When you find cereal, put one in your shopping cart. The cereal on the list will gone automatically. And application will show route to ice cream
Follow the arrow on ground to find ice cream
When you find cereal, put one in your shopping cart. And press X button on that item in shopping list.


4.Check Item Details(start: viewdidload in itemdetailsviewcontroller)
Go back to home page by clicking back button on top left
You shake your phone to open check item details function.(due to resource access limitation, click on camera)
You aim your camera to Oreo and click on it
An information window pop-up, showing information about oreo
You click on little triangle below, more information comes
You swipe information window out to close the window
You shake your phone again, and it goes back to navigation(due to resources access limitation, click on backbutton)


### retrieve plist
go to window->device and simulator. select your device and find data record in device. In small cog, select download container. the data is in the first folder of download package. named data.plist.

### calculate the time user cost to finish each task
check start function time stamp to calculate


  
