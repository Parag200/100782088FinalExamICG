Shader "Custom/WaveOverlayShader"
{
    
        Properties
        {
           

                //overlaying propties
                 _MainTex("Main", 2D) = "white" {}
                _OverTex("Over", 2D) = "white" {}
                _scrollX("Scroll X", Range(-5,5)) = 1
                _scrollY("Scroll Y", Range(-5,5)) = 1

        }
            SubShader
                {

                    CGPROGRAM
                  
                    #pragma surface surf Lambert

                    //define overlaying variables
                    sampler2D _OverTex;
                    sampler2D _MainTex;
                    float _scrollX;
                    float _scrollY;

                    //inputs for main tex and UVs
                    struct Input
                    {
                        float2 uv_MainTex;
                    
                    };

          
                    void surf(Input IN, inout SurfaceOutput o)
                    {
                        //scroll x and y change over time i Unity 
                        _scrollX *= _Time;
                        _scrollY *= _Time;
                        //rate of first texture moving 
                        float3 main = (tex2D(_MainTex, IN.uv_MainTex + float2(_scrollX, _scrollY)).rgb);
                        //rate of first texture moving, *2 so it is different from main tex
                        float3 over = (tex2D(_OverTex, IN.uv_MainTex + float2(_scrollX * 4.0, _scrollY * 4.0)).rgb);
                        o.Albedo = (main + over) / 2.0;


                    }
                    ENDCG
                }
                    FallBack "Diffuse"
    }