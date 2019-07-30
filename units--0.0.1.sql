-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION units" to load this file. \quit

CREATE TABLE units(
msr text NOT NULL,
uin text NOT NULL,
niu text NOT NULL,
mop numeric NOT NULL
);

ALTER TABLE units ADD PRIMARY KEY (uin, niu);

CREATE FUNCTION unitsConvert(
    fac numeric,
    uin text,
    niu text)
    RETURNS numeric
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE
AS $BODY$
DECLARE
    mop numeric;
    ret numeric;
BEGIN
EXECUTE 'select mop from units where uin ~ $1 and niu ~ $2'
    INTO mop
    USING uin, niu;
SELECT fac*mop INTO ret;
RETURN ret;
END;
$BODY$;

-- length units
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'kilometer', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'meter', 1000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'centimeter', 100000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'millimeter', 1000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'micrometer', 1000000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'nanometer', 1000000000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'mile', 0.621371192237334);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'yard', 1093.61);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'foot', 3280.84);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'inch', 39370.1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'kilometer', 'nautical mile', 0.5399568034557235);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'kilometer', 0.001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'meter', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'centimeter', 100);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'millimeter', 1000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'micrometer', 1000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'nanometer', 1000000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'mile', 0.0006213711922373339);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'yard', 1.09361);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'foot', 3.28084);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'inch', 39.3701);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'meter', 'nautical mile', 0.0005399568034557236);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'kilometer', 0.00001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'meter', 0.01);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'centimeter', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'millimeter', 10);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'micrometer', 10000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'nanometer', 10000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'mile', 0.00000621371192237334);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'yard', 0.010936132983377079);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'foot', 0.03280839895013123);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'inch', 0.39370078740157477);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'centimeter', 'nautical mile', 0.000005399568034557236);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'kilometer', 0.000001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'meter', 0.001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'centimeter', 0.1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'millimeter', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'micrometer', 1000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'nanometer', 1000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'mile', 0.000000621371192237334);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'yard', 0.0010936132983377078);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'foot', 0.0032808398950131233);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'inch', 0.03937007874015748);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'millimeter', 'nautical mile', 0.0000005399568034557235);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'kilometer', 0.000000001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'meter', 0.000001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'centimeter', 0.0001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'millimeter', 0.001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'micrometer', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'nanometer', 1000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'mile', 0.000000000621371192237334);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'yard', 0.0000010936132983377078);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'foot', 0.0000032808398950131235);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'inch', 0.00003937007874015748);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'micrometer', 'nautical mile', 0.0000000005399568034557236);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'kilometer', 0.000000000001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'meter', 0.000000001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'centimeter', 0.0000001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'millimeter', 0.000001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'micrometer', 0.001);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'nanometer', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'mile', 0.0000000000006213711922373339);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'yard', 0.0000000010936132983377077);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'foot', 0.0000000032808398950131233);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'inch', 0.00000003937007874015748);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nanometer', 'nautical mile', 0.0000000000005399568034557235);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'kilometer', 1.609344);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'meter', 1609.344);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'centimeter', 160934.4);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'millimeter', 1609344);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'micrometer', 1609344000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'nanometer', 1609344000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'mile', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'yard', 1760);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'foot', 5280);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'inch', 63360);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'mile', 'nautical mile', 0.8688097306689835);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'kilometer', 0.000914400249448388);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'meter', 0.914400249448388);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'centimeter', 91.44);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'millimeter', 914.4);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'micrometer', 914400);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'nanometer', 914400000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'mile', 0.0005681818181818182);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'yard', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'foot', 3);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'inch', 36);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'yard', 'nautical mile', 0.0004937364592776043);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'kilometer', 0.0003047999902464003);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'meter', 0.3047999902464003);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'centimeter', 30.48);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'millimeter', 304.8);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'micrometer', 304800);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'nanometer', 304800000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'mile', 0.0001893939393939394);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'yard', 0.3333333333333333);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'foot', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'inch', 12);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'foot', 'nautical mile', 0.00016457884684539383);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'kilometer', 0.0000254);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'meter', 0.0254);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'centimeter', 2.54);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'millimeter', 25.4);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'micrometer', 25400);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'nanometer', 25400000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'mile', 0.000015782828282828283);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'yard', 0.027777777777777776);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'foot', 0.08333333333333333);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'inch', 1);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'inch', 'nautical mile', 0.000013714902775191375);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'kilometer', 1.852);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'meter', 1852);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'centimeter', 185200);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'millimeter', 1852000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'micrometer', 1852000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'nanometer', 1852000000000);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'mile', 1.15078);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'yard', 2025.37);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'foot', 6076.12);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'inch', 72913.4);
INSERT INTO units (msr, uin, niu, mop) VALUES ('length', 'nautical mile', 'nautical mile', 1);
