#version 330 core

in vec3 fragColour;
in vec2 texCoordinates;

out vec4 color;

uniform sampler2D rectTexture1; //the first texture in main.cpp

uniform float mixStrength;

void main(){
  //color = texture(rectTexture8, texCoordinates) * vec4(texCoordinates, 1.0, 1.0); //the output colour of all fragments will be this
  //it will also create an interesting gradient over the entire image

  color = texture(rectTexture1, texCoordinates);

  //color = vec4(1,1,1,1);

  //color = mix(texture(rectTexture7, texCoordinates), texture(rectTexture8, texCoordinates), mixStrength); //mixes with mixStrength opacity upper layer

  //color = texture(rectTexture7, texCoordinates) * texture(rectTexture8, vec2(texCoordinates.x, texCoordinates.y)); //basically overlay kinda effect
}