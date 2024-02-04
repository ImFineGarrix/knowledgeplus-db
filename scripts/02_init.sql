Use INT371;
INSERT INTO levels VALUE(1,"1");
INSERT INTO levels VALUE(2,"2");
INSERT INTO levels VALUE(3,"3");
INSERT INTO levels VALUE(4,"4");
INSERT INTO levels VALUE(5,"5");
INSERT INTO levels VALUE(6,"6");
INSERT INTO levels VALUE(7,"Basic");
INSERT INTO levels VALUE(8,"Intermediate");
INSERT INTO levels VALUE(9,"Advanced");

insert into sections value(1,"Information Technology",null);
insert into int371.groups value(1,"Product Development");
insert into organizations value(1,"KMUTT","มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี",null);
insert into careers value(1,"Front End Developer","The Front End Developer writes clean testable codes and develops client-side systems to support end user’s needs and experience. He/She gathers user feedback to propose improvements to the product’s interface. He provides technical support to develop an intuitive and responsive experience for end users. He supports usability testing to validate user interfaces. He also identifies security vulnerabilities and assists his senior in selecting security tools to aid his senior in addressing these vulnerabilities.
He works in a team and is proficient in programming languages required by the organisation to design and develop user interfaces. He is familiar with graphic designing tools and is also knowledgeable in commonly used design methods. He uses various tools to read codes and uncover security vulnerabilities.
The Front End Developer is innovative in designing compelling and intuitive user interfaces. He supports others in the team and is confident in communicating ideas to the team in a clear and compelling manner.");
INSERT INTO Skills VALUE(1,"Agile Software Development",
"Plan and implement Agile methodology and the use of adaptive and iterative methods and techniques in the software development lifecycle to account for continuous evolution, development, and deployment to enable seamless delivery of the application to the end user",null,"HARD");
insert into courses value(1,"Agile Software Development I","Overview of Agile principles and the Agile Manifesto; Comparison between Agile and 
traditional software development methodologies; Understanding roles and responsibilities 
(Scrum Master, Product Owner, Development Team); Daily stand-up",null,"2",null,1);


insert into sections_groups value(1,1,1);
insert into groups_careers value(1,1,1);
insert into careers_skills value(1,1,1);

