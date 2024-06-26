varying vec2 vUv;

void main()
{
    // Pattern 1
    //gl_FragColor = vec4(vUv.x, vUv.y, 1.0, 1.0);

    // Pattern 2
    //gl_FragColor = vec4(vUv, 0.5, 1.0);


    // Pattern 3 gradient on x axe from right
    // float strenght = vUv.x;
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 4 gradient on y axe from bottom
    // float strenght = vUv.y;
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 5 gradient on y axe from top
    // float strenght = 1.0 - vUv.y;
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 6 
    // float strenght = vUv.y * 10.0;
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 7 ovo kreira kao testera pattern
    // float strenght = mod(vUv.y * 10.0, 1.0);
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 8
    // float strenght = mod(vUv.y * 10.0, 1.0);
    // strenght = step(0.5, strenght);
    
    // // if(strenght < 0.5) 
    // //     strenght = 0.0;
    // // else 
    // //     strenght = 1.0;
  
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 9
    // float strenght = mod(vUv.y * 10.0, 1.0);
    // strenght = step(0.8, strenght);

    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 10
    // float strenght = mod(vUv.x * 10.0, 1.0);
    // strenght = step(0.8, strenght);

    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 11 grid
    // float strenght = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strenght += step(0.8, mod(vUv.y * 10.0, 1.0));

    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 12 dots grid
    // float strenght = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strenght *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 13 
    // float strenght = step(0.4, mod(vUv.x * 10.0, 1.0));
    // strenght *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 14
    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // float barY = step(0.8, mod(vUv.x * 10.0, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    // float strenght = barX + barY;

    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 15
    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0));

    // float barY = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    // float strenght = barX + barY;

    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 16
    // float strenght = abs(vUv.x - 0.5);
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 17
    // float strenght = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 18
    // float strenght = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 19
    // float strenght = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 20
    // float square1 = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // float square2 = 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));

    // float strenght = square1 * square2;

    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 21
    // float strenght = floor(vUv.x * 10.0) / 10.0;
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 22
    float strenght = floor(vUv.x * 10.0) / 10.0;
    strenght *= floor(vUv.y * 10.0) / 10.0;

    gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0);

}