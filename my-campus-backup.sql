PGDMP     "                    {        	   my-campus    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16978 	   my-campus    DATABASE     m   CREATE DATABASE "my-campus" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "my-campus";
                postgres    false            �            1259    16986    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    postgres    false            �            1259    16979    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    postgres    false            �            1259    16994    student_omegas    TABLE     �  CREATE TABLE public.student_omegas (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying,
    phone character varying,
    year character varying,
    hometown character varying,
    high_school character varying,
    instagram character varying,
    snapchat character varying,
    highschool_activities character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 "   DROP TABLE public.student_omegas;
       public         heap    postgres    false            �            1259    16993    student_omegas_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.student_omegas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.student_omegas_id_seq;
       public          postgres    false    217                       0    0    student_omegas_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.student_omegas_id_seq OWNED BY public.student_omegas.id;
          public          postgres    false    216            w           2604    16997    student_omegas id    DEFAULT     v   ALTER TABLE ONLY public.student_omegas ALTER COLUMN id SET DEFAULT nextval('public.student_omegas_id_seq'::regclass);
 @   ALTER TABLE public.student_omegas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                      0    16986    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          postgres    false    215                    0    16979    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          postgres    false    214   `                 0    16994    student_omegas 
   TABLE DATA           �   COPY public.student_omegas (id, first_name, last_name, email, phone, year, hometown, high_school, instagram, snapchat, highschool_activities, created_at, updated_at) FROM stdin;
    public          postgres    false    217   �                  0    0    student_omegas_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.student_omegas_id_seq', 2, true);
          public          postgres    false    216            {           2606    16992 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            postgres    false    215            y           2606    16985 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            postgres    false    214            }           2606    17001 "   student_omegas student_omegas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.student_omegas
    ADD CONSTRAINT student_omegas_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.student_omegas DROP CONSTRAINT student_omegas_pkey;
       public            postgres    false    217               ?   x�K�+�,���M�+�LI-K��/ ����uLu�L-�LL������M,���Hq��qqq ��v            x�320260525�4154����� (��         2   x�3��?0�id`d�k`�kd�`hiebaed�gnnfnj�G�+F��� �oY     