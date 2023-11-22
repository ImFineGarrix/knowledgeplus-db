use INT371;

INSERT INTO Categories VALUES (1,"Website developer","");

INSERT INTO Careers
VALUES (
        1,
        "Fullstack developer",
        "this is fullstack developer",
        ""
    );

INSERT INTO Careers
VALUES (
        2,
        "Frontend developer",
        "this is frontend developer",
        ""
    );

INSERT INTO Careers
VALUES (
        3,
        "Backend developer",
        "Backend developer",
        ""
    );

INSERT INTO Categories_Careers VALUES(1,1,1);

INSERT INTO Levels VALUE(1,"Basic");

INSERT INTO Levels VALUE(2,"intermediate");

INSERT INTO Levels VALUE(3,"advance");

INSERT INTO Skills
VALUES (
        1,
        "Basic Java Skill",
        "This is basic java skill",
        "",
        1
    );

INSERT INTO Skills
VALUES (
        2,
        "Basic Javascript Skill",
        "This is basic javascript skill",
        "",
        1
    );

INSERT INTO Skills
VALUES (
        3,
        "Basic SSL Skill",
        "This is basic ssl skill",
        "",
        1
    );

-- Assuming 1 is the correct LevelID for "Basic" level

INSERT INTO Skills
VALUES (
        4,
        "Basic database Skill",
        "This is basic database skill",
        "",
        3
    );

INSERT INTO Skills
VALUES (
        5,
        "Basic python Skill",
        "This is basic python skill",
        "",
        2
    );

INSERT INTO Careers_Skills VALUES(1,1,1);

INSERT INTO Careers_Skills VALUES(2,2,1);

INSERT INTO Organizations VALUES(1,"KMUTT","This is kmutt", "");

INSERT INTO Organizations VALUES(2,"KMITL","This is kmitl", "");

INSERT INTO Courses
VALUES (
        1,
        "INT101",
        "This is INT101",
        "Basic",
        "10",
        "2021",
        "",
        1
    );

INSERT INTO Courses
VALUES (
        2,
        "INT101",
        "This is INT202",
        "Basic",
        "5",
        "2022",
        "",
        1
    );

INSERT INTO Courses
VALUES (
        3,
        "INT303",
        "This is INT303",
        "Basic",
        "5",
        "2023",
        "",
        2
    );

-- delete from skills where skill_id = 5;

-- delete from careers where career_id = 11;

-- delete from careers_skills where career_skills_id = 1;

-- select * from skills;