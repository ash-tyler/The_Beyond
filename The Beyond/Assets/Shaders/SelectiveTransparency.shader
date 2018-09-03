
Shader "Custom/SelectiveTransparency" 
{
	Properties
	{
		_Color("Color", Color) = (1,1,1,1)
		_MainTex("Albedo (RGB)", 2D) = "white" {}
		_Brightness("Brightness", Range(0, 1)) = 0.5
		
		_BumpMap("Normal Map", 2D) = "bump" {}
		_Intensity("Normal Intensity", Range(-2, 2)) = 0.5
	}

	SubShader
	{
		Tags{ "Queue" = "Transparent" "RenderType" = "Transparent" }
		LOD 200

		CGPROGRAM
		#pragma surface surf Lambert alpha

		sampler2D _MainTex;
		sampler2D _BumpMap;

		struct Input 
		{
			float2 uv_MainTex;
			float2 uv_BumpMap;
		};

		fixed4 _Color;
		float _Brightness;
		float _Intensity;

		void surf(Input IN, inout SurfaceOutput o) 
		{
			half4 c = tex2D(_MainTex, IN.uv_MainTex);
			c.rgb += _Brightness;
			half4 output_col = c * _Color;

			o.Albedo = output_col.rgb;
			o.Alpha = output_col.a;

			o.Normal = lerp(UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap)), fixed3(0, 0, 1), -_Intensity + 1);
		}
	
		ENDCG
	}

	FallBack "Diffuse"
}