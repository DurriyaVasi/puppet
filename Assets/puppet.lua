-- puppet.lua
-- A simplified puppet without posable joints, but that
-- looks roughly humanoid.

rootnode = gr.node('root')
-- rootnode:rotate('y', -20.0)
rootnode:scale( 0.25, 0.25, 0.25 )
rootnode:translate(0.0, 0.0, -1.0)

red = gr.material({1.0, 0.0, 0.0}, {0.1, 0.1, 0.1}, 10)
blue = gr.material({0.0, 0.0, 1.0}, {0.1, 0.1, 0.1}, 10)
green = gr.material({0.0, 1.0, 0.0}, {0.1, 0.1, 0.1}, 10)
white = gr.material({1.0, 1.0, 1.0}, {0.1, 0.1, 0.1}, 10)

torso = gr.node('torso')
rootnode:add_child(torso)

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
shoulderScale:scale(1.0, 1.0, 1.0)
shoulderScale:set_material(red)

rightUpperArmJoint = gr.joint('rightUpperArmJoint', {0, 0, 180}, {0, 0, 0})
shoulder:add_child(rightUpperArmJoint)

rightUpperArm = gr.mesh('sphere', 'rightUpperArm')
rightUpperArmJoint:add_child(rightUpperArm)
rightUpperArm:scale(0.13, 0.32, 0.13)
rightUpperArm:translate(-0.55, -0.3, 0)
rightUpperArm:set_material(blue)

rightForearmJoint = gr.joint('rightUpperArmJoint', {0, 0, 0}, {0, 0, 0})
rightUpperArm:add_child(rightForearmJoint)

rightForearm = gr.mesh('sphere', 'rightForearm')
rightForearmJoint:add_child(rightForearm)
rightForearm:translate(0.0, -2.2, 0.0)
rightForearm:scale(0.5, 0.80, 0.5)
rightForearm:set_material(blue)

rightHandJoint = gr.joint('rightHandJoint', {0, 0, 0}, {0, 0, 0})
rightForearm:add_child(rightHandJoint)

rightHand = gr.mesh('sphere', 'rightHand')
rightHandJoint:add_child(rightHand)
rightHand:translate(0.0, -4.0, 0.0)
rightHand:scale(1.0, 0.3, 1.0)
rightHand:set_material(blue)

return rootnode
