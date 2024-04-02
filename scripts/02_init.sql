CREATE ROLE owner_role;
CREATE ROLE admin_role;
CREATE ROLE user_role;

CREATE USER 'db_owner'@'localhost' IDENTIFIED BY 'ownersj2';
CREATE USER 'db_admin'@'localhost' IDENTIFIED BY 'adminsj2';
CREATE USER 'db_user'@'localhost' IDENTIFIED BY 'usersj2';
USE `INT371`;
GRANT SELECT, INSERT, UPDATE, DELETE ON INT371.* TO 'db_owner'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON INT371.* TO 'db_admin'@'localhost';
GRANT SELECT ON INT371.* TO 'db_user'@'localhost';
USE `INT371_02`;
GRANT SELECT, INSERT, UPDATE, DELETE ON INT371_02.* TO 'db_owner'@'localhost';
GRANT SELECT ON INT371_02.* TO 'db_admin'@'localhost';
GRANT SELECT ON INT371_02.* TO 'db_user'@'localhost';

FLUSH PRIVILEGES;

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

-- old version --
-- insert into sections value(1,"Information Technology",null);
-- insert into INT371.groups value(1,"Product Development");
-- insert into organizations value(1,"KMUTT","มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี",null);
-- insert into careers value(1,"Front End Developer","The Front End Developer writes clean testable codes and develops client-side systems to support end user’s needs and experience. He/She gathers user feedback to propose improvements to the product’s interface. He provides technical support to develop an intuitive and responsive experience for end users. He supports usability testing to validate user interfaces. He also identifies security vulnerabilities and assists his senior in selecting security tools to aid his senior in addressing these vulnerabilities.
-- He works in a team and is proficient in programming languages required by the organisation to design and develop user interfaces. He is familiar with graphic designing tools and is also knowledgeable in commonly used design methods. He uses various tools to read codes and uncover security vulnerabilities.
-- The Front End Developer is innovative in designing compelling and intuitive user interfaces. He supports others in the team and is confident in communicating ideas to the team in a clear and compelling manner.");
-- INSERT INTO Skills VALUE(1,"Agile Software Development",
-- "Plan and implement Agile methodology and the use of adaptive and iterative methods and techniques in the software development lifecycle to account for continuous evolution, development, and deployment to enable seamless delivery of the application to the end user",null,"HARD");
-- insert into courses value(1,"Agile Software Development I","Overview of Agile principles and the Agile Manifesto; Comparison between Agile and 
-- traditional software development methodologies; Understanding roles and responsibilities 
-- (Scrum Master, Product Owner, Development Team); Daily stand-up",null,"2",null,1);

-- insert into sections_groups value(1,1,1);
-- insert into groups_careers value(1,1,1);
-- insert into careers_skills value(1,1,1);

-- new version --

-- insert into sections value(1,"Information Technology",null);
-- insert into INT371.groups value(1,"Product Development");
-- insert into careers value(1,"Front End Developer","The Front End Developer writes clean testable codes and develops client-side systems to support end user’s needs and experience. He/She gathers user feedback to propose improvements to the product’s interface. He provides technical support to develop an intuitive and responsive experience for end users. He supports usability testing to validate user interfaces. He also identifies security vulnerabilities and assists his senior in selecting security tools to aid his senior in addressing these vulnerabilities.
-- He works in a team and is proficient in programming languages required by the organisation to design and develop user interfaces. He is familiar with graphic designing tools and is also knowledgeable in commonly used design methods. He uses various tools to read codes and uncover security vulnerabilities.
-- The Front End Developer is innovative in designing compelling and intuitive user interfaces. He supports others in the team and is confident in communicating ideas to the team in a clear and compelling manner.");
-- insert into organizations value(1,"KMUTT","มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี",null);
-- INSERT INTO skills VALUE(1,"Applications Development",
-- "Develop applications based on the design specifications; encompassing coding, testing, debugging, documenting and reviewing and/or refining it across the application development stages in accordance with defined standards for development and security. The complexity of the application may range from a basic application to a context-aware and/or augmented reality application that incorporates predictive behaviour analytics, geo-spatial capabilities and other appropriate algorithms. The technical skill includes the analysis and possibly the reuse, improvement, reconfiguration, addition or integration of existing and/or new application components.",null,"HARD");

-- insert into sections_groups value(1,1,1);
-- insert into groups_careers value(1,1,1);
-- insert into courses (course_id, name, description, learn_hours, academic_year, course_link, organization_id) value(1,"Basic Frontend Development","DOM, Events, Client-Side Storages, Asynchronous Programming, Fetch API",null,null,null,1);
-- insert into skills_levels value(1,1,"<p>o Application development tools and methodologies</p>
-- <p>o Syntax and structures of commonly-used programming languages and their respective Application Programming Interfaces (API)</p>
-- <p>o Clean coding methods and best practices</p>
-- <p>o Tools and techniques required for performing coding and/or programming</p>
-- <p>o Organisational standards in application development and documentation</p>
-- <p>o Process of embedding user interface templates</p>
-- <p>o Software tests and process for executing unit testing</p>
-- <p>o Application development standards</p>
-- <p>o Commonly-encountered application errors</p>
-- <p>o Basic debugging tools and techniques</p>
-- <p>o Security threats and vulnerabilities facing software and applications</p>
-- <p>o Functional requirements of security features</p>
-- <p>o Virtual machines and containerisation of application code set-up for consistent deployment and utilisation</p>","<p>o Develop and/or program simple applications or components according to agreed specifications</p>
-- <p>o Write codes that are clean, testable and maintainable</p>
-- <p>o Re-use externally developed components in creation of applications</p>
-- <p>o Identify possible security features required to address potential security risks and vulnerabilities</p>
-- <p>o Embed user interface templates into applications according to design guidelines and specifications</p>
-- <p>o Run routine software tests to identify defects, errors and/or security vulnerabilities</p>
-- <p>o Perform unit testing of each unit of the codes to ensure that the code works according to application requirements</p>
-- <p>o Apply basic debugging tools and techniques to reproduce, simplify and resolve application errors or problems</p>
-- <p>o Make simple revisions and modifications to existing application</p>
-- <p>o Add new application components or features, according to endorsed recommendations</p>
-- <p>o Document the internal design of the application for future maintenance and enhancement</p>
-- <p>o Write application programming interfaces (APIs)</p>
-- <p>o Perform bundling of application code and relevant files to enhance the deployment and utilisation of the application code</p>",3,1,1);
-- insert into skills_levels value(2,1,"<p>o Software development life cycle models for applications</p>
-- <p>o Broad range of application development frameworks, tools and methodologies, and their various uses</p>
-- <p>o A range of programming languages and effectiveness in different contexts</p>
-- <p>o Types of software or application testing techniques, and pros and cons of various tests</p>
-- <p>o Internal and external quality, safety and security standards or benchmarks in application development</p>
-- <p>o Quality assurance practices for application development review</p>
-- <p>o Range of tests and testing techniques for applications</p>
-- <p>o Multiple debugging techniques and tools and suitability for different contexts</p>
-- <p>o Feasibility analysis for reconfiguration, integration or portability of applications</p>
-- <p>o Emerging security threats and impact on software and applications</p>
-- <p>o Evaluation guidelines for software and applications security</p>
-- <p>o Types of security and secure features for software and applications</p>
-- <p>o Virtual machines and containerisation of application code set-up for deployment and utilisation</p>
-- <p>o Software development life cycle models for applications</p>
-- <p>o Broad range of application development frameworks, tools and methodologies, and their various uses</p>
-- <p>o A range of programming languages and effectiveness in different contexts</p>
-- <p>o Code refactoring techniques and best practices</p>
-- <p>o Types of software or application testing techniques, and pros and cons of various tests</p>
-- <p>o Internal and external quality, safety and security standards or benchmarks in application development</p>
-- <p>o Quality assurance practices for application development review</p>
-- <p>o Range of tests and testing techniques for applications</p>
-- <p>o Multiple debugging techniques and tools and suitability for different contexts</p>
-- <p>o Feasibility analysis for reconfiguration, integration or portability of applications</p>
-- <p>o Emerging security threats and impact on software and applications</p>
-- <p>o Evaluation guidelines for software and applications security</p>
-- <p>o Types of security and secure features for software and applications</p>","<p>o Create a project plan to guide the application development process</p>
-- <p>o Determine the server, scripting and mark-up languages required to develop applications</p>
-- <p>o Determine key security requirements, standards and features for the application</p>
-- <p>o Develop applications in line with design specifications, utilising a range of tools, methodologies, programming, and externally developed codes</p>
-- <p>o Design templates for reusable user interface patterns for applications</p>
-- <p>o Assess suitability of various software security and software testing techniques and select appropriate tests, according to the application properties of interest</p>
-- <p>o Evaluate test results against desired performance, standards, and usability outcomes</p>
-- <p>o Analyse application and/or security issues encountered, and determine actions required to resolve identified issues</p>
-- <p>o Resolve functional, performance, and security issues in applications</p>
-- <p>o Plan a series of steps which potentially includes reconfiguration, integration, removal or addition of application components to enhance the application's functionality, usability and security</p>
-- <p>o Plan bundling of application code and relevant files to enhance the deployment and utilisation of the application code</p>
-- <p>o Set up virtual machine instances and containerisation for the deployment and utilisation of the application code across multiple infrastructures</p>
-- <p>o Create a project plan to guide the application development process</p>
-- <p>o Determine the server, scripting and mark-up languages required to develop applications</p>
-- <p>o Determine key security requirements, standards and features for the application</p>
-- <p>o Develop applications in line with design specifications, utilising a range of tools, methodologies, programming, and externally developed codes</p>
-- <p>o Guide team to adopt clean coding practices to ensure that codes are clean, testable and maintainable</p>
-- <p>o Design templates for reusable user interface patterns for applications</p>
-- <p>o Assess suitability of various software security and software testing techniques and select appropriate tests, according to the application properties of interest</p>
-- <p>o Evaluate test results against desired performance, standards, and usability outcomes</p>
-- <p>o Analyse application and/or security issues encountered, and determine actions required to resolve identified issues</p>
-- <p>o Resolve functional, performance, and security issues in applications</p>
-- <p>o Plan a series of steps which potentially includes reconfiguration, integration, removal or addition of application components to enhance the application's functionality, usability and security</p>
-- <p>o Plan bundling of application code and relevant files to enhance the deployment and utilisation of the application code</p>
-- <p>o Set up virtual machine instances and containerisation for the deployment and utilisation of the application code across multiple infrastructures</p>",4,null,null);
-- insert into skills_levels value(3,1,"<p>o Long term vision and immediate objectives of the application</p>
-- <p>o Key characteristics, pros and cons of different application development methodologies</p>
-- <p>o New and emerging trends in application development</p>
-- <p>o Advanced programming languages and tools, and their uses in different contexts for different application features</p>
-- <p>o Applicability and reusability of externally developed codes and components</p>
-- <p>o Relative criticality or importance of different application components or properties</p>
-- <p>o Various debugging processes and suitability for different contexts</p>
-- <p>o Feasibility analysis for incorporating new, complex or advanced features or capabilities</p>
-- <p>o Measures of software complexity</p>
-- <p>o Industry best practices in secure software and applications development</p>
-- <p>o New and emerging secure software and applications development techniques, tools and approaches</p>
-- <p>o New and emerging techniques for seamless software deployment</p>
-- <p>o Long term vision and immediate objectives of the application</p>
-- <p>o Key characteristics, pros and cons of different application development methodologies</p>
-- <p>o New and emerging trends in application development</p>
-- <p>o Advanced programming languages and tools, and their uses in different contexts for different application features</p>
-- <p>o Applicability and reusability of externally developed codes and components</p>
-- <p>o Relative criticality or importance of different application components or properties</p>
-- <p>o Various debugging processes and suitability for different contexts</p>
-- <p>o Feasibility analysis for incorporating new, complex or advanced features or capabilities</p>
-- <p>o Measures of software complexity</p>
-- <p>o Industry best practices in secure software and applications development</p>
-- <p>o New and emerging secure software and applications development techniques, tools and approaches</p>
-- <p>o New and emerging techniques for seamless software deployment</p>","<p>o Evaluate implications of new and emerging trends on application development</p>
-- <p>o Plan large-scale or business-critical application development projects</p>
-- <p>o Determine application development methodologies, tools, and programming languages</p>
-- <p>o Manage interdependencies of multiple work streams and complexity in applications development</p>
-- <p>o Establish an efficient and effective application testing process that includes vulnerability assessments and secure testing</p>
-- <p>o Oversee application development approaches and plans to ensure achievement of quality, safety and security standards</p>
-- <p>o Establish debugging process for application issues encountered</p>
-- <p>o Review recommendations to improve the overall functionality, usability and security of applications, against cost, efficiency and viability considerations</p>
-- <p>o Evaluate new technologies, secure coding and practices that will enhance security capabilities in applications development</p>
-- <p>o Evaluate feasibility and incorporate predictive behaviour or data analytics, geo-spatial capabilities and other advanced features in application development?</p>
-- <p>o Evaluate implications of new and emerging trends on application development</p>
-- <p>o Plan large-scale or business-critical application development projects</p>
-- <p>o Determine application development methodologies, tools, and programming languages</p>
-- <p>o Manage interdependencies of multiple work streams and complexity in applications development</p>
-- <p>o Establish best practices in clean coding</p>
-- <p>o Establish an efficient and effective application testing process that includes vulnerability assessments and secure testing</p>
-- <p>o Oversee application development approaches and plans to ensure achievement of quality, safety and security standards</p>
-- <p>o Establish debugging process for application issues encountered</p>
-- <p>o Review recommendations to improve the overall functionality, usability and security of applications, against cost, efficiency and viability considerations</p>
-- <p>o Evaluate new technologies, secure coding and practices that will enhance security capabilities in applications development</p>
-- <p>o Evaluate feasibility and incorporate predictive behaviour or data analytics, geo-spatial capabilities and other advanced features in application development</p>",5,null,null);

-- user script --
insert into INT371_02.users value(1,"Knowledge+","Knowledgeplus@mail.kmutt.ac.th","$2a$10$/hGwW2dC8JVobtGhQqQWQet9/d4qNkwbs1b.Nc/.N/r7B3ldOcbWu","owner");