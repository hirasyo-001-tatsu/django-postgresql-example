PGDMP         .                {            postgres    14.8 (Debian 14.8-1.pgdg120+1)    14.8 (Debian 14.8-1.pgdg120+1) >               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13780    postgres    DATABASE     \   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3357            �            1259    16392    account_attribute    TABLE     �  CREATE TABLE public.account_attribute (
    account_id character varying(100) NOT NULL,
    self_introduction character varying(1000),
    twitter_uri character varying,
    facebook_uri character varying,
    instagram_uri character varying,
    youtube_channel_uri character varying,
    skill character varying(1000) NOT NULL,
    rate character varying,
    status character varying(1),
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone
);
 %   DROP TABLE public.account_attribute;
       public         heap    postgres    false                       0    0    TABLE account_attribute    COMMENT     B   COMMENT ON TABLE public.account_attribute IS 'account_attribute';
          public          postgres    false    210                        0    0 #   COLUMN account_attribute.account_id    COMMENT     Y   COMMENT ON COLUMN public.account_attribute.account_id IS 'Account ID:アカウントID';
          public          postgres    false    210            !           0    0 *   COLUMN account_attribute.self_introduction    COMMENT     U   COMMENT ON COLUMN public.account_attribute.self_introduction IS 'Self Introduction';
          public          postgres    false    210            "           0    0 $   COLUMN account_attribute.twitter_uri    COMMENT     [   COMMENT ON COLUMN public.account_attribute.twitter_uri IS 'Twitter URI:ツイッターID';
          public          postgres    false    210            #           0    0 %   COLUMN account_attribute.facebook_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.facebook_uri IS 'Facebook URI:フェイスブックID';
          public          postgres    false    210            $           0    0 &   COLUMN account_attribute.instagram_uri    COMMENT     e   COMMENT ON COLUMN public.account_attribute.instagram_uri IS 'Instagram URI:インスタグラムID';
          public          postgres    false    210            %           0    0 ,   COLUMN account_attribute.youtube_channel_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.youtube_channel_uri IS 'YouTube Channel URI:YouTubeID';
          public          postgres    false    210            &           0    0    COLUMN account_attribute.skill    COMMENT     G   COMMENT ON COLUMN public.account_attribute.skill IS 'Skill:スキル';
          public          postgres    false    210            '           0    0    COLUMN account_attribute.rate    COMMENT     B   COMMENT ON COLUMN public.account_attribute.rate IS 'Rate:評価';
          public          postgres    false    210            (           0    0    COLUMN account_attribute.status    COMMENT     O   COMMENT ON COLUMN public.account_attribute.status IS 'Status:ステータス';
          public          postgres    false    210            )           0    0 $   COLUMN account_attribute.create_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.create_date IS 'Create Date:作成日';
          public          postgres    false    210            *           0    0 $   COLUMN account_attribute.update_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.update_date IS 'Update Date:更新日';
          public          postgres    false    210            �            1259    16399    account_master    TABLE     #  CREATE TABLE public.account_master (
    account_id character varying(64) NOT NULL,
    account_name character varying(20) NOT NULL,
    mail_addless character varying NOT NULL,
    password character varying(64) NOT NULL,
    zip_code character varying NOT NULL,
    barth_date date NOT NULL,
    time_zone character varying NOT NULL,
    language character varying NOT NULL,
    registration_date timestamp(6) without time zone NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone
);
 "   DROP TABLE public.account_master;
       public         heap    postgres    false            +           0    0    TABLE account_master    COMMENT     <   COMMENT ON TABLE public.account_master IS 'account_master';
          public          postgres    false    211            ,           0    0     COLUMN account_master.account_id    COMMENT     P   COMMENT ON COLUMN public.account_master.account_id IS 'Account ID:ユーザID';
          public          postgres    false    211            -           0    0 "   COLUMN account_master.account_name    COMMENT     O   COMMENT ON COLUMN public.account_master.account_name IS 'Account Name:氏名';
          public          postgres    false    211            .           0    0 "   COLUMN account_master.mail_addless    COMMENT     ^   COMMENT ON COLUMN public.account_master.mail_addless IS 'Mail Addless:メールアドレス';
          public          postgres    false    211            /           0    0    COLUMN account_master.password    COMMENT     P   COMMENT ON COLUMN public.account_master.password IS 'Password:パスワード';
          public          postgres    false    211            0           0    0    COLUMN account_master.zip_code    COMMENT     M   COMMENT ON COLUMN public.account_master.zip_code IS 'Zip Code:郵便番号';
          public          postgres    false    211            1           0    0     COLUMN account_master.barth_date    COMMENT     N   COMMENT ON COLUMN public.account_master.barth_date IS 'Barth Date:誕生日';
          public          postgres    false    211            2           0    0    COLUMN account_master.time_zone    COMMENT     U   COMMENT ON COLUMN public.account_master.time_zone IS 'Time Zone:タイムゾーン';
          public          postgres    false    211            3           0    0    COLUMN account_master.language    COMMENT     G   COMMENT ON COLUMN public.account_master.language IS 'Language:言語';
          public          postgres    false    211            4           0    0 '   COLUMN account_master.registration_date    COMMENT     \   COMMENT ON COLUMN public.account_master.registration_date IS 'Registration Date:登録日';
          public          postgres    false    211            5           0    0 !   COLUMN account_master.create_date    COMMENT     P   COMMENT ON COLUMN public.account_master.create_date IS 'Create_Date:作成日';
          public          postgres    false    211            6           0    0 !   COLUMN account_master.update_date    COMMENT     P   COMMENT ON COLUMN public.account_master.update_date IS 'Update Date:更新日';
          public          postgres    false    211            �            1259    16406 
   offer_list    TABLE       CREATE TABLE public.offer_list (
    offer_id character varying(64) NOT NULL,
    account_id character varying(64) NOT NULL,
    offer_type character varying(1) NOT NULL,
    offer_title character varying NOT NULL,
    offer_severity character varying,
    offer_catagory character varying,
    offer_location character varying,
    offer_status character varying(1) NOT NULL,
    offer_text character varying(140) NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone
);
    DROP TABLE public.offer_list;
       public         heap    postgres    false            7           0    0    TABLE offer_list    COMMENT     T   COMMENT ON TABLE public.offer_list IS 'offer_list:オファー台帳（catalog）';
          public          postgres    false    212            8           0    0    COLUMN offer_list.offer_id    COMMENT     K   COMMENT ON COLUMN public.offer_list.offer_id IS 'Offer ID:オファーID';
          public          postgres    false    212            9           0    0    COLUMN offer_list.account_id    COMMENT     L   COMMENT ON COLUMN public.offer_list.account_id IS 'Account ID:ユーザID';
          public          postgres    false    212            :           0    0    COLUMN offer_list.offer_type    COMMENT     S   COMMENT ON COLUMN public.offer_list.offer_type IS 'Offer Type:オファー種別';
          public          postgres    false    212            ;           0    0    COLUMN offer_list.offer_title    COMMENT     U   COMMENT ON COLUMN public.offer_list.offer_title IS 'Offer Title:オファー題目';
          public          postgres    false    212            <           0    0     COLUMN offer_list.offer_severity    COMMENT     ^   COMMENT ON COLUMN public.offer_list.offer_severity IS 'Offer Severity:オファー優先度';
          public          postgres    false    212            =           0    0     COLUMN offer_list.offer_catagory    COMMENT     d   COMMENT ON COLUMN public.offer_list.offer_catagory IS 'Offer Catagory:オファー・カテゴリ';
          public          postgres    false    212            >           0    0     COLUMN offer_list.offer_location    COMMENT     [   COMMENT ON COLUMN public.offer_list.offer_location IS 'Offer Location:オファー場所';
          public          postgres    false    212            ?           0    0    COLUMN offer_list.offer_status    COMMENT     D   COMMENT ON COLUMN public.offer_list.offer_status IS 'Offer Status';
          public          postgres    false    212            @           0    0    COLUMN offer_list.offer_text    COMMENT     P   COMMENT ON COLUMN public.offer_list.offer_text IS 'Offer Text:オファー文';
          public          postgres    false    212            A           0    0    COLUMN offer_list.create_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.create_date IS 'Create Date:作成日';
          public          postgres    false    212            B           0    0    COLUMN offer_list.update_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.update_date IS 'Update Date:更新日';
          public          postgres    false    212            �            1259    16385    purchase_histroy    TABLE     �  CREATE TABLE public.purchase_histroy (
    purchase_id character varying NOT NULL,
    purchase_date date NOT NULL,
    purchase_time time without time zone NOT NULL,
    payer_account_id character varying NOT NULL,
    payee_account_id character varying NOT NULL,
    amount numeric NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone
);
 $   DROP TABLE public.purchase_histroy;
       public         heap    postgres    false            C           0    0    TABLE purchase_histroy    COMMENT     \   COMMENT ON TABLE public.purchase_histroy IS 'purchase_histroy:課金処理用テーブル';
          public          postgres    false    209            D           0    0 #   COLUMN purchase_histroy.purchase_id    COMMENT     H   COMMENT ON COLUMN public.purchase_histroy.purchase_id IS 'Purchase ID';
          public          postgres    false    209            E           0    0 %   COLUMN purchase_histroy.purchase_date    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_date IS 'Purchase Date';
          public          postgres    false    209            F           0    0 %   COLUMN purchase_histroy.purchase_time    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_time IS 'Purchase Time';
          public          postgres    false    209            G           0    0 (   COLUMN purchase_histroy.payer_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payer_account_id IS 'Payer Account ID:account_idと連動';
          public          postgres    false    209            H           0    0 (   COLUMN purchase_histroy.payee_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payee_account_id IS 'Payee Account ID:account_idと連動';
          public          postgres    false    209            I           0    0    COLUMN purchase_histroy.amount    COMMENT     >   COMMENT ON COLUMN public.purchase_histroy.amount IS 'Amount';
          public          postgres    false    209            J           0    0 #   COLUMN purchase_histroy.create_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.create_date IS 'Create_Date:作成日';
          public          postgres    false    209            K           0    0 #   COLUMN purchase_histroy.update_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.update_date IS 'Update Date:更新日';
          public          postgres    false    209                      0    16392    account_attribute 
   TABLE DATA           �   COPY public.account_attribute (account_id, self_introduction, twitter_uri, facebook_uri, instagram_uri, youtube_channel_uri, skill, rate, status, create_date, update_date) FROM stdin;
    public          postgres    false    210   mC                 0    16399    account_master 
   TABLE DATA           �   COPY public.account_master (account_id, account_name, mail_addless, password, zip_code, barth_date, time_zone, language, registration_date, create_date, update_date) FROM stdin;
    public          postgres    false    211   �p                 0    16406 
   offer_list 
   TABLE DATA           �   COPY public.offer_list (offer_id, account_id, offer_type, offer_title, offer_severity, offer_catagory, offer_location, offer_status, offer_text, create_date, update_date) FROM stdin;
    public          postgres    false    212   �                 0    16385    purchase_histroy 
   TABLE DATA           �   COPY public.purchase_histroy (purchase_id, purchase_date, purchase_time, payer_account_id, payee_account_id, amount, create_date, update_date) FROM stdin;
    public          postgres    false    209   ��       �           2606    16398 '   account_attribute account_attribute_pkc 
   CONSTRAINT     m   ALTER TABLE ONLY public.account_attribute
    ADD CONSTRAINT account_attribute_pkc PRIMARY KEY (account_id);
 Q   ALTER TABLE ONLY public.account_attribute DROP CONSTRAINT account_attribute_pkc;
       public            postgres    false    210            �           2606    16405 !   account_master account_master_pkc 
   CONSTRAINT     g   ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT account_master_pkc PRIMARY KEY (account_id);
 K   ALTER TABLE ONLY public.account_master DROP CONSTRAINT account_master_pkc;
       public            postgres    false    211            �           2606    16412    offer_list offer_list_pkc 
   CONSTRAINT     i   ALTER TABLE ONLY public.offer_list
    ADD CONSTRAINT offer_list_pkc PRIMARY KEY (offer_id, account_id);
 C   ALTER TABLE ONLY public.offer_list DROP CONSTRAINT offer_list_pkc;
       public            postgres    false    212    212            �           2606    16391 %   purchase_histroy purchase_histroy_pkc 
   CONSTRAINT     �   ALTER TABLE ONLY public.purchase_histroy
    ADD CONSTRAINT purchase_histroy_pkc PRIMARY KEY (purchase_id, payer_account_id, payee_account_id);
 O   ALTER TABLE ONLY public.purchase_histroy DROP CONSTRAINT purchase_histroy_pkc;
       public            postgres    false    209    209    209                  x��}�_Y��s�W�����IU*����8�Ok���y)���I��	� *�����;��A����g��@8�|�_���/���.
��3=�U+U{����|��y��_�(���ֲ����7�k#�����.Ҧ�/�~���g��^8��e�����}}}۵�ޖ�uyS٢�u����K�@�d��tBQ*�����0ӹ,��W�W(9 �BJK8�"�R(�J��ka�.��R8���ʱ`R鐵|L��a���]3uI��u��vHy�C��!|k�fϷR8ߚ�������_�}��
���ѣ
��g��"9hi%di^:���55�I{#J���'�����9�h���9�`s����k*�͡����Օ�����������������f��fergj�~ee�|y����Wo�.L���g��f����Sd<+��+*w�v�����˵��fy��~}�<j����ܞ�-�p�7'�o��S0·��B�H�o˙�ζ��̐�r9?��Q��M.٥������w�o��@X�@�	Kn	G3$J�hk8�Q�=1S�ڔ �䛕Y2�˛��8��Y"���Ceo���f�9fJ�
hj�k������'a��'�����#֨78����֛[�!�3Y�R]��tH[("�i=E$�p��������X��kɴ�տӵB� �ᘞ-�
������V$��X��L�o?|w����/F��u��iVG`�⿖�&�)^�Zi�K���P�EI����*�`^5�b=�d���g�������X�bJ=���;Y��&�6V�������c%B��X����ǦT�O��ۛٴ�|��QrcuFk�en��K�+��R��ʺ��m��J�������4&����zު���ݦA��v�
�,���vV*���^�S�B
�|9��|-ND�ٴ�W�z6E$�|�}.�wSQ�bL�O:���%Y���YSO�Kն����!�I�(h�VU�u%��R�7�����0�1�ąs	�(�j���1�G�w'M����r������������}��^��w	�u�4/��ŋ����O���e�������7� Cp���®�l����;Gx� 7T&k3���c��z�]-�p���
�q:�S�m���O��]d���d�ț���A(:\��ln��K��*�@k�x*����%z7�s�wR8ߍ�������7z��b�N�7�/duS'��g��{�]+��>/��Ȗ�q�I��ݻ����`;���d)�h�U�����#jj�#9"��m�IŚ�7پ?<�g�Գ:��o��������p? ����g��d�RR8��I|�bq:p��hǁ5~D��#	k	����SO�F���5�?����\A���_~��\I�#�n>�ֻsyT=(�n�yi	����F⭲�d�B2���'М¡�1d�@y�'⭵u��_��ϔ���/T��TOޯ�;׫�'j7��/���OUO�H'�o���B�X�)!�S<��G<���P�9t��w�-�%�p����ehy-	�=Dԅ��"�$�`F��Y��+pl ���؛�3v/����j���o] v�K6���kΩ�g	7����Ṇ��d��֛k���z\o_KD������9�up�葃?|{�L|�,ܣz��h�C����S������fM��߮��
]{W�����LV��D���af�'b8G��<�,.���B�dPH�q܇*̂o�jׇv�p�g������6=���F��X�)!�S ��G ��.��,�F+�`��(�mZQw�*T�}.m�к�ыFG��h��ڌnݩ�P�&��e��eW~��豖CG{��u3��Ť�L�栦�J1b�֮o-�l-Uϝ!��>;^]�����߯O�F�WOT_U'�ן���9[�:�]]�X�8K)ѷ\�Q?�X��k�/�S��K@IɼDc=��h�N�p�X�[7n��Z�@�(�]�J�#T.�n��mN����7_�|Y�~�x-��?u2U�x�`�ZT�S��ud}��(\.#�s�8��L�A�=�i�EF�˩���g3o�j���
Z��x��fe��I��������J����=b���^�u�����r��#���v.��O��ܮ�^��� .��>T���Amj�1�o3#
5~��~{�������� �q�Tu�vm�W�nw-�X�c�3L�WWO���L��g��zj�M=�$�p�������ă!4�����@K��d�p	��?Q�M�1��L�`o"��w�z�PQҤ>�MJ5����uTt���֫K���))�����^ȕ�xG� ;ZҒ�\�(�j��T�h�xP�8���i]ꆧ-���'��\w��@+��ѱ�[�4<FLo| �T��M�b��z'���b$~1+Ή�Q��=�)t��au$W4;
�W�
e�խ�� ��n#ɕ�}W	�X[q\��	+��D��0�]��uPW7+��۲s�[����ٻ={�z��+�)XD#[o�W��#w�2���N5��9^�-�Z{ky�ųl�s��`��z�<r>�&ӯ_��h�^�S�B
��9���-N�]�ڑ��0�y�&�$n��t=ocм�U\2G!�g=~1��*�[m�%2� �bW/T+;SCՅVL�i�M�z�yt��S�9����,��|m��Tƹ�jh�&;�y;	Z_���g�H�z�ipdM�f�5��CH���gvX�<<^�wK%�d
�^KD<�}��ib-2�{���p�KG�����p�xY�v�u{�ٸ1Z]]&~��[̇��a�O*�ڳ�� �I�Rt��'m��l�l�8]��/�V���6@��_�t�cr��ڙ9Q�T�L����N��9U�z��>��5 ��BD�R��O]pN�����b>�-�j��y��$Jb aw�Nm�e)L�xPOb��X��=�MH�6N�3l'��ߩe;r��s�`��i��p�k��{�:Q1!�+�����[7!Y�x���S�Nm1<��](o?��J�٦��έ�\�>>A��������U�O߼��\b���kw���Mݭ�[;7_�m�O���S����O))�R�$>R�85��6nC�q�nv�F�?FBM2��`*a����C���?s�)`!��D�s�ʭ13&��������ن�i`�c�	6����|u�v�(�iK5�1e��.��;�AI|���>l
QN�'��8ڸ�Ȅ�B$�ަ�=�Ò�W&	z��mj�4�z�@=#+�򦑡���`���i�iph:��E�חr�ҡ��%{�������2�ꓺ-���T,���N��x&85I�
�%�u�A �r�FJ��a�zK�\�bFH�b��zIO�)���$>ҷ8�㐍�q2�:�'��ڈK2��f>��N5��aB����,�������H�>V=�s����S�ǰ��՟�ޙ��y��1�I��	�XNs;CO�w0�sk�����O�Q��l�r�6z�v�:Z�'�lߟB��y*T�����z�GH�'���iB_Q�~�ds���/��Xk$���~56���9]�-l�$_�{����l���#���v��[,�� U���d�Z��������y��b"�7��Gv#N=� @&Ĉ�����[��Ќ��ك�"��x�
!�sVp�Yaq��+>"��Hb���|�[C�T}#Y㴼(H#��{Ǭ�`BA&Q,�H�-ad�Y�' �B��\���u�p1�!Lړ�;�^��]�՛��c�A�p��h�pxJl���I픟#C�<Oxtg���F���~�ѳ��oӾҷ��S�B
��9���-N3tJ�1WX*z���X�]��&�aY����mz�`"pT��3�uki)�ui���肿�dc=(Q�.�f^G�P*v����d�.e��F��c�Ґث|��o��B���%��)��V4r����v|~����Kˋ7]�<%(�pJ���H��O����%\�Z`T�a�U��I5jte� ��'0��dm>"���}�֦/n�R�"��/��     ����;���꩛;C�tm���Ԯ<e�:|:v��쯓�W����(\0RF�#�>s��&S���>p��ϱVY�u��'��T��|��a�N{�Q�嶖�тc[튮��sS�o�3�vC�gtT��кOZ�?�wZFD�J�0����Icz̿M����(���D+ �hD�(j4��wkP�#k͂f�
��WCJ���nC���0�
�=W�h�RR�̂�V2u����
����j�N�K��.Q�b)�������%%F�'%�鏂Y��	k���6n��EmU�a�f�1u��/�����\Ա�uw����tk&>��C?�?�A�����,�	J��C�����	��.3���{6EHM<�>�<s�>c]������Yp�VX�ݍ> �F���e�0?#�s�s4����tY,}/�1]�Ă}rz0ӓO�)�eZ�n�r��E&�^��>�X��J�~{l̆<m>n��e����Z�x�+"�<E$�p����������2=aR*�&��nip-���^f�Е����m���Ի�r��mm��ō�5��x����+w��4���nJɷ����F87�$9�;�e�R�������6V��l$�ō�G�G� b��!e��&{ï���u��jY�2�1a�����y��5���'�Ǔ��ۇ@I�D�%��o�䆍�;IIghwD��7�����5p�Ω���2?�sڟx"�T��'�c*��9�WbiYm�|�=;�=wC ��ؑl�S��gO��mĒh x�(��6��^#�ȝ�q[O�Q�@��$�9}Z(��B(�f+�H8�zC�j4�����Bo ]�F	��K�ϓ8j뇛�����*�c9�YZs���xݐ������9���󖎈�%F�'��G ��qk-%��~
1��T�Dp0��9Е�>�8������������k�:�,��������/\���3C���~�z���q�����]���ƽ#K�������g.�~�������_�u	������C�!\F��{-���^\�ץ��\��\-�p�����s��a9kmٳ��*�0����X��:�R��</|�&����]�v rX�3�������-�p�� �s��Q4���u�����1\A�)��lLS� �9����Ԏ��؅�P��y�l&.�<�p��Y���W=�W�1wA^	(��+J⋼b��X���cQgN��U� N���V9lO�����F�w+Oh��}���R�I.S<��o��W�(½z��f�Q�r�Ø�XU;�1Xf��R�i=�w�ID��41�L�?�+��ul2�f*V(D�f;��>&���6pѢ�E#?}���X�rR8��I|�dq��p����no:F��2VRc�'L�̶T1�Yh}��Q�Ⰼ�/�9���"6Y3wS�Q�^a�T	������ūmX���@��ԡx��9K�l-�Ξ�1�����v�����[϶K����]�@I|+��Fz�,*�Aܮ����\�&�2]���h�v����Bg<����,FQ��v�f�A��)�gA���i�=/bd{��K
E�f�>IK����������są��$>#nq��� ��q�~���0�J�A��T�H��su�<Jʛ/���-�p�1������qЮ�2�t��N�eZ}�Й�l�ֻyJHH�mf$~�͜�~�P�"��|��QǨ����?5hFR�o����3d}� XX�Jw`���*4�?��� �w�L7�"̺�0�Y�P�+��k�noV�$��G�g�P{@�Ze~�J��	#�pMF�7a8�O�Q-msk��=ñ�P�5
v$�M�/q��χ�����d�G��& :,M�rX#Ϊ�4�=�,���@]������V[��&m��
D�t�*bmk=�7�UD�B�2?�+�$�4|w�(��8W�B�a�x�760XPJ��g��Ր4��!���
qX'��F��H�S�Z~F 5������e�|�>?��d�?�w����U��H�
�8����t'x�N�IM@��c�TA#��ɧ�>~�t5�rBW�	��N�ë�CA����rH�\ˣp����hm�!�H�dh��t�hכֿ-��C��x5����93���įA��I�>�\'�CS����VF{3��l����3��~�Gm��3�j:������(R�gO{6� �Pm�� ��*��z5�����Q�b���/v�9}~H��扊���e͝8���.��2�q��϶>�v"D.'���9��g�ExVB!x&�	#]ae)a��v����qqY�����~=J"+�~�m���p����*�?�5v�T.ل��_{V��>�G�����Z/�fQ��,��/��9}�0T�vc�.�Lo
6�AS��d������6)S�/6���>�h��n	���|��#���[`�ث)d�|�ἫC�؅�o��B�(\.#�s!8�?��R��pw���16d�"��S��J�`����t����+��U�#������o�h�`���0'ho�:���؂S�$�A��3gjݖw�^�e���&�2�ߔ˃J�?�^�������0%�3N�)�&3�����|��"�Z��9;�6��M+�u�T�5��\E�`aT����%,�W@'�JV�U��)�U�vg(t��Q9�Xe}��UK�<��Ά*�?;�=� �M��-�pɛ��ɛs���=
����]��&�x+Br��bk��H"��̽ ���6���ֿ��,�&���<�+��m�,�N�EJ:�4
@L��ܜb�~���̒�g�&4)rر�Ԧ�<q�|L�q�"
n����&9�}E_EY���L`x]V�f��H)���H��aQ5�d���b�ϗKե����)N���$��!��>�b��7�����Bye�:��i}X�`�A/U�'Xt�N��e����^�(xN!��U%�mU�8}�(������ưg�"����X{6��t�e��^��\V�X}���q���ooe������6$fvc���zW�8�H��a�Ŗ����|�T�J#�2��a�;��:-6V�����F�&���o�,�s��'�R>���	��a�g˞����E.�3?�sN��#��V��X�=!h�(&�"j�_�����:A�_犖X��z�)��[��,쟎���>���s��ֽ��_��#ò-8��*��"�^�+�p�o���sگ�'�+�d'��#�����XG���WL1T�r�ʈ�\bkyu�~y��	�X��nTF�:�'.4�T�����!mcnA������&�p�����s���qQE�@r-LTt(���f�7�ƺz﮾{�n�}�������W�-�_����7���ߏ��'��W��
��H�G޽��_�[D�w��w�@������kO��9�"��$?��ʻ���������%a�?�n%�[�{��z?.��w/߭��r˻u���������Xa�����/��/<ŏ�7�;�|�y��16%�m��8}�P��VIǀ� �Z1����;`�Ǳ����8��)��F�(�ùcD��|�Q�߈�p��|�ͅ��q[7g�7*�H����Нڹb����@�3�b���2���yo�"
׶�H��u�i�`{js�z,�&u;��H$�ɩX����Ea)���ާء2o-L.r�����"����qO�D:U>�[bj=��������į�-���a*�(�%Ě�2�p�I�iolP˧K<a��B.k�ٔD�B�{ʗ
Œ.��Z�40��a�z2KAB���/,
l`�4-*��>��
8�E	�o�/$�4_Hv�D����{����K*Y@�N%S�T2�?�B�I�/�YD�[(�����Q��A3��:�+�B����׸(}8gQ��9�T����#B{߿���U�vc�%m�J3~�u�|�ɛ������ч�E�ч"
�����9�ω>�r���J&={���b�TMp�a�[F7Χ��Im�x���.G�O�q� A  ��o3�,�-�4�˂����D�z�]"�
wĔ��FL��E�jc9�\��	���vtXb����ۗ��T(�k�W�&@��{�t���w��Ƅ>��ƻT�څ�Mڌ�&ٲO��	<x��!���0h�RJK�[SS�.i�S�)=% �pu�c$~��8�}k��W_\�j���HkD�~�z��/�G$�^r��V�P���f�C�.�Txx�����pl	� �P���x�YH�j��H�yrN�����$���6G[��(3!g����9b��u2~͚գ3����-/�(��jw�ק��׏��5s�,�|�9W�녱��YZR�h
�{V����3)�p9���ϙ���]̒�����!	e��T"AS�'S]}�'S�Ͻ�LD�3F�7f��g��qkFn�'FG�{Q��lt0֟�5Q�h��-���7+#G�Z��>�ޝ�.��99�@���x�mo6�7��ɚ���λ�a�[�;y�YH�n?CI|��0N����Kԍ�k؉#�֐,F�t6"�HP#(6�F3���
�#��M�N�v�֔�2�F߳n�^a�����$�)��V�Z������? �	������b��)V�H;�P�Jd7�ޙ��b��FV�F�E{q�H-X�kHcc���k��x��F�Ym�+��H��ڜӾ�����p��K�Sjc(L��bgL��2}}����=t���t�xm�Vm}���[�g�V�k�˵�	J��j]�=�=_��LW'OWg��^�C#��a4�ro3^D�2����9}��h� b�󰲔0�~0�Ț��Z�Љ�=����r�_�]�w��؃%�m�dm�xu�∿�w�HD�J1�����A-0��֢H���Q�(�,Cf㝅R�'�4-l�I^��mx�=��3_ۈ�s�B}�s��4D�����h�S�
��Þ�	�;z�"
wcBJ�ۘ�q�C�Ƣ���ۃ�	��2#<�k ��%�=)���%�P��D} ��L��fSI���F� 29��-YW��`���_b��ьP  �����SB
WWF��Õs�� <�������*��UbN�#�΁��+�.j��Z��)olK�|�$��^XYx^�ǽ�m�R(Z�<E+�p�������?q*��^ ��a!��
����^HG��v1,g	�)?����M-n��� ��'��<X+�K�6��f�c+#�d�l��[�G���l?�V{}�qXe�:4���Bj~Ca�������|F}���]$�p�1�� �鳜�N47ۧ)�hA�x�B(�+%z���W����;�.�pE��_T�s���!5`;�<�1,F�*@1���6%%�}a�C '�ޝ�8�z�TG	
�	v����D�57e����Pq�Q&��\#�L�Λ��W�v�D.7����i���5@�G����2k����`�M�zO�a��f���i�zK��ؾ?�}�*��Iq�$��y��t#��	c��K&L@�΄Q�L�������
�[����G9�wYF�_o��P�5q%�_���ϱ���[��+VT�A�����N�2��1���||4�v(��J�<`��Op\<�A�#G�$F��c:�J)��գX)2�[X�KU��'t���'nP�*��T՜U*A�����ړ[ v���Bm���]�׹e�)=�!�puq`$~]8���Y��
���S0=�í�
�A0ɗ�٤�׆Qw�;������;k;C7�}V�x~��3�Fv�B[5�C��gq-�}n�W5;�>>xo_D������9}��NqWɑ�v�QI�
Oh.�k}h�PKa�7ġ���9�9�N�~�3u{g�ѐc\r�֧� A�{���du�e��	��`]l��!�oh��]�V�(��֐"
��̔��Xf�i�z���HM �0��i�K"�O��F*�e�[�{����P���5�>�If��ɤ����c�a��0էh�m�LMғ��XL�w^����E��7/��h�ל�CV�5wf�ѯ� ������6�N�����~�2������՛������>Cyhc!$ܭ�C�,�*"��"M���dd�AAY��q��9��:�T�b���Z�H,;ϯ��d��y�<��"6o�����{8)���O꙽�.�g�;�LI|Sό�~E��\�B�M����D�`O�H)]	[ 1UwmKzo~9���yhk��{�&��SkV�zk��̠��o��Xt������J����%�ѩ�]�=��8��a�m%VS%<�����7�UD�½2?�+�{\���-��>G��ᚪ3��A��C� �:�f5NK�l7�b�8�0j��2�m��_\����[q?3�T���3�f�Z3O��C�t.#S�)�����{|d��{"
Wr���%�8�}�ɅY���>ƺF­�hА�D>�GL��:���~J�;2'��qcE�D���v�9�3M��z��m��p~s��9!�p�=c$~m�8�}�
��YtM(>�ar,�����H���%��u����17+�����^�ݢm�˼q���0�ݏ�C�D@�F�P_���D�n�d,�v��Z6�J@��ި�����=��.�w���͒U������S$�{��Mq󂄃?�뽽]h�˅f$~.4����EYl$L�&i�FҒ�D+�P0���j���=[�{�"
���H��V��3�e��G�]]O��`��㭪��ނ��U{�qR�#��#?;O��f�9ZBsܵ^'+�&����]{�n�֑#�_o��]}��v�:���7R�O�X'�[z�]H�;'����k2�J�*�'Hg�0��F�B[�3h�R��['��m�s�'U�g������Q��4)q�S�
{�����t��~M_����EYZ��Q� Ì�0�9�G�Qa��87�fO,,��z���PP�u��0`9`gɊ�J�~���;t�.Uߌ���F�˶AR�i�<��z{{�&��-��a�3���4w�1�P��x
VH�*�f$~�؜�g���M�º�a!���R%=���[bG�,9ې5�P}oyDB.OI�`*0��k7�זR��O?�]���zx+�c��5��;����7l�k�f$~6���#�̴%�K�X�BZ����Z��Ж�2i��=GHH�>������8}�`"lt
]���b�8EE�0��]��ޞ��c�Z b��^m9���$ ��N�9X��z��09C�g������j }V����	P�+�H���ӧ��EX�/j�6��EI?�8�X����R{�Y�2���3�w9�~f��VGO���,���W[���ǫ����=�;��z_�.�p-pF��9�}h����}خ�]%�*+��:�?�}��            x�}[ko�H��<�-�}9��=�t�H�Io�dK�lE^[�m�(���pf<���Ƃ`�5䐇�t��ӚJ�%.�c���Iꨘ<&��
4��T��8�_�%a��E8H7��D_f�h��?��4��?���nH^a�O�>����d��}
:t�w`�*��4ܧ��'MC���c�{�e����F��9
�1
���ƺ!F_�����_����2G����ث@?�����W��~`��o��߅���xgA�H�>J�zU���-��T^�,g���hq��F!�%����Ǥ���U(�)�Y����T{L!|^am����TTX�=�����3y�eQ��p�N����	ʺA X$�q!��"x�>�*ԏQ��,��3�H���[{^�
87t&l��y�3Zʄ�^hY�>���r�;�	�4��ѡ��(��GyTVZ�8�qF� ��~���Q(��B�֠�?��peVz�eP�n?�|�r?9G�3p�6��o�pF�������Ӱ���P�0]�����
d��1�&x�V|*� y�e�Mw�������@R��U��J�WT]��9M?�j��w!cu���>e�l�c]LLh�Xu��N\��c����y�eхLN�g��I��3R���ОD�F���I��;#��NG��~pn
BK�� ���}�&O���-�>�߽�g�����g8�R�E�o��w��:��\�=��N�����Q�)���Q/�}Q�
/�,��#��3��(���ثƷy-d`�·�0��F�cK�(�>�j:�P��;�ꗋA5F���2�̽вH��7�/����G@��3
��g��xM_ ����Q�4up����+IH�D�LމX)ɌVh��i���^hY���Ƿ_��/NŃ���CX+a�)"�Y4d��3�$���9�y�N��f`����-�LY�&i�є��g}/�,����gE���|}B�>$�+%:X��l��D,��ׅ&Gi'�Ma�Q)�kX[N;c<)�>�?f#]>�в�N~�����h�I�(�ꊈ�-q$�A��1O�Q,]a1��o�>#m�B�I=~�x\œ�Za��"��~����~3���k�v�N����t����b�!�I@���:�pg��I>�^��j���eԷ���������Hx7F$�K��qұ%�oot�q[��a8&��6����*�r��}-�<��Z��<�8����WP���Z˱/$�o��daS�tɒ�7:�M�hB�A��ô3�_�G���b���в�,�\�e;���)"!�5�$�I [��I5�"]HH�<du�kڨgI��wu����RdqDQ-⢊�Z��{}{��q���RTu95�M*Sl��6l�h)Ig�M���-bM���BQDg f=��
=&/���-����z8�����GPHl�2m�#e,"�Ҧ̹��
gehR3 ��]�VQ�F1^M'��y�����ћ���$�D�p��u١A8[,
�yp���lt<�+H<��i[C$�:%��^�LѐFQV�ڥ�~Y�Çŗ�$G�H��漘 �� ���h_��%p	�1^w )�>��PM���p��ZR�do��;._���z�1S�W7n*�<i���1^���z�^����S3��z��RZ��(.�вhqr$>��ޕ�l���X�mۆ$Ą�׍�F'Mu�l�lg�]����S�"�)Jq���Bˢ���Y�7ŧ�ޕ�s��Mۊ$��`���F'!%1�P�m�L]@vVl�K�B�k1����-���>,p5���z�	A�!�A=�e?�h6�g��3�� 7��N��ɡ�M^�
iZ�m����q�"�g�^ꅖQ���y�O�~G��E軤J��$C��M/�t�ɳ�24 �C���r=�1�ب�Bp?N�����|��YI�!�� O�m�;4u��R�$�3�J����N���t�֫Y�Vj!דǑ�Ս�������nw1�l��r �i��בCh��&0{�B��M?�1�=.�z��(!�([/z^hc���;���D$b�WD`�r �
,v4m+<L<�a�f}�&��Bu�8[ӉBŒ-=��Bˢ��;�ėC�t(	���qh���K�����m8�F�h��)��3�K�N��	�(���j�腶Ed�I~���@�a�zk��V�m�6�d���&\}3��R�MJP^��M��0�ը�ŬX���2�7�tԛM���?���q 7|�%��-	\;�I�����l�	��L�|=�J�CN9Y���-�F�����;rPhT��n%�=lk� ��l���e �o�6�T�����.G�\	����$Z��в����u��r��P�eh: i���eN��cl��ƶ�v:a��gDP�9��t
���0��r!��*ͽ�2g��.���n&r­��w�o�m��ʸ������鼃��n;0� ��gc�H֬,�e�e�Ϗ�a��������zXT�l�Jl�ZM�|�����$|��XP�U'U�\�U�WbQuo�v��Y~S���# �0�r�4�䖰V�o34:�6Ϡ�4^��5�;#�^&��P��U5ÑZ1|˖������=���H�7���^���K�m�N�E#�y������A�/�^<�s4�s�U�y����,��ՔM?�@!����Nh+�&�RQ����5�	
�8j
-�6e�9ZFb�M
/�,:8�3z�Ω<�i��m!�io���?x���a�2RG�BC"}���ˀ���׫r$Q5�:{\y���|�e��8vu�Rl�4m���B�l�a �^��>��9�LL��[ة�4�G(�I��h⅖Q�<?�������:NR�8n;�&&�i��lu��K~Ȧ'����q��Sјe:@��O�|�y��'��']��<�C�A�bGn�B�9�0��i��[7 �<'IB
������z��r�ND��B�J�+��t�'"$�|dhə�GM4q���e�F'@�	��er ��ub�.�|�Vr���l�6B�����5��w�� x��Ķ�d�Z�_:�hu����9B+ )�G�T.����|P���mv�j��uwNT_�(x�`Sl�6V24�WhXZmC��������d �]���ZÏ��P����7B������G���DW7mG`���x��4�T2���V��4 ���s���NNf�/4��jʊFhYt_�{_�d�j��G[n:I}��n����}��f�1c*��/����j\��>ĳu-Q�P���`⅖E�я����}����n
�͓6�m�ۥ�n:�lXZ�a��(�Wd��x�"�i�#��s�W^hY�f6%�U�{��{��i�,J�L�����?�:`)�c5	��)�)T��E4g����X�Q�vJ�q��ǣ�_�5J��' ��-���M�����
w�}w	G��$:#�K�EF�`��ITc/������H����J�@�56yR�$�J��L �v  ^°p���Mh);�X'��Q5fӲB���� �B����n��p��;��_%Nㆷ܄�F�����	x]�7]���J3�A�L�$�%E���8/�І��twv�g*�~.�� lƒ��Pz6���YNg�$�N�SR`�լ3��H�}4��0��^h_7���d0��ʬ�k��n�gR�)�02S`?d�3cl�p�?�В�M"U�E5ͫ����n��_�V�n~�  \x�mN3�}�)w�����,�k ��.d%�W�R̋>�f^hY4�6�w�혰�QȂM���!��]8#��dr�ʝ1l6X�v*�Șȧh.�Ѹ��e�4z��|Bnn�8F�0�� �u�wIU:�{�r�ʹ�ٶ��sI�͖0)��&%���a��ی,V�TG�Z����Zfe�%����vt���,���F�0��By#x$���<Ӭ /'�)��X,��1��2��Y�-����\�������H`�������2b`hZ7���ΐ� ��;7a��3b��I�h��h� �RC/�ۀ9��OƧ�n���F @	  ����-�)ټ�M ]�)ؐ��P�f}BwKS��u��m������BP�D6�^�����@�nB��m��Lŧ��_�IL��f5K��5��Ť*�嚠���d�Ƚв������r��V(�� v��%�,N����t֙�y�w�$�NL\-�
Ť7��:/m��EgryX��n���QAE�`R���7�LP�(��(�!���8p �d�N�L)��D�#��1$���\�����JD׽��m��.la��-
2�G��m��x^�j+a�:���x���y���в���K:}���5C�nL�6��y��'���G��s���0�����Z�y?NGs/�,Jp|U\=]����s3fBI�8,*�-؁j�	,͔Kإ��P�!p ��Θ�E�p��8��c�vp�]_��Ň�o�;�u@Hܒ�0	��lF\D��B6dM%�O���s`��ܜdc�;��\�8���>���o�����W����b/l�%���;����
�@3Jo�M}	�JI��)�3��L��m4y�)9:���.�t�T~]��Ǵ���Cec����V7!����9�$ �f#%(Ǐ4]'���d��}}}������3, d�f{�_+%v�Gy�|�g�d(�Md�9/`�N���X��\��Xw(���N�y�[���jì]��� �:u��S94I����nPA6\	3�_x���X��y1h�b�GER/�,���du�V���!"���[o�����Yh1^��x�ޅfg%F9f�=N�z1g�Z���������[ )u6�k	��ToC��m�؀"�3��l��Y��LR5Z�U�(�Ͻ�v���O�vU���"��oݺ�Ac[8���y3L����-�K��酥��t�,)3�/QR�(��FhY�{:?޲$���M3���^����Vv��3��ǆ����t;)�j:.���N��4y�m���Ev�s���+D!z��Ks����ۃ��;�A���n�v�o��N��x�,�tU��������;��7�>1LB�c�������}�����L��f[L}-u1��T�Y�| ӕ�d����ﳷ��'Y xЭ'۽�-����ц?�:ix�Pҳ���7o�!��
�f���1�Bˢ�w}�"�;yB���Ĳ7���G�n6mt��6�lNJ�v �;2/z�4Be_��^��Bˢ���ݛ������-����ʶ/K�=]l�Y^	�)�0�p��.�@�i�$;���@��cV�i�z�eу�����n\ �ar��'^�����H��Vg";�,K�.�Q	��Y�Y-Wz$�j�H�������^�Fʆ# ��vֆ�
!�5ibB���Ħ�@��p�4����c$5����B˘�I����g�� )N�B�͎�|	��F+���,�Ѓ��MX��vI�E�_�k���^:x�e�겝��r��Ƿ�H�Q{�&�m��vB�ק���dP��I�};�
� UZO�b9�s]�6B{���>�?���|�wf'Q�7v(�l�ڤK;vH<Cٖ�&M�e��P���TV���=ZҞX̹�D����ç䷮&�c�m�}�u�vӶ�VG f���$�(�C��t���S9)F���������GO�#�D��u{��M7�!��Й� }L~��0��I	�-CL�$N(*S&�b=�B{�u�Og_���'$MJ��ц���mVaCۦf�3�ړ&9�j�*D6&��)���p���ǑZ�'?O�Xg�O�c���[�Z,;-�4`�\ڧK�s<J`V�Hg�q1Md%S�Y6�B���o����Y�23m����e��bZ��X���љt�c�Hf�҄:���SVW���r<LK/�,:�t�\q>`���I��-���]�"�ʾә�҆ǵ��":%�8[H���Gu텖E������z��B���#m;�`3ZW��
� � �}�s(c�)�3Z���h��2�Xy�}�>��<ة����w�Px1,|>�Ƴ����6QluvՏ�N����$`�'�U�,�(-�l���^hY��]���u|�&cO(�P��@�-]?��jf�H��@�_I��aw���hg�d��br�,���ڻ?w���ŷ��r����G��/�F�	D�o��N��9�˭HbW}ܩUT�eo��G,f�x�6�5����x4���2�kt���u����f7u:�sm�� ��d�:�y=��:�D�{\z�M�g��pp�v�f���Wd��~[�$BC��F�YV�cm��h���Yhf�j�G�tZ��Q��j:���ޑ~spP�ݩ�k>�5g$m�zi���j��Y�uO����%p|ĺ�����v:��J�0            x��}WW[˖�3�
�wK+(���{n?�{v����~�rj09=�@�1���A #��#֒�t�­9+��$�}��A^�Y�j���k�jF]k��il���o
��Bz�����_?^���Br��J�^�a��׾�׭��B2k�K�����5wU|5m-�&��܏��Ykn��+�..��cuZ��o��)��[y;�I�+��w
�kf���\Hn��������w�B�π<�'�QH���d�B���O�$�&>޽��.�,X�k��Lq���|Gh����o��R?Ʉ
�B�S!�)�7
��B�>L���+k�|xc��('�}	����~'O�Ni��!�y8�,K�F�����ĢC]z]���m�+>]H�R�������g�u�ʚ�BF|������J���B��@^j��,��kX�Ԋ�zb/}S׺�&S<\,$�
��LN�vS\�҅����:Y����������lj�sG�� M��޵0��P�NFO�DH���3:�G�����-�C�0��B����/�g�7d�`�RG�����Bzv%�������]!̐�����f���-�]{{�t�mO0�$�	�%��w�uȓ��3�o��� ��
��9��?�N�va)�QX+$��jX��f������:~��������y�rr�4�Jd��ҽk/����s-�,l&L3
�^���mўц�>s�U�h�½ ฐ�"�ɺ����;Np����zc����Bj�t���w/$q���)��)8�@~�Y>�+ADp<���I{�+=N��^f�DȚ�맸���߄^���J�������>,	�}��9�֛_Z䬕�Vʹ��F�ў�#pl�=[5jv�4F�c���\h]R8��U�<q��E�#?�Gx�oQ_Ygk�u������˔��Lg}ޞ�:0@g��l0�*JȻ�e��(_�[x�A�����ӓ֧3���0eOKˏ�[@������K�w֛$P��9�7o��O��;��r[
Yj�N p=da@��(��i�	�=EA�Ȟ�f�m��N%�0���������.�ȥ?��Y���.n^���;V�3J!�GY\�s\e¡;(.f���u�R(޲�x��7p�RpT��)��X���� 痬�B?q��|�Z��e5��Ǚ����w��.9�wp&�6�ǒK��IbC�"��l��5�pR�p����)QN�-�ey��2�Z��z�i�k��h��������Ѯ>f.�Ӆԩ��b~��<�a��BQ���t�sɚ�A^��������1�U��p�p��#�9��l F'��/��:����7?`K��ApR�jb�����YM������ ^�|M�F�Tx��i�{rOD .��H��4�||�)�M
g
�T]� -��pƴ8�V(����t�ll�i��7뭣1wkV�l}�>�"s�� ��{V~���mP�D��3��@8�rj}N;��:anj��
�PV�����^#���	YV�]ԣ@�B�S�����c7�/NM�7��f�3��d��V�j��~
?� �B1f�D�"�M�u�zC��y6������tB弰�)���X���Yf���	����&J;(���B��/��>��wrd�,���P2�<��*r�Ptf��3+-N�C��/g4�����.xQ�UOe�ޓY����[���o]�Fj��s��#�)1�񌬾ALo��Yk1;eo�y�#������w ;�`��]����<2�-���K�竜}S�^,���D��.�|g��{|�j��Uwx�LH�Ofka����}�28U:ɬ�����Є8��K�:._��-��W�빿y��#w�$�B��X�#��ٮ�u��-����ďP��q�GL�7Y܊�x��q:�d`����Jx��!M�AY\��'�5�WGS�ˁ���D���C�����&W�yy�Pap�"�?^�7��2�������_�������g���ס��~��-�C2���Dybřk٭�8�� ���[C��@d<�0֨��y����`g���y{g�񩀵��t�X���E�zV�kx\���$=�H�-��p!�2j���CL��w���:D�Y7��$A��ߡ�>PVS�"KO��������U��_����]���_��
��x��_邊��k'��_:@���P�L�_s�N	i'�5�������V���hreP�'�O��\F����\��\Ωޚ�,D6�L�c���yk�����1����PX��%ǅ�wSQL�Y�?���\��R��hۙe�X����������9�/�v�����GQjh^P
������Q�Lb�g ��ǌZ��畲���\��sT�+\�:DU���44"���h[Ө��Q��H�����G�0��,���F���b�3V#�e?Y������!��}a���2vUu���	��(fȼ=;O������Gx� �j���Ě����H�ptl�_�@V��>�pN��m�w���ۙ�����ogM�$	�V9�O�p�p��-@9�f�ʤpnqq/ k�V\jE2,�1����dMf=�&t�~&4�ф��66w�(�)���1T�t9��ɥ�i{�TQ��{��4����6<,$�l0�G�|�凌�]4t9��|�|��T�qn�J`)�̎Ƭk�c��*T �_�5Φ�@ި��⑄�����7�>Gf8B�Ҡ5w�}�=�"�٨���	+�@��^�$.��t\����Tm`ܤ�֍u�������[!���c�,Y_&�)�:�+W����<<��8E8�;n,�E�U�$Xʓ�Ż�vGK��P�(��o�ޥo��Y�3�?� ��LC��ӛ8��)�V�3#aĈz���G�"�Ƙl�P�N���|��^�5f��A9�?�d���9y��'J?.Lɪt�>2Kc!�,�f�����k�-����:�q.�8�h�{<'�n�荏�Ecۑ6�D��ő��D������Az�	� ���Lu�F��q�pY4PnQ���F�Q6�ga�Y8��#�p��G3�h��_7hƢFsW'ٸǛ�,2�"����W"-('��:Q����@% ��AQ27��������'r��v��M:>5ne�ͥl��If��Y	�)�<�_})�x���E**�CE���L��g�(�F����<>�߭D���'���ɽ��"ƙ)�����R��^?���̤���JqNf�� I@�L�@j\��)<����ĹUL�x�E�#�n	�C�;�@�+����n�"륇Ir�5ǧ�� ��dĆ�?��	]O��hіFY�A�S>�oQ�o��� ����* ��Vmt������ �1 ��˟�@!�R:صϮ]&C�荵��	�%�?+YyeL_�NL N�@f��/�{@7	<�_��(����a�B�M0�FzF[��ᱎV�f3�,F�7U$\N|��S��Á�p����#,�)`l؜���\q��{�9c�i�hG�'����慬�d��!��),�d}q��� "6�g�;K�h����y5!�3k��
���q���fG_K��� �-�79s���:c�<e����O�ş��;��������k�������t<�/��]vr_:<F���p���y�~�y�z����H�	�サ��ҧǖ�b�a�ċD�5��w`���%�[a����a�Ţ܄}���F[��8+�k����Nf��;r��� kA!)<Ƃz"$�Cj�Zp��̙�F��Ek6�����\b����y���~���& � &�b����1�T�d}���py�Ď�C��tz����<3t�+C��XSG�A��ѥN3��|96U�ޒ��'[2�d�}�~^�Bd0������%��if�^ۥ	QҚ2�[�h�VB��Ģ&NX(o��:.�f�N�,%3R�e�8{�a���%sR�վ{;��.lX�p߅����0��Q�4���kkS���WƗt-K    G��M��Pޕ~�[�4z�C[��Ҩ7���G+̨�8�(,�Qf�W孩�,��S���E�xW���֫mk�����B�3�^�,�?� ���Kv$Dl�֪o�Zzǌv���$���{E�/� ��Vĥ�6�����>�r��p_샷��I.���ш��L,L^T�U��@������x�h��)��jaBT�ǉv@�ww�)���7EU����&	~.�����0���}\�t���2|�����U��o"���/�'�f
���a�3��!?0�t��"�8:�((W|�2i>ܮs�Jy��E��ņ?��G�ˈ ��m4�77�Sh�����x1w�s<�}D}\D���z)��$�6��/��*�d�,X�߭�k.~��]۬Y�wJ
�EL�p�q��0��d}��xd���P�3�@~a�����}�� �_9�YY8��#4�,o���K ۋ�d�,��?e9�&�㽃�����Qm��3ѝ��3	���ŭ9����H��F�0w�k-���¨��ɺrvэN��=�t�H'&�X�u�te�
�e2���\��8*��F�4 �l���=uM���恈;��+��[��?��p��y�'A�)�?w��?�!#PU�5Q���3d��?i�G��p%7��Zc�=q��$�����~�a�ko�
���U�Eg�ra68�q����Y��҉C��l�F�(�;�uBy��#]�M#}���Oq�&}��"��/�ԛ\�'�dQ�	E�ĭ���mqP��/�+ .zB���O/|m��Sa��A��Iװ.�ۿ|q=L������gyA�4�Aǘ��0P����H�mX-RP�<X����qe�
����o9������ ���[���eO����n��D��l9�~:�����-� �s�9d5���b�x�P�Y�tm5�n�iK,�P}������ޤ:�U2	���L�︳
h����Hl§e)8c; {��	O4�Z�bD��>�{6�P)ΰ,��L=��!�$�/�����!�;�<D�i�p�2��9��+��Zwg�mT_�_]T�&$fȦ5!w��~KLhh�h��(��(o_X�����V��R4]�Sr�;/�m��"0��Ȫ�[n���]�0�DLgljo�^���h:���FUyؚ�
�D>i�k�\ 
ź��QB(�0�L6���P|���u��ެ@
Á�1JlN�h�a*YT���z>On�/����y�<e�}ם�,U�p�����{�W]ϋ?؎�;�S�d{��X]�>/��tm��5O`XCkMO���9���ɞa�~��nh��r"�J�Ql���<P�)�o��稯�a��K�<��L��4~<��/^�[NwyBl�fPgT���Ɨǻ7X&qHJ�0k���}Ȍ�dV�W��a�b<a�X�U�9����8���|�@j,���؝��Z
]y�Շg�6G��e�=}��{��b�Y�i G����gx��P��X"K�clpe�o2�mv������X<��[̞eL̀h~�p�4��w�����c�����
�J���0WZ�j'�H�ZϢ���-N9��#��(u���A�� C�N?ެ�r7Fׄ_ܼrN�HE���H��@u�Tp,R�������ܴ����h�o�sx��U��o�X��z���;������b��8-~�=���x��x���8��y!΁\���� ҽ�&����+�Py$�x��L>�`nX������-�3a�d���R��^a�1�B�4<�vb"�f�D(�0����������(8�Y&+��y�8����ZrV�3��

w�h>h� f���,UI�7k>I���:�0� ji����C}����
�\շ,~!-����h�g��0��G�����I��Z��"��������TR-\1H';+�� .�����"���xo��{<0�;�a=���)�k��Em�+��������Z�)�Jg�f���
����
�=�J��!A�O@T�B�.��U��ppZ�j�E�z��;B�����\��v0܆f�m�f���Pج�'5Ӥ��'&�|�R�$�(�{G8, 4��\����	?WzX%�J�V�7�:?��/�,(Nz`Ѧu�T�\tq�5[Yl��{�b������0�	��H���nv�;=kG�Z3<��
�����n���3�Ȓ�� �+�a{�0]�6�>ca���Ķܼ��ů��u�Ȅ<Ga��ư�o��Z{!0o�N��h�]3��8����E뇍�Ho��Q�kSȘ���RR��Xi����r�k� .�Z�'�xg�p�h'�q�%�x��QŢ�r4,"^f<�c
������7u'�p	e�m����?I��@@��x���R���W�V&�[ĀN��T5TmX�m��)lƔ��	\I�PIڜ�X�)�گv Ge��!�7�RP*��#='X�x�yo�A`<�`�"g1�Xʨշź�����6rL�ЉF�������BfD���'^��_�^mx*;D��Q�R�H`1�Օs2���y!_��m�`(�<EhA8G\�&�����7W���PD�/��6��&	j�@�GF�[�ͨ3���Xko0}�S'����h����~����޹&�s�����)�1R:܇�.���u��b�y�@�3=հ^g��x����1��'��� f�����
�Dg D�Ϩ=!jo�L���������y@�~;��PZ8V���Ƃ~q�U�Q�n`Y�D(Ns��"�nw��ky[�\��X��̊<���������سgX�[-M�f��L�4�g��B��:a>��=�k��<8�Q�}�ގ- `��|z=�$!a���!��T���'V@I�ɳ�0�׻Z����
��E�X�����T�F�~�)ڼT�٪��+�S�7�jvIm��2�3c�O�[�؇��JC�&�Z�6D��ɕ�9]��Jߨ�!l�����Q��E��"&0�Q߫74�E�YI'>�i���gp����ʁ[U�wQ��Gm��ŷ� ����
�-�_i �,5��!����\�u���z-,R�T�C�3L��а����5���Sg9x�̗U����J�r`Y���U�����JE�ĳ�^-d��*é�d1����(] �
Zަ��#͍jd�'�D(*j��Ñ�n�����p�O���n��wA��d�x�Y�u��G��g_Kb��tGad��XC��ˈ�����`S�#;�$���
���*wb��Q�u��Q#��ȫHd��$��wXZ���HlY	��x���*�D���X�=2ft��)�6d�N��Ǉ�����;R�e����"��WJ�}w���mH����|��ؘ Cuf�5+�	�!H�6�m�uv��+q�@@�Az��-�0l]r�N�Y�'�w�	p��o����r�����'�����΂K���"����pO+T]1n��Q� �b�!�7֥w��Y+eZ2�(8���+����<K5�M�f�O&���\y�TP{Հ��>��PRA-����j��� � ���&��Қ���bq5W��-n�b$��_Q-�Q�A��W��VT*`�HJ5�N(ˀ����6��rr�{�`(_�=��і��,��r*�\q�kMw���芶u�56�?���ҚVXA�ao�}X��N��Ą%�*M�㡸x�!\y
*z����%�u�<��&���/�}_?_vØMA���.E�U�'A�C�4���v��=�@��,�m���a��i���B��i�_��w`K���L����8�j���Ɵ#E�}Hl��s��H����̧I���)u@`�I����=�(d�L�-a���h�`��[�*��<H �A!=5�ƧSd��)W{� �Wv�j���l�����/e�q����He�����O�ᇙ���ne�6���`vl���l��nU��\`��^0� '	���o�i�Y���ۣ�B��B
�=���G"�DwH�0hdN���|�@�/��0�{fuP4���675�s��[h����p:� _  �w�BQ�|xg>V/{��t�PA�W#�v��]����P�`Mf�bZ�J18�5X%�����Ȍ�F�w|��σB��"�J�Mfq��D���r�K��El	/�K�*hHyĐ�lX��l�ȃ1L�Ō#"�9��u~��'4�~,>Dܐ�����`�-�دB:N�>����˅�p��YA�l�zs|��6R5��3�[x�D��ʧXb�6Q�!P�~�a-Q�6I�2�������Ī�Ca�bh{Ǡ#�h!��0�G��{�Ʈ�H�;���դ|���1�5���/�ŵ<��)��`�k�&�%�b�W�FU����[��m[��y�3է���'���4CKYg^Ec|�N�|���2�VG	�!L�Z�psWT�A ȃd��*"u������hA(�(��%?үq�0];���9k�� 4�EsM��,�UÛ* &PơJg@ �͑����Q��-e�~cW���_�V!>P���R
P�5�Y�%/��Rc�'Ď�|I_��@'0��'ϻq)����UGW�VC&6Q%���#�C�fϠ�N,�N*�a	�0�S��L�6���ֿ�n@��?A����,fZ�$)yʧEմt�t]�o�8�@��坏գq�"5�s�leiz}��9���񉄩������+�����z���ҵN2	m��@:?�FRamb�����	��O�.���P��w@RN�>����P�e��W1}M�7����q�S5�<�R�4T�7p2눷�~����f�{_��Y��ܾ���/ ��+i�IG�Z}�sA9 ��E�6:SQ��T��U�F�%c�i����2>��q�mZP�Ɔ&RP���ȸ��C�PG���QpG�Eޟ~��Og��j.�",7�N��0W/�85���k5l��i%�=BQ��XOg�p�.!̼�)���tј�Y���W/r��ٙ�����y+�}�˃�0��{?E&02����C�V`X(j!�>��B�%� ���z�Na���E���Ұ�d���V}���jRE�G��X����[�Sr��O_U�QJo~)o������6t[T∂,!�.!�f͞3�?��f�1WW�]�|ˏ���2;"���pc��h �����0䉘eh�,7l��+���3 �C�}�� Zj��j$(��������UW)�0�99���J��E��LA���Z@y��қV�b/C��H��n\p��Y�mt���������M dYx�&���`�Y��.(5�th��;�/�Ua�t�HN��ޮ���rT��3ˀ H�U1:�r�N��,R�	���������9�5��h"�U��FC��exDnipeH��	s�H��r �'��A�?A��*ש%��K�'������o|�V_���.0ȱ #�Ȭ���Ͱ�5:�کL~�Kz�4�x}�95�z�+�W��a��r�P&0m��87N�|�!|��(]>��_��f&��0�+�Q���5���ϙ{Am��d�S(�C{�C����9��Ө�s��^V�s?t�aq���+�S��w`�!dY��rO
���^�+e�ŝ���m��/�C�
�6M"�:����v�k`�Esź���+���'�i�f2��]W8��\.��$<���opY���<A�H��Y���6��Kw�J����J�G޳O3�Z�q#J�������	���-�"o���*>*Q�2���T!����!�V�'��0w�79r���4��<�h��u��̄����V��%ңb�AU5]�#�=y!t�#zЍ@�L����pկ�|i�t)���vb;�|U�\��ᅹ���
11;1l7a��m��qd��s�-ܳ�J��Y��+Y�:�(TW�>��t\X~�[�@���[5�rH\�05徵��J�7{��o?A= T&[�-�w{x�[Ů�p�������'ڝ���2��5A�RiQ�oYF�W���z���{*��@����[n���Έ���N�8�,9S�k����T��C��W� �l�m���F�G[�N�޾#�m���`_�=8)��_��l�w�U)7�h������{ �ŵS���Wr!+��-�Iƹ��9��K4L�������$m-Z?i5[��&��)WB�t�@��f�R�R��L��GlOY���XC��楉(���ܩ�M���H�b��w6)H^%�?w�A#��v��X�h�rۈh��P��c=N��0�����6&�u�;dam��+��B�u땓��|ו��3���	ת��T�KԘ�3�0�ɫ��53:���ϋB����J��:��S$�-L���8�t�P����?)������yTm�?_�ii�
��{l4�/�Ѫn�ջ��$�I��BA؄�����V���K5����ȳ�_��8y"5H��KЍ�R,\��- ���P�ʂ؄�t�!ĵ���f���� ��*]�v��"�K��xJ����*��@Dm2��"#C��Uh&鐨�GHb�[�ڃ���Ik1�GZ�u�z�]3G]�*��X=�h�y�g=O"�3��2/P���~�mR�TIL�eE8�='�i��<�~e�.a{�Q[��L��"�B{}���١u�!��{A���AB�<�iv���A��u2Lf��q�{�F5Щց�����%��Br�<����a'T��O�p�L�a}��2��{g$���4��矻�gX�b	�8-W�� <�#��~��[=@m��Ʈ\X�.W�
{p+$���wh�m*��ϫ-+q4���B���GGZ�;��H�+&�U�9�,YW"q�g�t�3r̀'��L�Y�(�E�f��Ykynx�ŷ.���Zl�"��[��Dz+�������	�d�9�:��D�r�
���[�;]��V�ro�m_|OO��`J��a���<������\K7���L\Cc���5��X������:��<3����%|�uD������5���ޏWKW%"��jr��mk3�l�Xb!%^���bO$��S����Ck'/ZG�8�n�o�;��Mc�j%�x����Dk�SPHb�t�-��t�O��� ��W��v�I��,�z�d7�JҜ�G��)��7n}H]��A>͹�!���Ģ���?����f	��         \   x�+(-J�H,N��L�700�/I-.�420��50�50�44�2 !�����Ҽu(bF1S�b###]CC]c�`1���p1�=... �:"Z     