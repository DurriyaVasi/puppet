-- puppet.lua
-- A simplified puppet without posable joints, but that
-- looks roughly humanoid.

rootnode = gr.node('root')
rootnode:scale( 0.25, 0.25, 0.25 )
rootnode:translate(0.0, 0.0, -1.0)

rootRotateNode = gr.node('rootRotate')
rootnode:add_child(rootRotateNode)

red = gr.material({1.0, 0.0, 0.0}, {0.1, 0.1, 0.1}, 10)
blue = gr.material({0.0, 0.0, 1.0}, {0.1, 0.1, 0.1}, 10)
green = gr.material({0.0, 1.0, 0.0}, {0.1, 0.1, 0.1}, 10)
white = gr.material({1.0, 1.0, 1.0}, {0.1, 0.1, 0.1}, 10)

torso = gr.node('torso')
rootRotateNode:add_child(torso)

torsoScale = gr.mesh('sphere', 'torso')
torso:add_child(torsoScale)
torsoScale:scale(0.5, 0.8, 0.5)
torsoScale:scale(0.7, 0.7, 0.7)
torsoScale:set_material(white)

shoulder = gr.node('shoulder')
torso:add_child(shoulder)
shoulder:translate(0.0, 0.5, 0.0)

shoulderScale = gr.mesh('sphere', 'shoulderScale')
shoulder:add_child(shoulderScale)
shoulderScale:scale(0.6, 0.13, 0.13)
shoulderScale:set_material(red)

rightUpperArmJointMove = gr.node('rightUpperArmJointMove')
shoulder:add_child(rightUpperArmJointMove)
rightUpperArmJointMove :translate(-0.55, -0.03, 0.0)

rightUpperArmJoint = gr.joint('rightUpperArmJoint', {0, 0, 0}, {-90, 0, 0})
rightUpperArmJointMove:add_child(rightUpperArmJoint)

rightUpperArm = gr.node('rightUpperArm')
rightUpperArmJoint:add_child(rightUpperArm)
rightUpperArm:translate(0.0, -0.3, 0)

rightUpperArmScale = gr.mesh('sphere', 'rightUpperArmScale')
rightUpperArm:add_child(rightUpperArmScale)
rightUpperArmScale:scale(0.13, 0.32, 0.13)
rightUpperArmScale:set_material(blue)

rightForearmJointMove = gr.node('rightForearmJointMove')
rightUpperArm:add_child(rightForearmJointMove)
rightForearmJointMove:translate(0.0, -0.3, 0.0)

rightForearmJoint = gr.joint('rightForearmJoint', {0, 0, 0}, {-90, 0, 0})
rightForearmJointMove:add_child(rightForearmJoint)

rightForearm = gr.node('rightForearm')
rightForearmJoint:add_child(rightForearm)
rightForearm:translate(0.0, -0.29, 0.0)

rightForearmScale = gr.mesh('sphere', 'rightForearmScale')
rightForearm:add_child(rightForearmScale)
rightForearmScale:scale(0.07, 0.27, 0.07)
rightForearmScale:set_material(blue)

rightHandJointMove = gr.node('rightHandJointMove')
rightForearm:add_child(rightHandJointMove)
rightHandJointMove:translate(0.0, -0.29, 0.0)

rightHandJoint = gr.joint('rightHandJoint', {0, 0, 0}, {-90, 0, 0})
rightHandJointMove:add_child(rightHandJoint)

rightHand = gr.node('rightHand')
rightHandJoint:add_child(rightHand)
rightHand:translate(0.0, -0.02, 0.0)

rightHandScale = gr.mesh('sphere', 'rightHandScale')
rightHand:add_child(rightHandScale)
rightHandScale:scale(0.05, 0.05, 0.05)
rightHandScale:set_material(blue)

hip = gr.node('hip')
torso:add_child(hip)
hip:translate(0.0, -0.55, 0.0)

hipScale = gr.mesh('sphere', 'hipScale')
hip:add_child(hipScale)
hipScale:scale(0.35, 0.15, 0.15) 
hipScale:set_material(green)

rightThighJointMove = gr.node('rightThighJointMove')
hip:add_child(rightThighJointMove)
rightThighJointMove:translate(-0.20, -0.03, 0.0)

rightThighJoint = gr.joint('rightThighJoint', {0, 0, 0}, {-45, 0 , 0})
rightThighJointMove:add_child(rightThighJoint)

rightThigh = gr.node('rightThigh')
rightThighJoint:add_child(rightThigh)
rightThigh:translate(0.0, -0.40, 0.0)

rightThighScale = gr.mesh('sphere', 'rightThighScale')
rightThigh:add_child(rightThighScale)
rightThighScale:scale(0.13, 0.40, 0.13)
rightThighScale:set_material(blue)

rightCalfJointMove = gr.node('rightCalfJointMove')
rightThigh:add_child(rightCalfJointMove)
rightCalfJointMove:translate(0.0, -0.40, 0.0)

rightCalfJoint = gr.joint('rightCalfJoint', {0, 0, 0}, {-45, 0 , 45})
rightCalfJointMove:add_child(rightCalfJoint)

rightCalf = gr.node('rightCalf')
rightCalfJoint:add_child(rightCalf)
rightCalf:translate(0.0, -0.34, 0.0)

rightCalfScale = gr.mesh('sphere', 'rightCalfScale')
rightCalf:add_child(rightCalfScale)
rightCalfScale:scale(0.13, 0.34, 0.13)
rightCalfScale:set_material(blue)

rightFootJointMove = gr.node('rightFootJointMove')
rightCalf:add_child(rightFootJointMove)
rightFootJointMove:translate(0.0, -0.34, 0.0)

rightFootJoint = gr.joint('rightFootJoint', {0, 0, 0}, {-135, -90, -90})
rightFootJointMove:add_child(rightFootJoint)

rightFoot = gr.node('rightFoot')
rightFootJoint:add_child(rightFoot)
rightFoot:translate(0.0, -0.20, 0.0)

rightFootScale = gr.mesh('sphere', 'rightFootScale')
rightFoot:add_child(rightFootScale)
rightFootScale:scale(0.05, 0.20, 0.05)
rightFootScale:set_material(green) 

neckJointMove = gr.node('neckJointMove')
shoulder:add_child(neckJointMove)
neckJointMove:translate(0.0, 0.43, 0.0)

neckJoint = gr.joint('neckJoint', {0, 0, 0}, {135, 180, 225})
neckJointMove:add_child(neckJoint)

neck = gr.node('neck')
neckJoint:add_child(neck)
neck:translate(0.0, 0.45, 0.0)

neckScale = gr.mesh('sphere', 'neckScale')
neck:add_child(neckScale)
neckScale:scale(0.10, 0.15, 0.10) 

return rootnode
