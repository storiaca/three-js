varying vec2 vUv;

void main()
{
    // Pattern 1
    gl_FragColor = vec4(vUv.x, vUv.y, 1.0, 1.0);
    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0);

}