precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {
    vec4 pixColor = texture2D(tex, v_texcoord);
    
    // Aumenta o contraste (deixa os escuros mais escuros)
    vec3 color = pow(pixColor.rgb, vec3(1.15));
    
    // Aumenta a saturação das cores
    float gray = dot(color, vec3(0.299, 0.587, 0.114));
    color = mix(vec3(gray), color, 1.25);

    gl_FragColor = vec4(color, pixColor.a);
}
