Final Exam 100782088 

**Bump Mapping**

For the brick wall in the background I am using bump mapping with an tile offset so that the background can be organized and give off a real effect. We are using 2 images one with the baseColor and another with being the height map. Here we input both these images using smapler2D, using a range to make sure we can adjust the bump. Next inside the void surf funcation we are assigning the albedo to the base color texture while we unpack the normals from the height map. Since we unpack the normals we are able to have them set with the range. Now using a slider we are able to adjus the amount of bump in the background wall. 

**Moving Sewer Water**

For the moving sewer water based off the gif, there is no wave but looks like 2 textures overlayying each other as the character is moving. We have the Main and OvermainTex as well as 2 ranges ScrollX and ScrollY. Here we have ScrollX and ScrollY multiplied by _Time as the textures will be moving during the game time duration. Next we set a fixed4 value for a and b, each value holding the main and overmaintex. We are adding a float2 with ScrollX and ScrollY, this will have the maintex moving with the time. We do the same for the overmaintex but this time we multiply the ScrollX and ScrollY by 2 so that it has a different rate than the maintex. We do this because if they were both the same rate it would be hard to see both textures moving inside the game. Finally we get the average of the 2 rates by adding them together then dividing by 2.

For the sewer water, I used the same water and water foam from the inclass2 assignment but changed the saturation and hue in photoshop so that it would have a darker and muddy look then bright blue sea water.

**Player Movement**

With the object having a rigidbody, I used the horizontal and vertical input instead of manually typing the code for the WASD. This was done because it was more time efficient and looked neater in code. The horizontal and vertical input were multiplied with the float speed relative to the objects XYZ coordinates. To increase player feel I attached the main camera to the player so when the player moves the camera moves aswell.

We also have a point lamp following the player as this will showcase the background more clear as the player moves around the environment. an example of this is when the player (cube) moves close to the wall we are able to see the bump mapping of the bricks. 

**Bloom**












**REFERENCES**

Background Wall - https://3dtextures.me/2022/04/03/wall-stone-023/

Water: https://allfreedesigns.com/water-textures-download-free/

Water Foam: https://www.lughertexture.com/index.php?option=com_virtuemart&view=productdetails&virtuemart_product_id=366&virtuemart_category_id=1


