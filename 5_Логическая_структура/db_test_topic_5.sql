PGDMP                          y            test    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    20265    test    DATABASE     �   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE test;
                postgres    false            "           0    0    test    DATABASE PROPERTIES     :   ALTER DATABASE test SET search_path TO 'postgres', 'app';
                     postgres    false                        2615    20267    app    SCHEMA        CREATE SCHEMA app;
    DROP SCHEMA app;
                postgres    false                        2615    20266    postgres    SCHEMA        CREATE SCHEMA postgres;
    DROP SCHEMA postgres;
                postgres    false            �            1259    20278    ap1    TABLE     2   CREATE TABLE app.ap1 (
    id integer NOT NULL
);
    DROP TABLE app.ap1;
       app         heap    postgres    false    8            �            1259    20283    ap2    TABLE     2   CREATE TABLE app.ap2 (
    id integer NOT NULL
);
    DROP TABLE app.ap2;
       app         heap    postgres    false    8            �            1259    20288    ap1    TABLE     :   CREATE TABLE postgres.ap1 (
    my_id integer NOT NULL
);
    DROP TABLE postgres.ap1;
       postgres         heap    postgres    false    6            �            1259    20268    ps1    TABLE     7   CREATE TABLE postgres.ps1 (
    id integer NOT NULL
);
    DROP TABLE postgres.ps1;
       postgres         heap    postgres    false    6            �            1259    20273    ps2    TABLE     7   CREATE TABLE postgres.ps2 (
    id integer NOT NULL
);
    DROP TABLE postgres.ps2;
       postgres         heap    postgres    false    6                      0    20278    ap1 
   TABLE DATA              COPY app.ap1 (id) FROM stdin;
    app          postgres    false    206                    0    20283    ap2 
   TABLE DATA              COPY app.ap2 (id) FROM stdin;
    app          postgres    false    207   *                 0    20288    ap1 
   TABLE DATA           &   COPY postgres.ap1 (my_id) FROM stdin;
    postgres          postgres    false    208   G                 0    20268    ps1 
   TABLE DATA           #   COPY postgres.ps1 (id) FROM stdin;
    postgres          postgres    false    204   d                 0    20273    ps2 
   TABLE DATA           #   COPY postgres.ps2 (id) FROM stdin;
    postgres          postgres    false    205   �       �
           2606    20282    ap1 ap1_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY app.ap1
    ADD CONSTRAINT ap1_pkey PRIMARY KEY (id);
 3   ALTER TABLE ONLY app.ap1 DROP CONSTRAINT ap1_pkey;
       app            postgres    false    206            �
           2606    20287    ap2 ap2_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY app.ap2
    ADD CONSTRAINT ap2_pkey PRIMARY KEY (id);
 3   ALTER TABLE ONLY app.ap2 DROP CONSTRAINT ap2_pkey;
       app            postgres    false    207            �
           2606    20292    ap1 ap1_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY postgres.ap1
    ADD CONSTRAINT ap1_pkey PRIMARY KEY (my_id);
 8   ALTER TABLE ONLY postgres.ap1 DROP CONSTRAINT ap1_pkey;
       postgres            postgres    false    208            �
           2606    20272    ps1 ps1_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY postgres.ps1
    ADD CONSTRAINT ps1_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY postgres.ps1 DROP CONSTRAINT ps1_pkey;
       postgres            postgres    false    204            �
           2606    20277    ps2 ps2_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY postgres.ps2
    ADD CONSTRAINT ps2_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY postgres.ps2 DROP CONSTRAINT ps2_pkey;
       postgres            postgres    false    205                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     