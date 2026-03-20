//
//  CoursePlannerViewModel.swift
//  CoursePlanner
//
//  Created by Rickey Chiu on 5/29/23.
//

import SwiftUI

let idToCourse: [CourseIdentifier: Course] = [
    
    //ADD
    "0000": Course(name: "+", id: "0000", description: "   ", recommended: [], department: .zero, type: .other, grade: [0,1,2,3]),
    
    //ENGLISH
    "1010P": Course(name: "Lit & Writing", id: "1010P", description: "This course integrates the study of fictional and non-fictional literature with instruction in the writing process.", recommended: [], department: Department.english, type: CourseType.standard, grade: [0]),
    "1013P": Course(name: "Lit & Writing (EL)", id: "1013P", description: "This ELD course integrates the study of fictional and non-fictional literature with instruction in the writing process.", recommended: [], department: Department.english, type: CourseType.standard, grade: [0, 1]),
    "1020P": Course(name: "World Lit", id: "1020P", description: "Using works of world literature, the student will explore themes of human experience and inquiry.", recommended: [], department: Department.english, type: CourseType.standard, grade: [1]),
    
    "1023P": Course(name: "World Lit (EL)", id: "1023P", description: "Using works of world literature, the ELD student will explore themes of human experience and inquiry.", recommended: [], department: Department.english, type: CourseType.standard, grade: [1, 2]),
    "1130P": Course(name: "American Lit", id: "1130P", description: "The core of the curriculum is a chronological or thematic study of American literature, its literary periods and major writings.", recommended: [], department: Department.english, type: CourseType.standard, grade: [2]),
    "1133P": Course(name: "American Lit (EL)", id: "1133P", description: "The core of the ELD curriculum is a chronological or thematic study of American literature, its literary periods and major writings. ", recommended: [], department: Department.english, type: CourseType.standard, grade: [2, 3]),
    "1190AP": Course(name: "AP Eng Lang & Comp", id: "1190AP", description: "Recommended: B or above in English courses. APLAC engages students in becoming skilled readers of prose, disciplines, & rhetorical texts.", recommended: ["1010P", "1020P"], department: Department.english, type: CourseType.ap, grade: [2]),
    "1260P": Course(name: "Story & Style", id: "1260P", description: "This course presents students with new ways to view multiple literary genres such as drama, speech, and novels.", recommended: [], department: Department.english, type: CourseType.standard, grade: [3]),
    "1410AP": Course(name: "AP Eng Lit & Comp", id: "1410AP", description: "Recommended: “B” or better in English courses and teacher rec. This class engages students in the  reading and analysis of literature.", recommended: ["1130P", "1190AP"], department: Department.english, type: CourseType.ap, grade: [3]),
    
    "1360P": Course(name: "Journalism/EPIC", id: "1360P", description: "An elective class with an interview for students who produce the student newspaper, assuming responsibility for its development.", recommended: [], department: Department.english, type: CourseType.standard, grade: [1, 2, 3]),
    
    "1450": Course(name: "Eng. Lang Dev 2", id: "1450", description: "This course is designed for students who  have a foundational knowledge of vocabulary, sentence structure, reading, and writing.", recommended: [], department: Department.english, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "1460P": Course(name: "Eng. Lang Dev 3", id: "1460P", description: "Students acquire sophisticated vocabulary, sentence structure, reading of non-fictional and fictional texts, and writing.", recommended: [], department: Department.english, type: CourseType.standard, grade: [0, 1, 2, 3]),
    
    //SOCIAL STUDIES
    "1620P": Course(name: "World History", id: "1620P", description: "Students examine major turning points in the shaping of the modern world from the late eighteenth century to the present.", recommended: [], department: Department.social, type: CourseType.standard, grade: [1]),
    "1623P": Course(name: "World History (EL)", id: "1623P", description: "ELD students examine major turning points in the shaping of the modern world from the late eighteenth century to the present.", recommended: [], department: Department.social, type: CourseType.standard, grade: [1]),
    "1730P": Course(name: "U.S. History", id: "1730P", description: "Students study the History of the United States in the twentieth century. The year begins with a review of U.S. History prior to the 20th Century.", recommended: [], department: Department.social, type: CourseType.standard, grade: [2]),
    "1750AP": Course(name: "AP U.S. History", id: "1750AP", description: "Recommended: “B” or better in their previous history class. APUSH covers the entire scope of US history unlike USH.", recommended: [], department: Department.social, type: CourseType.ap, grade: [2]),
    "1835P": Course(name: "Economics (1/2)", id: "1835P", description: "The course covers economic principles such as production, supply and demand, profits, distribution of goods, competition, etc.", recommended: [], department: Department.social, type: CourseType.standard, grade: [3]),
    "1845P": Course(name: "U.S. Government (2/2)", id: "1845P", description: "The goals of this course are to give an understanding of democratic processes and the values and social framework that support them.", recommended: [], department: Department.social, type: CourseType.standard, grade: [3]),
    "1855AP": Course(name: "AP U.S. Gov (2/2)", id: "1855AP", description: "Recommended: “B” or better in previous history class. It's designed to give students an understanding of the system of US gov/politics.", recommended: [], department: Department.social, type: CourseType.ap, grade: [3]),
    
    //PE
    "2510": Course(name: "P.E. 9", id: "2510", description: "A basic course required of all freshmen, which includes instruction in basic skills, basic rules, history and etiquette in sports.", recommended: [], department: Department.pe, type: CourseType.other, grade: [0]),
    "2530": Course(name: "P.E. 10-12", id: "2530", description: "Recommended: PE 9. The PE 10 elective program is designed to allow choice in the selection of physical education activities.", recommended: ["2510"], department: Department.pe, type: CourseType.other, grade: [1, 2, 3]),
    "2720": Course(name: "P.E. Racquet Sports", id: "2720", description: "Recommended: PE 9. This course is designed for students interested in developing skills in the various racquet sports.", recommended: ["2510"], department: Department.pe, type: CourseType.other, grade: [1, 2, 3]),
    "2740": Course(name: "P.E. Weight Training", id: "2740", description: "Recommended: PE 9. This course is designed for those students interested in developing body strength for advanced sports skills.", recommended: ["2510"], department: Department.pe, type: CourseType.other, grade: [1, 2, 3]),
    "2780": Course(name: "P.E. Total Fitness", id: "2780", description: "Recommended: PE 9. The course emphasizes aerobic activity with elements of all five of the components of fitness.", recommended: ["2510"], department: Department.pe, type: CourseType.other, grade: [1, 2, 3]),
    "2590": Course(name: "P.E. Athletics", id: "2590", description: "Required: A member of an interscholastic athletic squad and completed the Competitive Sports Participation Agreement.", recommended: [], department: Department.pe, type: CourseType.other, grade: [1, 2, 3]),
    
    //ART
    
    "6110P": Course(name: "Art 1", id: "6110P", description: "This introductory course explores the elements of design such as line, shape, color, form, value and texture.", recommended: [], department: Department.art, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "6120P": Course(name: "Art 2", id: "6120P", description: "Recommended: C or better in Art 1. Further refinement of drawing and painting skills will be the primary focus.", recommended: ["6110P"], department: Department.art, type: CourseType.standard, grade: [1, 2, 3]),
    "6130P": Course(name: "Art 3", id: "6130P", description: "Recommended: C or better in Art 2. This is an advanced level course focused around a specialized area of art.", recommended: ["6120P"], department: Department.art, type: CourseType.standard, grade: [2, 3]),
    
    "6210P": Course(name: "3D Sculpture & Design 1", id: "6210P", description: "This is a course for those interested in 3D materials. Design for both aesthetic and functional objects is emphasized.", recommended: [], department: Department.art, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "6220P": Course(name: "3D Sculpture & Design 2", id: "6220P", description: "Recommended: C or better in 3-D Design 1. Students will further their skills in handling materials and tools.", recommended: ["6210P"], department: Department.art, type: CourseType.standard, grade: [1, 2, 3]),
    "6230P": Course(name: "3D Sculpture & Design 3", id: "6230P", description: "Recommended: C or better in 3-D Design 2. For the advanced design student who has professional goals in an area.", recommended: ["6220P"], department: Department.art, type: CourseType.standard, grade: [2, 3]),
    
    "6360P": Course(name: "Cermaics 1", id: "6360P", description: "This is an introductory art course centered on developing hand-building techniques such as pinch, slab and coil. ", recommended: [], department: Department.art, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "6370P": Course(name: "Cermaics 2", id: "6370P", description: "Recommended: C or better in Ceramics 1. Students will produce a variety of forms that utilize different methods and techniques.", recommended: ["6360P"], department: Department.art, type: CourseType.standard, grade: [1, 2, 3]),
    "6380P": Course(name: "Cermaics 3", id: "6380P", description: "Recommended: C or better in Ceramics 2. The student will continue refinement in basic hand-building and potter’s wheel techniques. ", recommended: ["6370P"], department: Department.art, type: CourseType.standard, grade: [1, 2, 3]),
    
    "6450AP": Course(name: "AP 2D Art & Design", id: "6450AP", description: "Recommended: B or better in Art 2, or evaluation of student portfolio. Designed for those interested in art as a potential major.", recommended: ["6120P"], department: Department.art, type: CourseType.ap, grade: [2, 3]),
    "7790": Course(name: "Studio Art", id: "7790", description: "Recommended: Art 1/Ceramics/3-Design/Photography. Students focus on building their portfolio and gain entrepreneurial skills.", recommended: ["6110P", "6360P", "6210P", "7670P"], department: Department.art, type: CourseType.standard, grade: [2, 3]),
    "7670P": Course(name: "Photography & Design", id: "7670P", description: "A course that teaches the basic operations and functions of a digital single lens reflex camera as well as graphic design.", recommended: [], department: Department.art, type: CourseType.standard, grade: [1, 2, 3]),
    
    //SCIENCE
    "3110P": Course(name: "Biology", id: "3110P", description: "Biology is an intro laboratory course. Students will deepen their understanding of science through scientific inquiry.", recommended: [], department: Department.science, type: CourseType.standard, grade: [0]),
    "3113P": Course(name: "Biology EL", id: "3113P", description: "ELD Biology is an intro laboratory course. Students will deepen their understanding of science through scientific inquiry.", recommended: [], department: Department.science, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "3120AP": Course(name: "AP Biology", id: "3120P", description: "Recommended: Biology and Chemistry. AP Biology is the equivalent of a two-semester college introductory biology course.", recommended: ["3110P", "3610P", "3620H"], department: Department.science, type: CourseType.ap, grade: [2, 3]),
    "3130P": Course(name: "Physiology", id: "3130P", description: "Recommended: Biology and Chemistry. This is a course investigating the functional and interdependent phenomena of the human body.", recommended: ["3110P", "3610P", "3620H"], department: Department.science, type: CourseType.standard, grade: [2, 3]),
    "3610P": Course(name: "Chemistry", id: "3610P", description: "Recommended: Biology and Algebra 1 (can be concurrent). Students will learn about Earth’s systems and humans.", recommended: ["3110P"], department: Department.science, type: CourseType.standard, grade: [1, 2, 3]),
    "3620H": Course(name: "Chemistry Honors", id: "3620H", description: "Recommended: Biology and Alg 1 (can be concurrent). The honors course has an increased application of math and concepts.", recommended: [], department: Department.science, type: CourseType.honors, grade: [1, 2, 3]),
    "3630AP": Course(name: "AP Chemistry", id: "3630AP", description: "Recommended: Chemistry H and Alg 2. Students should have a successful background in math and basic chemistry.", recommended: ["3620H"], department: Department.science, type: CourseType.ap, grade: [2, 3]),
    "3710P": Course(name: "Physics", id: "3710P", description: "Recommended: Biology and Algebra 1. Students will deepen their understanding of the universe through the lens of physics.", recommended: ["3110P"], department: Department.science, type: CourseType.standard, grade: [1, 2, 3]),
    "3720H": Course(name: "Physics Honors", id: "3720H", description: "Recommended: Biology and Algebra 2 (can be concurrent). The honors course has an increased application of math and concepts.", recommended: ["3110P"], department: Department.science, type: CourseType.honors, grade: [1, 2, 3]),
    "3730AP": Course(name: "AP Physics C: Mech", id: "3730AP", description: "Recommended: Pre-Calc H and Physics H.  Students taking this  should have a successful background in math and physics.", recommended: ["2420H", "3720H"], department: Department.science, type: CourseType.ap, grade: [2, 3]),
    "3850P": Course(name: "Science & Society", id: "3850P", description: "Recommended: Biology. This course is a PBL course where students work on a variety of projects related to societal issues.", recommended: [], department: Department.science, type: CourseType.standard, grade: [1, 2, 3]),
    
    //MATH
    "2210P": Course(name: "Algebra 1", id: "2210P", description: "Algebra 1 is imperative for success in subsequent math courses, and transitions students from arithmetic to symbolic reasoning.", recommended: [], department: Department.math, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "2230P": Course(name: "Geometry", id: "2230P", description: "Recommended: completion of Alg 1. The Geometry course focuses on a formal development of geometric skills and concepts.", recommended: ["2210P"], department: Department.math, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "2310P": Course(name: "Algebra 2", id: "2310P", description: "Recommended: completion of Alg 1 and Geo. Alg 2 expands and refines the mathematical content of Alg 1 and Geometry.", recommended: ["2210P", "2230P"], department: Department.math, type: CourseType.standard,  grade: [0, 1, 2, 3]),
    "2320P": Course(name: "Alg 2/Trignometry", id: "2320P", description: "Recommended: Mastery of Alg 1 and Geo. Alg 2/Trig is for students who plan to maximize the amount of math studied in high school.", recommended: ["2210P", "2230P"], department: Department.math, type: CourseType.standard,  grade: [0, 1, 2, 3]),
    "2390P": Course(name: "Pre-Calculus", id: "2390P", description: "Recommended: Completion of Alg 2/2-Trig. This focuses on the study of functions, their modeling applications, etc.", recommended: ["2310P", "2320P"], department: Department.math, type: CourseType.standard,  grade: [0, 1, 2, 3]),
    "2420H": Course(name: "Pre-Calculus Honors", id: "2420H", description: "Recommended: Mastery of both Geo & Alg 2/Trig. Pre-Calc H is for students who plan to max the amount of math studied in high school.", recommended: ["2310P", "2320P"], department: Department.math, type: CourseType.honors,  grade: [0, 1, 2, 3]),
    "2430AP": Course(name: "AP Calculus AB", id: "2430AP", description: "Recommended: Pre-Calc. This course covers 2 college quarters of limits, differentiation and integration.", recommended: ["2390P", "2420H"], department: Department.math, type: CourseType.ap,  grade: [0, 1, 2, 3]),
    "2440AP": Course(name: "AP Calculus BC", id: "2440AP", description: "Recommended: Pre-Calc H. This course covers 3 college quarters of limits, differentiation, integration, and series.", recommended: ["2420H"], department: Department.math, type: CourseType.ap,  grade: [0, 1, 2, 3]),
    "2460AP": Course(name: "AP Statistics", id: "2460AP", description: "Recommended: Completion of Alg 2 or higher. The course explores data, planning studys, probability, and inferential reasoning.", recommended: ["2310P", "2320P", "2390P", "2420H", "2430AP", "2440AP"], department: Department.math, type: CourseType.ap,  grade: [1, 2, 3]),
    
    "2370P": Course(name: "Comp Prog Java", id: "2370P", description: "Recommended: Completion of Alg 1 or higher and previous computer use. The course teaches intro Python and Java.", recommended: [], department: Department.math, type: CourseType.standard,  grade: [0, 1, 2, 3]),
    "2350AP": Course(name: "AP Comp Sci A", id: "2350AP", description: "Recommended: Completion of Comp Prog Java and Alg 2 or higher math course; Students must have strong computer/problem-solving skills.", recommended: ["2370P"], department: Department.math, type: CourseType.ap,  grade: [1, 2, 3]),
    "7820AP": Course(name: "AP Comp Sci Principles", id: "7820AP", description: "The AP CSP course will develop computational thinking skills vital for success across all disciplines.", recommended: [], department: Department.math, type: CourseType.ap,  grade: [1, 2, 3]),
    
    
    //DRAMA
    "6710P": Course(name: "Drama", id: "6710P", description: "This course is for those students who want introductory training in acting. Emphasis is on voice, movement, improvisation, etc.", recommended: [], department: Department.drama, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "6720P": Course(name: "Advanced Drama", id: "6720P", description: "Recommended: Drama. This course is for those students who want more advanced training in acting.", recommended: ["6710P"], department: Department.drama, type: CourseType.standard, grade: [1, 2, 3]),
    "6730H": Course(name: "Adv. Drama Honors", id: "6730H", description: "Recommended: Advanced Drama. This course is for those students who are most interested in studying acting and the theater.", recommended: ["6720P"], department: Department.drama, type: CourseType.honors, grade: [2, 3]),
    
    //MUSIC
    "7030P": Course(name: "B Choir", id: "7030P", description: "Recommended: For students with little or no prior music experience. This choir is a beginning vocal group.", recommended: [], department: Department.music, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "7040P": Course(name: "Adv. Treble Choir", id: "7040P", description: "Audition only – see instructor for additional info. The course content includes work on tone production and quality, breathing, diction, etc.", recommended: [], department: Department.music, type: CourseType.standard, grade: [1, 2, 3]),
    "7060P": Course(name: "A Choir", id: "7060P", description: "Recommended: Audition or approval of instructor. The students will experience a large mixed choir.", recommended: [], department: Department.music, type: CourseType.standard, grade: [1, 2, 3]),
    "7120P": Course(name: "Concert Band", id: "7120P", description: "Recommended: Approval of instructor. Refinement of tone and a more advanced understanding of basic performance techniques are stressed.", recommended: [], department: Department.music, type: CourseType.standard, grade: [0, 1]),
    "7130P": Course(name: "Symphonic Band", id: "7130P", description: "Recommended: Audition/pproval of instructor. This is a continuation of Concert Band work, with more detail in individual skills.", recommended: [], department: Department.music, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "7140P": Course(name: "Wind Ensemble", id: "7140P", description: "Recommended: Audition or approval of instructor. This select group of about 50 is formed by audition only.", recommended: [], department: Department.music, type: CourseType.standard, grade: [1, 2, 3]),
    "7240P": Course(name: "Orchestra", id: "7240P", description: "Recommended: 1–2 years of experience. Pperformance of ensemble/orchestra literature, string skills, and musicianship.", recommended: [], department: Department.music, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "7250P": Course(name: "Chamber Orchestra", id: "7250P", description: "Audition required. For advanced students who will study and perform string/orchestral literature on their instrument.", recommended: [], department: Department.music, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "7320P": Course(name: "Music Genesis", id: "7320P", description: "This course is open to all students interested in tmusic through the study of Rock, Jazz and Classical music. ", recommended: [], department: Department.music, type: CourseType.standard, grade: [0, 1, 2, 3]),
    
    //WL
    
    "4310P": Course(name: "Spanish 1", id: "4310P", description: "Students will learn to address elements of daily life in both oral and written form and learn the basic grammar to convey meaning.", recommended: [], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4320P": Course(name: "Spanish 2", id: "4320P", description: "Recommended: C or better in Level 1, or language skills check. The primary goal is development of communicative competence.", recommended: [], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4330P": Course(name: "Spanish 3", id: "4330P", description: "Recommended: C or better in Level 2, or language skills check. Students will improve communicative competence.", recommended: [], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4340H": Course(name: "Spanish 4 Honors", id: "4340H", description: "Recommended: C or better in Level 3, or language skills check. The course includes advanced grammar and vocabulary.", recommended: [], department: Department.wl, type: CourseType.honors, grade: [0, 1, 2, 3]),
    "4350AP": Course(name: "AP Spanish", id: "4350AP", description: "Recommended: C or better in Level 4 Honors, or language skills check. Students demonstrate an advanced level of proficiency.", recommended: [], department: Department.wl, type: CourseType.ap, grade: [0, 1, 2, 3]),

    
    "4110P": Course(name: "French 1", id: "4110P", description: "Students will learn to address elements of daily life in both oral and written form and learn the basic grammar to convey meaning.", recommended: [], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4120P": Course(name: "French 2", id: "4120P", description: "Recommended: C or better in Level 1, or language skills check. The primary goal is development of communicative competence.", recommended: ["4110P"], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4130P": Course(name: "French 3", id: "4130P", description: "Recommended: C or better in Level 2, or language skills check. Students will improve communicative competence.", recommended: ["4120P"], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4140H": Course(name: "French 4 Honors", id: "4140H", description: "Recommended: C or better in Level 3, or language skills check. The course includes advanced grammar and vocabulary.", recommended: ["4130P"], department: Department.wl, type: CourseType.honors, grade: [0, 1, 2, 3]),
    "4150AP": Course(name: "AP French", id: "4150AP", description: "Recommended: C or better in Level 4 Honors, or language skills check. Students demonstrate an advanced level of proficiency.", recommended: ["4140H"], department: Department.wl, type: CourseType.ap, grade: [0, 1, 2, 3]),
    
    "4010P": Course(name: "Japanese 1", id: "4010P", description: "Students will learn to address elements of daily life in both oral and written form and learn the basic grammar to convey meaning.", recommended: [], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4020P": Course(name: "Japanese 2", id: "4020P", description: "Recommended: C or better in Level 1, or language skills check. The primary goal is development of communicative competence.", recommended: ["4010P"], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4030P": Course(name: "Japanese 3", id: "4030P", description: "Recommended: C or better in Level 2, or language skills check. Students will improve communicative competence.", recommended: ["4020P"], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4040H": Course(name: "Japanese 4 Honors", id: "4040H", description: "Recommended: C or better in Level 3, or language skills check. The course includes advanced grammar and vocabulary.", recommended: ["4030P"], department: Department.wl, type: CourseType.honors, grade: [0, 1, 2, 3]),
    "4050AP": Course(name: "AP Japanese", id: "4050AP", description: "Recommended: C or better in Level 4 Honors, or language skills check. Students demonstrate an advanced level of proficiency.", recommended: ["4040H"], department: Department.wl, type: CourseType.ap, grade: [0, 1, 2, 3]),
    
    "4410P": Course(name: "Chinese 1", id: "4410P", description: "Students will learn to address elements of daily life in both oral and written form and learn the basic grammar to convey meaning.", recommended: [], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4420P": Course(name: "Chinese 2", id: "4420P", description: "Recommended: C or better in Level 1, or language skills check. The primary goal is development of communicative competence.", recommended: ["4410P"], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4430P": Course(name: "Chinese 3", id: "4430P", description: "Recommended: C or better in Level 2, or language skills check. Students will improve communicative competence.", recommended: ["4420P"], department: Department.wl, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4440H": Course(name: "Chinese 4 Honors", id: "4440H", description: "Recommended: C or better in Level 3, or language skills check. The course includes advanced grammar and vocabulary.", recommended: ["4430P"], department: Department.wl, type: CourseType.honors, grade: [0, 1, 2, 3]),
    "4450AP": Course(name: "AP Chinese", id: "4450AP", description: "Recommended: C or better in Level 4 Honors, or language skills check. Students demonstrate an advanced level of proficiency.", recommended: ["4440H"], department: Department.wl, type: CourseType.ap, grade: [0, 1, 2, 3]),
    
    
    //BUSINESS
    "4580P": Course(name: "Principle of Business", id: "4580P", description: "This business course introduces students to the study of Economics, Personal Finance, Commerce, and Entrepreneurship. ", recommended: [], department: Department.business, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "4710P": Course(name: "Accounting 1", id: "4710P", description: "Accounting 1 will enable the students to understand the 'language' of business, the recording of financial transactions, etc.", recommended: [], department: Department.business, type: CourseType.standard, grade: [1, 2, 3]),
    "4720P": Course(name: "Accounting 2", id: "4720P", description: "Required: Accounting 1. This advanced course is designed for those who want to improve knowledge about business procedures.", recommended: ["4710P"], department: Department.business, type: CourseType.standard, grade: [1, 2, 3]),
    "4880P": Course(name: "Econ & Virtual Bus", id: "4880P", description: "Recommended: Principles of Business. Virtual Enterprise (VE) is a simulated business that is set up and run by students.", recommended: ["4580P"], department: Department.business, type: CourseType.standard, grade: [1, 2, 3]),
    
    //LIVING SKILLS
    "5710": Course(name: "Culinary Arts 1", id: "5710", description: "This is a preparatory course that includes safety/sanitation, measurement basics, kitchen tools and uses, etc.", recommended: [], department: Department.living, type: CourseType.standard, grade: [0, 1, 2, 3]),
    "5730P": Course(name: "Culinary Food Science", id: "5730P", description: "Recommended: Passing grade in Biology and Algebra 1. This course applies chemistry and biology in food science.", recommended: ["3110P"], department: Department.living, type: CourseType.standard, grade: [1, 2, 3]),
    
    //NON-DEPARTMENTAL
    "8040": Course(name: "Work Experience", id: "8040", description: "Students who are employed may choose to enroll in Work Experience with priority given to seniors who need credits.", recommended: [], department: Department.misc, type: CourseType.other, grade: [2, 3]),
    "8280": Course(name: "IS: STEM Research", id: "8280", description: "STEAM research course is a unique opportunity for students to engage in interdisciplinary research to understand complex problems.", recommended: [], department: Department.misc, type: CourseType.other, grade: [0, 1]),
    "8290": Course(name: "Leadership", id: "8040", description: "Required: Students must hold some type of office through elections or interviews. Students will be involved in school politics and events.", recommended: [], department: Department.misc, type: CourseType.other, grade: [0, 1, 2, 3]),
    "8390": Course(name: "Engage", id: "8390", description: "This course is an opportunity for students to receive extra help on schoolwork from Engage Tutors.", recommended: [], department: Department.misc, type: CourseType.other, grade: [0, 1, 2, 3]),
    "8400": Course(name: "Engage Tutor", id: "8400", description: "Recommended: Permission of supervising teacher/staff. This course is an opportunity for students to give school service by tutoring.", recommended: [], department: Department.misc, type: CourseType.other, grade: [2, 3]),
    "9020": Course(name: "TA/Student Clerk", id: "9020", description: "Recommended: Approval from staff member whom the assistant/clerk will be supporting. Students will work with admins/teachers.", recommended: [], department: Department.misc, type: CourseType.other, grade: [1, 2, 3]),
    "9030": Course(name: "EL Teacher Asst", id: "9030", description: "Recommended: Approval from staff member who the assistant will be supporting. Students will work with teachers/staff.", recommended: [], department: Department.misc, type: CourseType.other, grade: [2, 3]),
    "9070": Course(name: "Technology Asst", id: "9070", description: "Recommended: Approval from staff member whom the assistant/clerk will be supporting. Students will work with admins/teachers.", recommended: [], department: Department.misc, type: CourseType.other, grade: [1, 2, 3]),
    "8380": Course(name: "Yearbook", id: "8380", description: "Students will work on formulating the Lynbrook Yearbook. This involves interviews, graphic design, and more.", recommended: [], department: Department.misc, type: CourseType.other, grade: [0, 1, 2, 3]),
    "1595": Course(name: "Ethnic Studies (1/2)", id: "1595", description: "Intro to Ethnic Studies is a 9th grade, one semester course. Students will examine complexities of identity and foster empathy.", recommended: [], department: Department.misc, type: CourseType.other, grade: [0, 1]),
    "3025": Course(name: "Health (2/2)", id: "3025", description: "Health  provides students with the knowledge and skills to make gooddecisions for themselves and others.", recommended: [], department: Department.misc, type: CourseType.other, grade: [0, 1])
]

class CoursePlannerViewModel: ObservableObject {
    @Published var schedule: Schedule
    
    init(schedule: Schedule) {
        self.schedule = schedule
    }
}

typealias CourseIdentifier = String

enum CourseType {
    case standard
    case honors
    case ap
    case other
}

enum Department: Comparable {
    case zero
    case english
    case social
    case pe
    case art
    case science
    case math
    case drama
    case music
    case wl
    case business
    case living
    case misc
}

class Course: Identifiable {
    let name: String
    let id: CourseIdentifier
    let description: String
    let recommended: [String]
    let department: Department
    let type: CourseType
    let grade: [Int]
    
    init(name: String, id: CourseIdentifier, description: String,
         recommended: [CourseIdentifier], department: Department,
         type: CourseType, grade: [Int]) {
        self.name = name
        self.id = id
        self.description = description
        self.recommended = recommended
        self.department = department
        self.type = type
        self.grade = grade
    }
}

extension Course: Comparable {
    static func < (lhs: Course, rhs: Course) -> Bool {
        if (lhs.department != rhs.department) {
            return lhs.department < rhs.department
        } else {
            return lhs.id < rhs.id
        }
    }
    
    static func == (lhs: Course, rhs: Course) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Schedule: Decodable, Encodable {
    var years: [[CourseIdentifier]] = [
        ["1010P", "0000", "3110P", "0000", "0000", "0000", "2510"],
        ["1020P", "1620P", "0000", "0000", "0000", "0000", "0000"],
        ["0000", "0000", "0000", "0000", "0000", "0000", "0000"],
        ["0000", "1835P", "0000", "0000", "0000", "0000", "0000"]
    ]
    
    init() { }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        years = try values.decode([[CourseIdentifier]].self, forKey: .years)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(years, forKey: .years)
    }
 
    enum CodingKeys: String, CodingKey {
        case years
    }
}
