uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;
uniform vec2 uFrequency;
uniform float uTime;

attribute vec3 position;
attribute vec2 uv;

varying vec2 vUv;

//attribute float aRandom; // custom attribute that we created in script.js

//varying float vRandom; // this we can use in fragment, we can't use attribute

// float loremIpsum() 
// {
//   float a = 1.0;
//   float b = 2.0;

//   return a + b;
// }

void main()
{
  // float result = loremIpsum();

  // vec2 foo = vec2(1.0, 2.0); // x, y

  // vec3 bar = vec3(foo, 3.0);
    
  // vec3 purpleColor = vec3(0.0);
  // purpleColor.x = 0.5;
  // purpleColor.b = 1.0;

  // vec4 foo4 = vec4(1.0, 2.0, 3.0, 4.0);
  // float bar4 = foo2.w; // 4.0

  vec4 modelPosition = modelMatrix * vec4(position, 1.0);
  modelPosition.z += sin(modelPosition.x * uFrequency.x - uTime) * 0.1;
  modelPosition.z += sin(modelPosition.y * uFrequency.y - uTime) * 0.1;

  // modelPosition.z += aRandom * 0.1; 

  // modelPosition.y += 1.0; // move up

  //modelPosition.z = sin(modelPosition.x * 10.0) * 0.1; // wave shape

  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectivePosition = projectionMatrix * viewPosition;

  gl_Position = projectivePosition;

  vUv = uv;

  //vRandom = aRandom;

  //  gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}