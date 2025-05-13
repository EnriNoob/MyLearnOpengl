#version 330 core
out vec4 FragColor;

// abbiamo bisogno di due variabili per gestire due oggetti differenti
// per gneerare i  frammenti
uniform vec3 objectColor;
uniform vec3 lightColor;

void main()
{
    FragColor = vec4(lightColor * objectColor, 1.0);
}