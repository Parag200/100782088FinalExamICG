Final Exam 100782088 

**Bump Mapping**

For the brick wall in the background I am using bump mapping with an tile offset so that the background can be organized and give off a real effect. We are using 2 images one with the baseColor and another with being the height map. Here we input both these images using smapler2D, using a range to make sure we can adjust the bump. Next inside the void surf funcation we are assigning the albedo to the base color texture while we unpack the normals from the height map. Since we unpack the normals we are able to have them set with the range. Now using a slider we are able to adjus the amount of bump in the background wall. For bump mapping the slider value was changed to 5 and 0.5 so that it will be easier to adjust.

**Moving Sewer Water**

For the moving sewer water based off the gif, there is no wave but looks like 2 textures overlayying each other as the character is moving. We have the Main and OvermainTex as well as 2 ranges ScrollX and ScrollY. Here we have ScrollX and ScrollY multiplied by _Time as the textures will be moving during the game time duration. Next we set a fixed4 value for a and b, each value holding the main and overmaintex. We are adding a float2 with ScrollX and ScrollY, this will have the maintex moving with the time. We do the same for the overmaintex but this time we multiply the ScrollX and ScrollY by 2 so that it has a different rate than the maintex. We do this because if they were both the same rate it would be hard to see both textures moving inside the game. Finally we get the average of the 2 rates by adding them together then dividing by 2.

For the sewer water, I used the same water and water foam from the inclass2 assignment but changed the saturation and hue in photoshop so that it would have a darker and muddy look then bright blue sea water.

**Player Movement**

With the object having a rigidbody, I used the horizontal and vertical input instead of manually typing the code for the WASD. This was done because it was more time efficient and looked neater in code. The horizontal and vertical input were multiplied with the float speed relative to the objects XYZ coordinates. To increase player feel I attached the main camera to the player so when the player moves the camera moves aswell.

We also have a point lamp following the player as this will showcase the background more clear as the player moves around the environment. an example of this is when the player (cube) moves close to the wall we are able to see the bump mapping of the bricks. 

**Bloom**

In the bloom script we have 4 valeus being intensity, iterations, threshold and soft threshold these will all be modified. We aslo have a public shader where we will be using our bloom shader as input so we can accesss its infomation and have it displayed onto the camera.
We have const ints each with the passes that were made in the bloom surface shader these will be important as they will be used inside the void OnRenderImage. Inside the OnRenderImage we are bascially drawing on the effects of the current frame to the destination aka the screen the players see. First we are down scaling the image and outputting it to the screen while passing the bloom and boxdown filter from the shader. Next we have iterations for the bloom and upscaling using a for statement. Another for statement for the debug process of bloom incase of an error and finally a else statement where we apply the bloom. The last part of this is releasing the current source after use to save as much memory as possible. 

In the shader we introduce our values such as filter and intensity. We will be using vertices and fragments we gather the infomation in vertexdata, interpolators, vertexprogram. Our sampling for down and upscaling will be put insde the half3 Sample and SampleBox. Inside the prefilter we adjust he brightness of the bloom and here I changed the contribution with 0.0008 so that the brightness can be under a less of a threshold. Next inside out subshader we have 5 passes starting of at 0 to 4. Pass 0 we focus on the prefilter and samplebox, Pass 1 is about the sampleBox, Pass 2 we are using blend one one to have our bloom show, Pass 3 we are applying the intensity times our samplebox = to the color and finally our sample 4 is just the sample box times the samplebox.

When toggling for bloom, we have a private void update function. Inside we have 2 if statements, 1 being if Q is pressed down the bloom effects would be set to their values (intensity, iterations, threshold and softthreshold). The other if statment was when the Q button is let go of, this will set the values for bloom to 0. Resulitng in the bloom effect turning off and now able to be toggled. This was done insdie the bloom script not in the shader. 

The reason why the bloom is on the character is because this can give off an effect of the character getting a power up that can block attacks. Once the player presses Q to block their character can indicate this by havaing that bloom effect turned on. 


**REFERENCES**

Background Wall - https://3dtextures.me/2022/04/03/wall-stone-023/

Water: https://allfreedesigns.com/water-textures-download-free/

Water Foam: https://www.lughertexture.com/index.php?option=com_virtuemart&view=productdetails&virtuemart_product_id=366&virtuemart_category_id=1


