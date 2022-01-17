GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      &�y���ڞu;>��.pH   res://.import/smol_frogling.png-f2d4f479afef5959a0d282c5c2c9e7ed.stex   P      n      �(Y�l���0�#�@   res://.import/sprite.svg-7da78cbc9a781a98443453bde5c3105a.stex  �#             ��~��dg��Nf��F�   res://CreatureAI.gd.remap   P&      %       �Bi!:܂�AOf�nRT   res://CreatureAI.gdcp      5      �H1���z|�wMf��    res://CreatureAIPrototype.tscn  �      �
      >������2h��u)�    res://PlayerController.gd.remap �&      +       :zWJ ��c��sX   res://PlayerController.gdc  �      q      ��(�a=�IJ�֕�G��   res://PlayerView.gd               ��ُ ��	���B~   res://default_env.tres        �       um�`�N��<*ỳ�8   res://icon.png  �&      �      G1?��z�c��vN��   res://icon.png.import   �      �      ��fe��6�B��^ U�   res://project.binary�3      &      ��8�ݢ���ݓ����    res://smol_frogling.png.import  �       �      ��}=Yc��eHW����   res://sprite.svg.import �#      �      b��f�3�k����v^            GDSC         $   �      ��������τ�   ��������϶��   ������������϶��   ������������¶��   ����������Ѷ   �������Ӷ���   �����϶�   ���������������Ŷ���   ����׶��   ����������Ӷ   ����������Ҷ���   �����������������Ӷ�   �����¶�   ������������϶��   �������ض���   ζ��   ϶��   �������Ķ���   ���Ӷ���                         CreatureArea                                                    	      
   %      &      '      (      .      3      4      ;      E      F      f      g      s      x      }      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   3YYYYY5;�  SY;�  SY;�  SY;�  SY;�  SYYYY0�  PQV�  �  �  SYY0�  P�  QV�  ;�	  �
  PQT�  S�  �  ;�  �	  T�  P�  T�  R�  P�  T�  T�  �  R�  T�  T�  �  QQS�  �  &�  �  T�  T�  �  V�  �  �  S�  '�  V�  �  S�  &P�  QV�  &P�  QV�  �  T�  �(  P�  R�  QS�  �  T�  �(  P�  R�  QS�  'P�  QV�  �  T�  �  T�  S�  �  T�  �  T�  SYYYY`           [gd_scene load_steps=11 format=2]

[ext_resource path="res://smol_frogling.png" type="Texture" id=1]
[ext_resource path="res://CreatureAI.gd" type="Script" id=2]
[ext_resource path="res://icon.png" type="Texture" id=3]
[ext_resource path="res://PlayerController.gd" type="Script" id=4]

[sub_resource type="CircleShape2D" id=5]
radius = 300.0

[sub_resource type="PhysicsMaterial" id=7]

[sub_resource type="Animation" id=1]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath(".:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 12 ]
}

[sub_resource type="Animation" id=2]
resource_name = "test"
length = 0.6
step = 0.05
tracks/0/type = "value"
tracks/0/path = NodePath(".:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ]
}

[sub_resource type="CircleShape2D" id=3]
radius = 20.0

[sub_resource type="CircleShape2D" id=4]
radius = 35.0

[node name="Node2D" type="Node2D"]
scale = Vector2( 0.862806, 0.819486 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CreatureArea" type="CollisionShape2D" parent="Area2D"]
position = Vector2( -458.968, -178.161 )
shape = SubResource( 5 )

[node name="CreatureRigidBody" type="RigidBody2D" parent="."]
position = Vector2( -213, -88 )
physics_material_override = SubResource( 7 )
gravity_scale = 0.0
script = ExtResource( 2 )

[node name="CreatureTest" type="Sprite" parent="CreatureRigidBody"]
position = Vector2( -1.52588e-05, 0 )
texture = ExtResource( 1 )
hframes = 13
frame = 12

[node name="AnimationPlayer" type="AnimationPlayer" parent="CreatureRigidBody/CreatureTest"]
anims/RESET = SubResource( 1 )
anims/test = SubResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="CreatureRigidBody"]
shape = SubResource( 3 )
one_way_collision_margin = 0.0

[node name="PlayerKinematic" type="KinematicBody2D" parent="."]
script = ExtResource( 4 )
speed = 5

[node name="User" type="Sprite" parent="PlayerKinematic"]
position = Vector2( -1.76851e-05, 0 )
scale = Vector2( 0.243926, 0.236481 )
texture = ExtResource( 3 )

[node name="PlayerCamera" type="Camera2D" parent="PlayerKinematic/User"]
scale = Vector2( 4.0996, 4.22867 )
current = true
zoom = Vector2( 0.5, 0.5 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="PlayerKinematic"]
position = Vector2( -1.76851e-05, 0 )
scale = Vector2( 1, 1 )
shape = SubResource( 4 )
   GDSC            g      ��������τ�   ��������϶��   ����Ҷ��   �����϶�   ���������������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   �������ض���   ϶��   ζ��      ui_up         ui_down       ui_left       ui_right                   
                                 	      
         %      .      5      >      E      N      U      ^      e      3YY5;�  SYY8P�  Q;�  SYYY0�  PQV�  -YY0�  P�  QV�  &�  T�  PQV�  �  T�	  �  S�  '�  T�  P�  QV�  �  T�	  �  S�  '�  T�  P�  QV�  �  T�
  �  S�  '�  T�  P�  QV�  �  T�
  �  SY`               [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�               R  WEBPRIFFF  WEBPVP8L:  /��'  ��T#[ @��@ @(���K�� XQ�� �ݺyf�g�@� �~�����rB ���ܶq��m����ou���N3�9�$��Ϻz��R������w�0;�Å�e�F����.S���:��Q�6L���YB�Q��;ꀡ]�sD}˦L@��ꫀ�r�	���kLF�vT �����;J)����)k�+|^���Ѕހ�w�A�u�{	 �Ơx���5@ uJ��$J �����E���
����;(���<q�)��_j�P(�)`��y@6�/K�n������EO�C�����m"ڑ   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/smol_frogling.png-f2d4f479afef5959a0d282c5c2c9e7ed.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://smol_frogling.png"
dest_files=[ "res://.import/smol_frogling.png-f2d4f479afef5959a0d282c5c2c9e7ed.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   GDST                         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/sprite.svg-7da78cbc9a781a98443453bde5c3105a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite.svg"
dest_files=[ "res://.import/sprite.svg-7da78cbc9a781a98443453bde5c3105a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        [remap]

path="res://CreatureAI.gdc"
           [remap]

path="res://PlayerController.gdc"
     �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name          Creature Ai Prototype      application/run/main_scene(         res://CreatureAIPrototype.tscn     application/config/icon         res://icon.png     global/Scene             input/ui_leftH              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/ui_rightH              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/ui_upH              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/ui_downH              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_clear_color      ���=���>��,>  �?)   rendering/environment/default_environment          res://default_env.tres            