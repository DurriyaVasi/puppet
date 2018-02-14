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
rightUpperArmJointMove :translate(-0.5, 0.0, 0.0)

rightUpperArmJoint = gr.joint('rightUpperArmJoint', {-45, 0, 0}, {-45, 0, 0})
rightUpperArmJointMove:add_child(rightUpperArmJoint)

rightUpperArmJointUnmove = gr.node('rightUpperArmJoint')
rightUpperArmJoint:add_child(rightUpperArmJointUnmove)
rightUpperArmJointUnmove:translate(0.5, 0.0, 0.0)

rightUpperArm = gr.node('rightUpperArm')
rightUpperArmJointUnmove:add_child(rightUpperArm)
rightUpperArm:translate(-0.55, -0.3, 0)

rightUpperArmScale = gr.mesh('sphere', 'rightUpperArmScale')
rightUpperArm:add_child(rightUpperArmScale)
rightUpperArmScale:scale(0.13, 0.32, 0.13)
rightUpperArmScale:set_material(blue)

--rightForearmJointMove 

--rightForearmJoint = gr.joint('rightUpperArmJoint', {0, 0, 180}, {0, 0, 180})
--rightUpperArm:add_child(rightForearmJoint)

--rightForearm = gr.mesh('sphere', 'rightForearm')
--rightForearmJoint:add_child(rightForearm)
--rightForearm:scale(0.5, 0.80, 0.5)
--rightForearm:translate(0.0, -1.8, 0.0)
--rightForearm:set_material(blue)

--rightHandJoint = gr.joint('rightHandJoint', {0, 0, 180}, {0, 0, 180})
--rightForearm:add_child(rightHandJoint)

--rightHand = gr.mesh('sphere', 'rightHand')
--rightHandJoint:add_child(rightHand)
--rightHand:scale(1.0, 0.3, 1.0)
--rightHand:translate(0.0, -1.3, 0.0)
--rightHand:set_material(blue)

return rootnode
