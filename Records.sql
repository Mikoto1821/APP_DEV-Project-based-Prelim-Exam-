INSERT INTO trials
(trial_id, case_title, start_date, end_date, status)
VALUES
(1, 'Impeachment Trial of President Alejandro Santos', '2026-08-03', NULL, 'Ongoing');

INSERT INTO participants
(participant_id, trial_id, name, position, role, organization, is_lawyer)
VALUES
-- RESPONDENTS
(1, 1, 'Alejandro Santos', 'President', 'Respondent', 'Executive', TRUE),
(2, 1, 'Maria Lourdes Reyes', 'Vice President', 'Respondent', 'Executive', TRUE),
(3, 1, 'Ramon dela Cruz', 'President', 'Respondent', 'Executive', FALSE),
(4, 1, 'Jose Miguel Bautista', 'Government Official', 'Respondent', 'Executive', FALSE),
(5, 1, 'Teresa Villanueva', 'Vice President', 'Respondent', 'Executive', TRUE),

-- SENATOR-JUDGES
(6, 1, 'Juan Carlos Mendoza', 'Senator', 'Senator-Judge', 'Senate', TRUE),
(7, 1, 'Maria Cristina Aquino', 'Senator', 'Senator-Judge', 'Senate', TRUE),
(8, 1, 'Fernando Garcia', 'Senator', 'Senator-Judge', 'Senate', FALSE),
(9, 1, 'Roberto Manalo', 'Senator', 'Senator-Judge', 'Senate', TRUE),
(10, 1, 'Ana Patricia Flores', 'Senator', 'Senator-Judge', 'Senate', FALSE),

-- PRESIDING OFFICER
(11, 1, 'Eduardo Villareal', 'Senate President', 'Presiding Officer', 'Senate', TRUE),

-- HOUSE PROSECUTORS
(12, 1, 'Antonio Ramirez', 'Congressman', 'House Prosecutor', 'House', TRUE),
(13, 1, 'Liza Mae Navarro', 'Congresswoman', 'House Prosecutor', 'House', TRUE),
(14, 1, 'Manuel Torres', 'Congressman', 'House Prosecutor', 'House', FALSE),
(15, 1, 'Rogelio Fernandez', 'Congressman', 'House Prosecutor', 'House', FALSE),
(16, 1, 'Carmela Santiago', 'Congresswoman', 'House Prosecutor', 'House', TRUE),

-- DEFENSE COUNSEL
(17, 1, 'Atty. Benjamin Castillo', 'Defense Attorney', 'Defense Counsel', 'Defense', TRUE),
(18, 1, 'Atty. Sofia Ramirez', 'Defense Attorney', 'Defense Counsel', 'Defense', TRUE),
(19, 1, 'Atty. Gabriel Mercado', 'Defense Attorney', 'Defense Counsel', 'Defense', TRUE),
(20, 1, 'Atty. Rafael Dominguez', 'Defense Attorney', 'Defense Counsel', 'Defense', TRUE),
(21, 1, 'Atty. Isabella Cruz', 'Defense Attorney', 'Defense Counsel', 'Defense', TRUE);


INSERT INTO articles
(article_id, trial_id, article_number, title, description, status)
VALUES
(1, 1, 1, 'Abuse of Authority',
 'Alleged misuse of official authority for unauthorized government actions.',
 'Pending'),

(2, 1, 2, 'Misuse of Public Funds',
 'Alleged improper utilization of government funds.',
 'Pending'),

(3, 1, 3, 'Conflict of Interest',
 'Alleged participation in decisions involving undisclosed personal interests.',
 'Pending'),

(4, 1, 4, 'Violation of Public Trust',
 'Alleged conduct inconsistent with the responsibilities of public office.',
 'Pending'),

(5, 1, 5, 'Failure to Comply with Government Procedures',
 'Alleged failure to follow established administrative procedures.',
 'Pending');


 INSERT INTO article_respondents
(article_id, participant_id)
VALUES
(1, 1),
(1, 2),

(2, 1),
(2, 3),

(3, 2),
(3, 4),

(4, 1),
(4, 4),
(4, 5),

(5, 3),
(5, 5);

INSERT INTO hearings
(hearing_id, trial_id, hearing_date, hearing_type, description)
VALUES
(1, 1, '2026-08-03', 'Opening', 'Opening of the impeachment trial and reading of the articles.'),
(2, 1, '2026-08-05', 'Prosecution', 'Presentation of the prosecution panel.'),
(3, 1, '2026-08-10', 'Evidence', 'Initial presentation of documentary evidence.'),
(4, 1, '2026-08-12', 'Witness', 'Testimony of the first prosecution witnesses.'),
(5, 1, '2026-08-17', 'Witness', 'Continuation of prosecution witness testimony.'),
(6, 1, '2026-08-20', 'Defense', 'Opening presentation of the defense.'),
(7, 1, '2026-08-24', 'Evidence', 'Presentation of defense documentary evidence.'),
(8, 1, '2026-08-27', 'Witness', 'Defense witness testimony.'),
(9, 1, '2026-09-02', 'Arguments', 'Presentation of closing arguments.'),
(10, 1, '2026-09-07', 'Deliberation', 'Deliberation and preparation for voting.');

INSERT INTO witnesses
(witness_id, trial_id, hearing_id, name, occupation, side)
VALUES
(1, 1, 4, 'Dr. Ernesto Villanueva', 'Government Accountant', 'Prosecution'),
(2, 1, 4, 'Rosario Mendoza', 'Former Government Auditor', 'Prosecution'),
(3, 1, 5, 'Felipe Santos', 'Former Department Officer', 'Prosecution'),
(4, 1, 5, 'Gloria Bautista', 'Financial Analyst', 'Prosecution'),
(5, 1, 5, 'Nicanor Reyes', 'Administrative Officer', 'Prosecution'),

(6, 1, 8, 'Atty. Manuel Santiago', 'Legal Consultant', 'Defense'),
(7, 1, 8, 'Elena Garcia', 'Government Administrator', 'Defense'),
(8, 1, 8, 'Pedro Navarro', 'Public Finance Specialist', 'Defense'),
(9, 1, 8, 'Carolina Torres', 'Former Executive Assistant', 'Defense'),
(10, 1, 8, 'Victor Ramirez', 'Policy Adviser', 'Defense');


INSERT INTO evidence
(evidence_id, trial_id, article_id, hearing_id, submitted_by, evidence_type, description)
VALUES
(1, 1, 1, 3, 12, 'Document', 'Memorandum concerning an alleged executive directive.'),
(2, 1, 1, 3, 13, 'Document', 'Administrative order presented by the prosecution.'),
(3, 1, 2, 3, 12, 'Financial Record', 'Summary of fictional government expenditures.'),

(4, 1, 2, 4, 14, 'Document', 'Government accounting report.'),
(5, 1, 2, 5, 15, 'Financial Record', 'Transaction records presented during testimony.'),

(6, 1, 3, 5, 16, 'Document', 'Disclosure documents concerning an alleged conflict of interest.'),
(7, 1, 3, 5, 12, 'Communication', 'Collection of fictional official communications.'),

(8, 1, 4, 6, 17, 'Document', 'Defense response to the prosecution allegations.'),
(9, 1, 4, 7, 18, 'Financial Record', 'Independent financial analysis submitted by the defense.'),

(10, 1, 4, 7, 19, 'Document', 'Administrative records supporting the defense position.'),
(11, 1, 5, 7, 20, 'Document', 'Government procedure manual cited by the defense.'),

(12, 1, 5, 8, 21, 'Communication', 'Official correspondence submitted by the defense.'),
(13, 1, 1, 8, 17, 'Video', 'Fictional recorded briefing presented during the hearing.'),
(14, 1, 2, 8, 18, 'Document', 'Defense financial reconciliation report.'),
(15, 1, 4, 9, 19, 'Document', 'Final written argument submitted by the defense.');

INSERT INTO votes
(vote_id, trial_id, article_id, participant_id, vote, vote_date)
VALUES

-- ARTICLE I
(1, 1, 1, 6, 'Guilty', '2026-09-10'),
(2, 1, 1, 7, 'Not Guilty', '2026-09-10'),
(3, 1, 1, 8, 'Guilty', '2026-09-10'),
(4, 1, 1, 9, 'Guilty', '2026-09-10'),
(5, 1, 1, 10, 'Not Guilty', '2026-09-10'),

-- ARTICLE II
(6, 1, 2, 6, 'Guilty', '2026-09-11'),
(7, 1, 2, 7, 'Guilty', '2026-09-11'),
(8, 1, 2, 8, 'Not Guilty', '2026-09-11'),
(9, 1, 2, 9, 'Guilty', '2026-09-11'),
(10, 1, 2, 10, 'Not Guilty', '2026-09-11'),

-- ARTICLE III
(11, 1, 3, 6, 'Not Guilty', '2026-09-12'),
(12, 1, 3, 7, 'Not Guilty', '2026-09-12'),
(13, 1, 3, 8, 'Guilty', '2026-09-12'),
(14, 1, 3, 9, 'Not Guilty', '2026-09-12'),
(15, 1, 3, 10, 'Guilty', '2026-09-12'),

-- ARTICLE IV
(16, 1, 4, 6, 'Guilty', '2026-09-13'),
(17, 1, 4, 7, 'Guilty', '2026-09-13'),
(18, 1, 4, 8, 'Guilty', '2026-09-13'),
(19, 1, 4, 9, 'Not Guilty', '2026-09-13'),
(20, 1, 4, 10, 'Guilty', '2026-09-13'),

-- ARTICLE V
(21, 1, 5, 6, 'Not Guilty', '2026-09-14'),
(22, 1, 5, 7, 'Guilty', '2026-09-14'),
(23, 1, 5, 8, 'Not Guilty', '2026-09-14'),
(24, 1, 5, 9, 'Not Guilty', '2026-09-14'),
(25, 1, 5, 10, 'Guilty', '2026-09-14');