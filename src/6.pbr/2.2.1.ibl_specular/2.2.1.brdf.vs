#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoords;

uniform bool flipY;

out vec2 TexCoords;

void main()
{
	vec2 texCoords = aTexCoords;
	if(flipY) {
		texCoords = vec2(texCoords.x, 1 - texCoords.y);
	}
    TexCoords = texCoords;
	gl_Position = vec4(aPos, 1.0);
}