README - Using Gaia Session Files

Gaia Sessions allows people to share sessions they have previously created with Gaia.  Sessions including 
stamping require the person playing back the session to also have the stamps used.  Likewise spawners require 
the person playing the session to also have the assets which are being spawned.

The sessions we include within the Backwoods Gaming Stamp Packs use the stamps included within the pack and only
spawn assets included with Gaia and Unity.  We have included two folders within the Data folder of the pack, one 
for only creating and stamping the terrain and another folder which not only creates and stamps the terrain, but 
also runs through the spawning process using the default GaiaDefaults and GaiaResources files that are in the Gaia
Package.

To use the included sessions, first make sure you have set up your project to include Gaia 1.5 or later as well as 
the required Unity standard assets required for Gaia to run.  Then once you have followed the directions to install 
the pack (Found in BackwoodsGaming\GaiaPacks\Stamps folder) and then do the following steps to play back the session 
you wish to use.

1 - Decide which session you want to play back.  Take note of the number at the end of the stamp name.
2 - Look in the Gaia\Stamps folder and then the folder that matches the stamps folder within this pack.  There will
       be many stamp packs.  So make sure you are looking at the Stamps folder within the same package of the 
       session you wish to play back.  If there is not a stamp that matches this pack and the number you noted from 
       the session name, follow the instructions in the ReadMe-Installation file in BackwoodsGaming\GaiaPacks\Stamps 
       to enable the stamp.
3 - After verifying the stamp you will be using is in the proper Gaia\Stamps location, click File -> New Scene to
       create an empty scene.
4 - Open Gaia Manager by clicking Window -> Gaia -> Show Gaia Manager -OR- go to the tab where you currently have 
        Gaia Manager open in your Unity workspace.
5 - Click the Advanced button and in the advanced options, open the Create Session Manager foldout by clicking the 
		arrow to the left.  Then click the Show Session Manager button.  This will create a Gaia game object in your 
		scene hierarchy with as Session Manager child object.
6 - Click on the Session Manager child object.  In your Inpector tab, you should see a bunch of session information.  
		At this point you want to drag the session file for the session you want to replay into the Session field in 
		top box of the Gaia Session Manager in the inspector.
7 - Now you should see information about the session, a top down screenshot of the topography of the scene, info 
		about the scene it was created in (time/date/dimensions), and a list of operations which will be performed 
		when the session is played.
8 - Once you verify this is the session you want to play, just click Play Session and let it run.  It will create an 
		exact replica of the original session.
9 - After the session finishes, either go into Gaia and click Create Player, Wind, Water and Screenshotter or 
		manually add your own character controller and water. (You can still add screenshotter and wind individually 
		by going under the Advanced button in Gaia Manager.)
10 - Click play and explore your new scene!
