

CREATE TABLE geo_data (name varchar, geom geometry);

INSERT INTO geo_data VALUES
  ('Home', 'POINT(-118.28315771425873 34.032761983504216)'),
  ('LeaveyLibrary', 'POINT(-118.28293573145733 34.0213496719935)'),
  ('SeaverLibrary', 'POINT(-118.28871446159208 34.01982777846295)'),
  ('EdwardLibrary', 'POINT(-118.28435716542282 34.02046810039327)'),
  ('FountainViterbi','POINT(-118.28907921956984 34.02048162792673)'),
  ('FountainLeavey', 'POINT(-118.28352200183541 34.02062273349685)'),
  ('FountainVillage', 'POINT(-118.28501160848721 34.025249088483)'),
  ('ExpressRestaur', 'POINT(-118.28624871571253 34.02026887789436)'),
  ('VillageStarbuck', 'POINT(-118.2843681741918 34.02440933589407)'),
  ('CafeDulce', 'POINT(-118.28497386948189 34.0251220006516)'),
  ('EntranceMcClintock', 'POINT(-118.28721933961351 34.02487201625711)'),
  ('EntranceDowneyWay', 'POINT(-118.29130036159148 34.02195935314328)'),
  ('EntranceWattWay', 'POINT(-118.28906456258004 34.01856850430744)');



--CONVEX HULL
SELECT ST_AsText(
    ST_ConvexHull(
        ST_Collect(
            geo_data.geom)))
FROM geo_data;


--Output:
-- POLYGON((-118.28906456258004 34.01856850430744,-118.29130036159148 34.02195935314328,-118.28315771425873 34.032761983504216,-118.28293573145733 34.0213496719935,-118.28352200183541 34.02062273349685,-118.28906456258004 34.01856850430744))



--KNN
SELECT v.name, v2.name, ST_Distance(v.geom, v2.geom)
    FROM geo_data v, 
        lateral(SELECT * 
                FROM geo_data v2
                WHERE v2.name <> v.name
                ORDER BY v.geom <-> v2.geom LIMIT 4) v2
WHERE v.name = 'Home';



--Output:
--"Home"	"FountainVillage"	0.007738250151692222
--"Home"	"CafeDulce"	0.00785288213224029
--"Home"	"VillageStarbuck"	0.008439901382647679
--"Home"	"EntranceMcClintock"	0.008874028605032662