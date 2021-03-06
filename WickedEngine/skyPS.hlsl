#include "skyHF.hlsli"

struct VSOut{
	float4 pos : SV_POSITION;
	float3 nor : TEXCOORD0;
	float4 pos2D : SCREENPOSITION;
};

float4 main(VSOut PSIn) : SV_Target
{
	return float4(GetSkyColor(PSIn.nor), 1);
}
