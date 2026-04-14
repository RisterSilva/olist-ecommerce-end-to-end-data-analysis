UPDATE ec_geolocation_dataset
SET geolocation_state = 'SP'
WHERE geolocation_city = 'Sao Paulo'
  AND geolocation_state != 'SP';

UPDATE ec_geolocation_dataset
SET geolocation_state = 'RJ'
WHERE geolocation_city = 'Rio De Janeiro'
  AND geolocation_state != 'RJ';

UPDATE ec_geolocation_dataset
SET geolocation_state = 'SP'
WHERE geolocation_city = 'Campinas'
  AND geolocation_state != 'SP';


CREATE EXTENSION IF NOT EXISTS unaccent;

ALTER TABLE public.ec_geolocation_dataset
ADD COLUMN cidade_tratada TEXT;

UPDATE public.ec_geolocation_dataset
SET cidade_tratada = LOWER(
    unaccent(
        TRIM(geolocation_city)
    )
);

UPDATE public.ec_geolocation_dataset
SET cidade_tratada = REGEXP_REPLACE(
    INITCAP(cidade_tratada),
    '\m(De|Da|Do|Das|Dos)\M',
    LOWER('\1'),
    'g'
);

ALTER TABLE public.ec_geolocation_dataset
ADD COLUMN tipo_localizacao TEXT;

UPDATE public.ec_geolocation_dataset
SET tipo_localizacao =
CASE
    WHEN cidade_tratada IN (
        'Rio Branco','Maceio','Macapa','Manaus','Salvador','Fortaleza',
        'Brasilia','Vitoria','Goiania','Sao Luis','Cuiaba','Campo Grande',
        'Belo Horizonte','Belem','Joao Pessoa','Curitiba','Recife',
        'Teresina','Rio de Janeiro','Natal','Porto Alegre','Porto Velho',
        'Boa Vista','Florianopolis','Sao Paulo','Aracaju','Palmas'
    )
    THEN 'Capital'
    ELSE 'Demais Regiões'
END;

ALTER TABLE public.ec_geolocation_dataset
ADD COLUMN regiao TEXT;

UPDATE public.ec_geolocation_dataset
SET regiao = 
CASE
    -- Norte
    WHEN geolocation_state IN ('AC','AM','AP','PA','RO','RR','TO') THEN 'Norte'

    -- Nordeste
    WHEN geolocation_state IN ('AL','BA','CE','MA','PB','PE','PI','RN','SE') THEN 'Nordeste'

    -- Centro-Oeste
    WHEN geolocation_state IN ('DF','GO','MT','MS') THEN 'Centro-Oeste'

    -- Sudeste
    WHEN geolocation_state IN ('ES','MG','RJ','SP') THEN 'Sudeste'

    -- Sul
    WHEN geolocation_state IN ('PR','RS','SC') THEN 'Sul'

    ELSE 'Outro'
END;