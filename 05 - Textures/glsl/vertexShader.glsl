#version 330 core
layout(location = 0) in vec3 pos;
layout(location = 1) in vec3 inputColour;
layout(location = 2) in vec2 texCoords;

uniform float offsetX;

out vec3 fragColour;
out vec2 texCoordinates;

void main(){
    gl_Position.xyz = vec3(pos.x /*+ offsetX*/, pos.y, pos.z); //small will be applied to all input vertices, just passed on to next stage
    gl_Position.w = 1.0;

    fragColour = gl_Position.xyz; //visualise the NDC coordinates as colours of the triangle
    texCoordinates = texCoords; //this will pass on the texture coordinates
}