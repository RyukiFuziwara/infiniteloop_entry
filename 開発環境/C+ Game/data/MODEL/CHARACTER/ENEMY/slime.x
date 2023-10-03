xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 56;
 4.93105;8.06607;7.16812;,
 4.47185;9.45824;6.00241;,
 2.61810;9.54444;6.83559;,
 3.07731;8.15227;8.00130;,
 -4.80015;8.06177;7.16018;,
 -2.95710;8.12502;8.01878;,
 -2.48370;9.54874;6.89770;,
 -4.32674;9.48549;6.03910;,
 3.69053;6.08580;8.72481;,
 2.72856;9.97413;6.40497;,
 -2.61323;9.97413;6.44103;,
 -3.57615;6.08580;8.76758;,
 3.60113;2.62564;8.50817;,
 -3.46905;2.62564;8.50957;,
 -8.74442;6.08580;3.62393;,
 -6.41634;9.97413;2.65958;,
 -6.40265;9.97413;-2.70418;,
 -8.72887;6.08580;-3.66847;,
 -8.46911;2.62564;3.50990;,
 -8.46887;2.62564;-3.56098;,
 -3.55963;6.08580;-8.77864;,
 -2.59928;9.97413;-6.45758;,
 2.71422;9.97413;-6.42063;,
 3.67255;6.08580;-8.73241;,
 -3.46853;2.62564;-8.55948;,
 3.60016;2.62564;-8.55702;,
 8.75174;6.08580;-3.62322;,
 6.44433;9.97413;-2.66748;,
 6.45891;9.97413;2.62328;,
 8.77075;6.08580;3.58014;,
 8.59630;2.62564;-3.55882;,
 8.59761;2.62564;3.50818;,
 -0.86623;13.71443;0.36063;,
 -0.32025;13.71443;-0.95354;,
 -0.86566;13.71443;-0.41011;,
 0.44851;13.71443;-0.95213;,
 -0.32080;13.71443;0.90517;,
 0.99110;13.71443;-0.40870;,
 0.44906;13.71443;0.90374;,
 0.99163;13.71443;0.35921;,
 -1.71870;-0.06554;4.97509;,
 2.53345;0.02253;4.97509;,
 -4.72542;-0.06953;-2.28379;,
 -4.72542;-0.10316;1.96836;,
 2.53345;0.10654;-5.29051;,
 -1.71870;0.01677;-5.29051;,
 5.54018;0.11070;1.96837;,
 5.54018;0.14602;-2.28379;,
 -2.61323;9.97413;6.44103;,
 2.72856;9.97413;6.40497;,
 -6.40265;9.97413;-2.70418;,
 -6.41634;9.97413;2.65958;,
 2.71422;9.97413;-6.42063;,
 -2.59928;9.97413;-6.45758;,
 6.45891;9.97413;2.62328;,
 6.44433;9.97413;-2.66748;;
 
 46;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,8,11,13;,
 4;14,15,16,17;,
 4;18,14,17,19;,
 4;20,21,22,23;,
 4;24,20,23,25;,
 4;26,27,28,29;,
 4;30,26,29,31;,
 4;29,28,9,8;,
 4;31,29,8,12;,
 4;11,10,15,14;,
 4;13,11,14,18;,
 4;17,16,21,20;,
 4;19,17,20,24;,
 4;23,22,27,26;,
 4;25,23,26,30;,
 3;32,33,34;,
 3;35,33,32;,
 3;36,35,32;,
 3;37,35,36;,
 3;36,38,37;,
 3;39,37,38;,
 4;12,13,40,41;,
 4;18,19,42,43;,
 4;24,25,44,45;,
 4;30,31,46,47;,
 4;31,12,41,46;,
 4;13,18,43,40;,
 4;19,24,45,42;,
 4;25,30,47,44;,
 3;46,44,47;,
 3;44,46,41;,
 3;41,45,44;,
 3;41,40,45;,
 3;40,42,45;,
 3;43,42,40;,
 4;48,49,38,36;,
 4;50,51,32,34;,
 4;52,53,33,35;,
 4;54,55,37,39;,
 4;49,54,39,38;,
 4;51,48,36,32;,
 4;53,50,34,33;,
 4;55,52,35,37;;
 
 MeshMaterialList {
  1;
  46;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;0.850000;;
   5.000000;
   0.700000;0.700000;0.700000;;
   0.170000;0.170000;0.170000;;
   TextureFilename {
    "data\\TEXTURE\\Slime.png";
   }
  }
 }
 MeshNormals {
  42;
  0.084536;0.975739;-0.201958;,
  0.271429;0.712487;-0.647061;,
  0.373002;0.258159;-0.891192;,
  0.340366;-0.485997;-0.804958;,
  0.110446;-0.966968;-0.229728;,
  0.202642;0.975651;-0.083910;,
  0.648942;0.711813;-0.268693;,
  0.892099;0.260206;-0.369395;,
  0.811112;-0.478931;-0.335741;,
  0.391517;-0.905844;-0.161744;,
  0.338981;0.930468;0.139003;,
  0.649480;0.712421;0.265767;,
  0.893808;0.258379;0.366535;,
  0.810145;-0.485259;0.328921;,
  0.297303;-0.948508;0.109290;,
  0.106051;0.961816;0.252317;,
  0.271870;0.713930;0.645284;,
  0.374491;0.253744;0.891835;,
  0.339148;-0.500133;0.796772;,
  0.108654;-0.971115;0.212440;,
  -0.082286;0.976171;0.200798;,
  -0.264613;0.715451;0.646614;,
  -0.367645;0.249035;0.896001;,
  -0.322998;-0.513697;0.794851;,
  -0.072277;-0.975117;0.209580;,
  -0.199975;0.976289;0.082886;,
  -0.644767;0.716156;0.267200;,
  -0.895217;0.247001;0.370914;,
  -0.789590;-0.519092;0.327248;,
  -0.345909;-0.927206;0.143655;,
  -0.334754;0.931829;-0.140122;,
  -0.644269;0.715566;-0.269968;,
  -0.893646;0.248818;-0.373480;,
  -0.790238;-0.514257;-0.333262;,
  -0.255305;-0.959540;-0.118757;,
  -0.103395;0.961839;-0.253329;,
  -0.264014;0.714027;-0.648430;,
  -0.365864;0.253440;-0.895496;,
  -0.323410;-0.501056;-0.802713;,
  -0.073072;-0.971388;-0.225976;,
  0.330823;0.667605;0.666979;,
  -0.339456;0.649001;0.680857;;
  46;
  4;40,40,40,40;,
  4;41,41,41,41;,
  4;17,16,21,22;,
  4;18,17,22,23;,
  4;27,26,31,32;,
  4;28,27,32,33;,
  4;37,36,1,2;,
  4;38,37,2,3;,
  4;7,6,11,12;,
  4;8,7,12,13;,
  4;12,11,16,17;,
  4;13,12,17,18;,
  4;22,21,26,27;,
  4;23,22,27,28;,
  4;32,31,36,37;,
  4;33,32,37,38;,
  4;2,1,6,7;,
  4;3,2,7,8;,
  3;25,35,30;,
  3;0,35,25;,
  3;20,0,25;,
  3;5,0,20;,
  3;20,15,5;,
  3;10,5,15;,
  4;18,23,24,19;,
  4;28,33,34,29;,
  4;38,3,4,39;,
  4;8,13,14,9;,
  4;13,18,19,14;,
  4;23,28,29,24;,
  4;33,38,39,34;,
  4;3,8,9,4;,
  3;14,4,9;,
  3;4,14,19;,
  3;19,39,4;,
  3;19,24,39;,
  3;24,34,39;,
  3;29,34,24;,
  4;21,16,15,20;,
  4;31,26,25,30;,
  4;1,36,35,0;,
  4;11,6,5,10;,
  4;16,11,10,15;,
  4;26,21,20,25;,
  4;36,31,30,35;,
  4;6,1,0,5;;
 }
 MeshTextureCoords {
  56;
  0.511860;0.276410;,
  0.511860;0.206840;,
  0.436290;0.206840;,
  0.436290;0.276410;,
  0.511860;0.276410;,
  0.436290;0.276410;,
  0.436290;0.206840;,
  0.511860;0.206840;,
  0.117270;0.409040;,
  0.029860;0.394980;,
  0.011670;0.524470;,
  0.106510;0.529900;,
  0.171580;0.415880;,
  0.164080;0.531310;,
  0.110530;0.657940;,
  0.008790;0.667740;,
  0.037430;0.808250;,
  0.131940;0.786540;,
  0.169560;0.651820;,
  0.190530;0.772810;,
  0.165710;0.917170;,
  0.068670;0.936480;,
  0.104330;0.060050;,
  0.192940;0.075420;,
  0.230090;0.895350;,
  0.250300;0.095060;,
  0.162440;0.188920;,
  0.084890;0.170320;,
  0.056310;0.277710;,
  0.137180;0.296270;,
  0.212850;0.202540;,
  0.188350;0.306620;,
  0.447930;0.658440;,
  0.428340;0.669090;,
  0.440330;0.667840;,
  0.419010;0.661510;,
  0.446670;0.646440;,
  0.417770;0.649560;,
  0.437300;0.638890;,
  0.425340;0.640200;,
  0.262650;0.524560;,
  0.260380;0.416040;,
  0.290050;0.754490;,
  0.275560;0.639790;,
  0.322590;0.140340;,
  0.322980;0.857340;,
  0.266930;0.314890;,
  0.283210;0.223730;,
  0.560750;0.584830;,
  0.473610;0.514930;,
  0.502170;0.781150;,
  0.571700;0.695260;,
  0.305660;0.722630;,
  0.391950;0.793130;,
  0.364040;0.527750;,
  0.295110;0.612940;;
 }
}
