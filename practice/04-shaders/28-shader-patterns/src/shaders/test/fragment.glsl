#define PI 3.1415926535897932384626433832795
varying vec2 vUv;

float random(vec2 st)
{
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

vec2 rotate(vec2 uv, float rotation, vec2 mid)
{
    return vec2(
      cos(rotation) * (uv.x - mid.x) + sin(rotation) * (uv.y - mid.y) + mid.x,
      cos(rotation) * (uv.y - mid.y) - sin(rotation) * (uv.x - mid.x) + mid.y
    );
}

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
    // float strenght = floor(vUv.x * 10.0) / 10.0;
    // strenght *= floor(vUv.y * 10.0) / 10.0;

    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 23
    // float strenght = random(vUv);
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 24
    // vec2 gridUv = vec2(
    //     floor(vUv.x * 10.0) / 10.0,
    //     floor(vUv.y * 10.0) / 10.0
    // );
    // float strenght = random(gridUv);
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 25
    // vec2 gridUv = vec2(
    //     floor(vUv.x * 10.0) / 10.0,
    //     floor((vUv.y + vUv.x * 0.5) * 10.0) / 10.0 
    // );
    // float strenght = random(gridUv);
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 26
    // float strenght = length(vUv);
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 27
    // float strenght = distance(vUv, vec2(0.5, 0.5));
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 28
    // float strenght = 1.0 - distance(vUv, vec2(0.5));
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 29
    // float strenght = 0.02 / distance(vUv, vec2(0.5));
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 30
    // vec2 lightUv = vec2(
    //    vUv.x * 0.1 + 0.45,
    //    vUv.y * 0.5 + 0.25
    // );
    // float strenght = 0.015 / distance(lightUv , vec2(0.5));
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 31
    // vec2 lightUvX = vec2(vUv.x * 0.1 + 0.45, vUv.y * 0.5 + 0.25);
    // float lightX = 0.015 / distance(lightUvX , vec2(0.5));

    // vec2 lightUvY = vec2(vUv.y * 0.1 + 0.45, vUv.x * 0.5 + 0.25);
    // float lightY = 0.015 / distance(lightUvY , vec2(0.5));

    // float strenght = lightX * lightY;
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 32
   
    // vec2 rotateduv = rotate(vUv, PI * 0.25, vec2(0.5));
    
    // vec2 lightUvX = vec2(rotateduv.x * 0.1 + 0.45, rotateduv.y * 0.5 + 0.25);
    // float lightX = 0.015 / distance(lightUvX , vec2(0.5));

    // vec2 lightUvY = vec2(rotateduv.y * 0.1 + 0.45, rotateduv.x * 0.5 + 0.25);
    // float lightY = 0.015 / distance(lightUvY , vec2(0.5));

    // float strenght = lightX * lightY;
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 33
   
    // vec2 rotateduv = rotate(vUv, PI * 0.25, vec2(0.5));
    
    // vec2 lightUvX = vec2(rotateduv.x * 0.1 + 0.45, rotateduv.y * 0.5 + 0.25);
    // float lightX = 0.015 / distance(lightUvX , vec2(0.5));

    // vec2 lightUvY = vec2(rotateduv.y * 0.1 + 0.45, rotateduv.x * 0.5 + 0.25);
    // float lightY = 0.015 / distance(lightUvY , vec2(0.5));

    // float strenght = lightX * lightY;
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 34
   
    // float strenght = abs(distance(vUv, vec2(0.5)) - 0.25);
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);


    // Pattern 35
    // float strenght = step(0.01, abs(distance(vUv, vec2(0.5)) - 0.25));
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 36
    // float strenght = 1.0 - step(0.01, abs(distance(vUv, vec2(0.5)) - 0.25));
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);


    // Pattern 37
    // vec2 waveUv = vec2(
    //     vUv.x,
    //     vUv.y + sin(vUv.x * 30.0) * 0.1
    // );
    // float strenght = 1.0 - step(0.01, abs(distance(waveUv, vec2(0.5)) - 0.25));
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 38
    // vec2 waveUv = vec2(
    //     vUv.x + sin(vUv.y * 30.0) * 0.1,
    //     vUv.y + sin(vUv.x * 30.0) * 0.1
    // );
    // float strenght = 1.0 - step(0.01, abs(distance(waveUv, vec2(0.5)) - 0.25));
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 39
    // vec2 waveUv = vec2(
    //     vUv.x + sin(vUv.y * 100.0) * 0.1,
    //     vUv.y + sin(vUv.x * 100.0) * 0.1
    // );
    // float strenght = 1.0 - step(0.01, abs(distance(waveUv, vec2(0.5)) - 0.25));
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 40
    // float angle = atan(vUv.x, vUv.y);
    // float strenght = angle;
    
    // gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // Pattern 41
    float angle = atan(vUv.x - 0.5, vUv.y - 0.5);
    float strenght = angle;
    
    gl_FragColor = vec4(strenght, strenght, strenght, 1.0);

    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0);

}