// nel while del rendering mettere le seguenti 4 righe di codice

//====================================================================
//float timeValue = glfwGetTime();
//float xvalue = sin(timeValue) / 2;
//int xTraslLocation = (glGetUniformLocation(shaderProgram, "xTrasl"));
//glUniform1f(xTraslLocation, xvalue);
// ====================================================================

#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec3 ourColor;
uniform float xTrasl;

void main()
{
    gl_Position = vec4(aPos.x + xTrasl, aPos.y, aPos.z, 1.0); // just add a - to the y position
    ourColor = aColor;
}