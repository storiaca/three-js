precision mediump float;
uniform vec3 uColor;
uniform sampler2D uTexture; // sampler2D is type for textures

varying vec2 vUv;

// varying float vRandom; // same defintion as is in vertex, and we can use it here

void main()
{
  vec4 textureColor = texture2D(uTexture, vUv);
  gl_FragColor = textureColor;
  
  // gl_FragColor = vec4(uColor, 1.0);

  //gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
  
  //gl_FragColor = vec4(0.5, vRandom, 0.0, 1.0);
}