## Template files for Gazebo Ignition in SDF format

<br/>

**Template SDF for World**:  

* World Name
    * Physics: DART by default
    * Plugin: Physics
    * Plugin: UserCommands
    * Plugin: SceneBroadcaster
    * GUI
        * Plugin: 3D scen
        * Plugin: World control
        * Plugin: World statistics
        * Plugin: Entity tree
        * Plugin: Transform Control
    * Scene
    * Light: Sun
    * Model

<br/>

**Template SDF for model**:  
* Model Name
    * Pose: X Y Z Roll Pitch Yaw
    * Link: name 
        * Optional: Inertial: Properties
        * Collision: Geometry & Surface
        * Visual: Geometry & Material

<br/>
