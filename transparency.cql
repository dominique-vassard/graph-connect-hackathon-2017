LOAD CSV FROM "file:///Cabinet_Office_Ministerial_October_-_December_2016-_Gifts.csv" AS line
WITH line
WHERE line[1] <> "Date" AND line[2] IS NOT NULL AND apoc.text.clean(line[3]) = "received"
MERGE (p:Person {name: line[0]})
CREATE (g:Gift {name: line[2]})
CREATE  (a:Amount {value: line[5]})
MERGE (giver:Giver{name: line[4]})
MERGE (p)-[:RECEIVED {when: apoc.date.parse(line[1], 's', 'yyyy-mm-dd') }]->(g)
MERGE (g)-[:FROM]->(giver)
MERGE (g)-[:OF_VALUE]->(a);

LOAD CSV FROM "file:///PM_David_Cameron_Apr-Jun_2016_gifts.csv" AS line
WITH line
WHERE line[1] <> "Date" AND line[2] IS NOT NULL AND apoc.text.clean(line[3]) = "received"
MERGE (p:Person {name: line[0]})
CREATE (g:Gift {name: line[2]})
CREATE  (a:Amount {value: line[5]})
MERGE (giver:Giver{name: line[4]})
MERGE (p)-[:RECEIVED {when: apoc.date.parse(line[1], 's', 'yyyy-mm-dd') }]->(g)
MERGE (g)-[:FROM]->(giver)
MERGE (g)-[:OF_VALUE]->(a);

LOAD CSV FROM "file:///PM_David_Cameron_Apr-Jun_2016_quarterly_returns_.csv" AS line
WITH line
WHERE line[1] <> "Date" AND line[2] IS NOT NULL AND apoc.text.clean(line[3]) = "received"
MERGE (p:Person {name: line[0]})
CREATE (g:Gift {name: line[2]})
CREATE  (a:Amount {value: line[5]})
MERGE (giver:Giver{name: line[4]})
MERGE (p)-[:RECEIVED {when: apoc.date.parse(line[1], 's', 'yyyy-mm-dd') }]->(g)
MERGE (g)-[:FROM]->(giver)
MERGE (g)-[:OF_VALUE]->(a);

LOAD CSV FROM "file:///PM_returns_Oct_-_Dec_2016_Gifts.csv" AS line
WITH line
WHERE line[1] <> "Date" AND line[2] IS NOT NULL AND apoc.text.clean(line[3]) = "received"
MERGE (p:Person {name: line[0]})
CREATE (g:Gift {name: line[2]})
CREATE  (a:Amount {value: line[5]})
MERGE (giver:Giver{name: line[4]})
MERGE (p)-[:RECEIVED {when: apoc.date.parse(line[1], 's', 'yyyy-mm-dd') }]->(g)
MERGE (g)-[:FROM]->(giver)
MERGE (g)-[:OF_VALUE]->(a);

LOAD CSV FROM "file:///Prime_Minister_Gifts_January_to_March_2016.csv" AS line
WITH line
WHERE line[1] <> "Date" AND line[2] IS NOT NULL AND apoc.text.clean(line[3]) = "received"
MERGE (p:Person {name: line[0]})
CREATE (g:Gift {name: line[2]})
CREATE  (a:Amount {value: line[5]})
MERGE (giver:Giver{name: line[4]})
MERGE (p)-[:RECEIVED {when: apoc.date.parse(line[1], 's', 'yyyy-mm-dd') }]->(g)
MERGE (g)-[:FROM]->(giver)
MERGE (g)-[:OF_VALUE]->(a);

LOAD CSV FROM "file:///prime_minister_gifts_returns_july_to_September_2016.csv" AS line
WITH line
WHERE line[1] <> "Date" AND line[2] IS NOT NULL AND apoc.text.clean(line[3]) = "received"
MERGE (p:Person {name: line[0]})
CREATE (g:Gift {name: line[2]})
CREATE  (a:Amount {value: line[5]})
MERGE (giver:Giver{name: line[4]})
MERGE (p)-[:RECEIVED {when: apoc.date.parse(line[1], 's', 'yyyy-mm-dd') }]->(g)
MERGE (g)-[:FROM]->(giver)
MERGE (g)-[:OF_VALUE]->(a);

LOAD CSV FROM "file:///Whips_Commons_ministerial_data_Oct_-_Dec_2016.csv" AS line
WITH line
WHERE line[1] <> "Date" AND line[2] IS NOT NULL AND apoc.text.clean(line[3]) = "received"
MERGE (p:Person {name: line[0]})
CREATE (g:Gift {name: line[2]})
CREATE  (a:Amount {value: line[5]})
MERGE (giver:Giver{name: line[4]})
MERGE (p)-[:RECEIVED {when: apoc.date.parse(line[1], 's', 'yyyy-mm-dd') }]->(g)
MERGE (g)-[:FROM]->(giver)
MERGE (g)-[:OF_VALUE]->(a);

LOAD CSV FROM "file:///Whips_Minister_Lords_Ministerial_data_oct_-_dec_2016.csv" AS line
WITH line
WHERE line[1] <> "Date" AND line[2] IS NOT NULL AND apoc.text.clean(line[3]) = "received"
MERGE (p:Person {name: line[0]})
CREATE (g:Gift {name: line[2]})
CREATE  (a:Amount {value: line[5]})
MERGE (giver:Giver{name: line[4]})
MERGE (p)-[:RECEIVED {when: apoc.date.parse(line[1], 's', 'yyyy-mm-dd') }]->(g)
MERGE (g)-[:FROM]->(giver)
MERGE (g)-[:OF_VALUE]->(a);