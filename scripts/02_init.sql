use INT371;

INSERT INTO categories VALUES (1,"Website developer","web_dev","");

INSERT INTO careers VALUES (1,"Fullstack developer","fullstack_developer","this is fullstack developer","");
INSERT INTO careers VALUES (2,"Frontend developer","frontend_developer","this is frontend developer","");
INSERT INTO careers VALUES (3,"Backend developer","backend_developer","Backend developer","");

INSERT INTO categories_careers VALUES(1,1,1);

INSERT INTO  levels VALUE(1,"Basic");
INSERT INTO  levels VALUE(2,"intermediate");
INSERT INTO  levels VALUE(3,"advance");

INSERT INTO skills VALUES (1, "Basic Java Skill", "basic_java", "This is basic java skill", "", 1);
INSERT INTO skills VALUES (2, "Basic Javascript Skill", "basic_javascript", "This is basic javascript skill", "", 1);
INSERT INTO skills VALUES (3, "Basic SSL Skill", "basic_ssl", "This is basic ssl skill", "", 1); -- Assuming 1 is the correct LevelID for "Basic" level
INSERT INTO skills VALUES (4, "Basic database Skill", "basic_database", "This is basic database skill", "", 3);
INSERT INTO skills VALUES (5, "Basic python Skill", "basic_python", "This is basic python skill", "", 2);

INSERT INTO careers_skills VALUES(1,1,1);
INSERT INTO careers_skills VALUES(2,2,1);

INSERT INTO organizations VALUES(1,"KMUTT","This is kmutt", "");
INSERT INTO organizations VALUES(2,"KMITL","This is kmitl", "");

INSERT INTO courses VALUES(1,"INT101","int101","This is INT101","Basic","10","2021","",1);
INSERT INTO courses VALUES(2,"INT101","int202","This is INT202","Basic","5","2022","",1);
INSERT INTO courses VALUES(3,"INT303","int303","This is INT303","Basic","5","2023","",2);

-- delete from skills where skill_id = 5;
-- delete from careers where career_id = 11;
-- delete from careers_skills where career_skills_id = 1;

-- select * from skills;

