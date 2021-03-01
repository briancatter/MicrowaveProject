# My Microwave Redesign

## Presentation Link
[Presentation Page](https://briancatter.github.io/p1BrianCatter/)

## Project Link
[Microwave Redesign](https://github.com/briancatter/p1BrianCatter)

## The Presiding Microwave

The microwave I use at home looks like this:

<img src="https://github.com/briancatter/p1BrianCatter/blob/main/MicrowaveInterface.jpg" alt="Real Microwave" width="350" height="700">

It's a fairly straightforward interface overall, containing a standard grid-style number panel and several surrounding buttons for less common functions. Here are some examples:

<img src="https://github.com/briancatter/p1BrianCatter/blob/main/MicrowaveExample.gif" alt="Microwave Example" width="350" height="700">

The 30 seconds button is probably the most useful of the interface, while the turntable button is probably least useful. In particular, the function buttons are placed seemingly at random around the panel, resulting in a search anytime you need a button that doesn't have a number on it. While creating groups of buttons appears to be a good design decision, the groups do not carry enough relation to their group members to be memorable or easily parsed - at least, I always have to search for what I want after months of using this microwave.

## Diving Deeper

The most common uses I have for the microwave are reheating leftovers and boiling water. Occasionally, I may need to use it for a microwave dinner or other frozen item, or even warming up items such as towels. For this microwave, that means I would normally press the '1' button to initiate a 1 minute timer instantly, and then adjust the time with the 'Add 30 Sec' button as necessary for the size and temperature of the item in question. Whenever I look for the 30 seconds button, however, I always find myself reaching down towards power or start, as the button is actually hidden away in the middle of an unrelated column of buttons to the right. Aside from the grouping of the number buttons and the red line running through the cancel button, this microwave does nothing to help users understand the interface. It does, on the other hand, provide ample feedback on button press in the form of a beep, making it clear to the user the button has been pressed.

A mistake I find myself making all the time is confusing the 'Timer' button with the 'Cook Time' button. The difference between the two is that cook time will then allow you to enter a time to cook manually, bypassing the express cook setting normally applied to the first six number buttons, while the timer allows manual entry of a time without activating the microwave at all. Additionally, you cannot add 30 seconds to a time you've entered with the cook time button; this is only possible from a time entered via an express cook button or the 30 seconds button. These issues can get very frustrating, as there is no real reason the cook time button should exist, nor should the 30 second button be so situational.

## Some Corrections

Below is my prototype design for a new microwave:

<img src="https://github.com/briancatter/p1BrianCatter/blob/main/MicrowavePrototype.png" alt="Prototype Microwave Design" width="700" height="350">

As you can see, buttons are no longer grouped by separation, but by color. The number buttons, as the most easily identifiable, are colored a neutral grey, while the buttons directly related to cooking are a warm red color, and the settings buttons are a cool blue. Using this new design, the eyes are drawn naturally to buttons closely related to the user's use case. The 30 seconds button has been relocated next to the zero button, and is the only red button in the area, making it immediately identifiable. The red buttons above the numbers are more seldom used, and as such are in a larger grouping, separated from the more useful buttons by the blue settings buttons. Finally, the start and stop buttons are the same neutral grey as the numbers, but have increased in size, ensuring they stand out more so than any other button. After completing this design, I began the process of creating an interactible interface.

## Final Design

<img src="https://github.com/briancatter/p1BrianCatter/blob/main/p1BrianCatter.gif" alt="Final Design GIF">

After some consideration, I dropped the 'Express Cook' idea entirely and removed the 'Set Cook' button, meaning that the number buttons were now strictly for user-entered times. I also removed the handle from the microwave door, instead relegating the opening function to a button next to the stop button. Start and stop have been resized back down to fit the other buttons, but have taken their places next to the zero button, making them the only grey buttons that are not numbers. The microwave can now be operated efficiently with only these grey buttons in the center. The most useful of the red cooking buttons are immediately below the numbers, while several programmable buttons occupy the row above. The least useful cooking buttons are placed at the very top, farthest from the number pad, and the settings buttons retain their place at the side. The 30 second button now works at any time, so long as the user is not currently supplying a custom cook time but has not hit start. Finally, the programmable buttons function very simply; while the microwave is cooking, you can press a user button to save the cook settings that were supplied. Then, when the microwave is not cooking, you can use that button to recall the same cook settings.
