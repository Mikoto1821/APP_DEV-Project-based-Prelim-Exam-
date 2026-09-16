CREATE TABLE trials (
    trial_id INT PRIMARY KEY,
    case_title VARCHAR(150) NOT NULL,
    start_date DATE,
    end_date DATE,
    status VARCHAR(30)
);

CREATE TABLE participants (
    participant_id INT PRIMARY KEY,
    trial_id INT,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100),
    role VARCHAR(50) NOT NULL,
    organization VARCHAR(50),
    is_lawyer BOOLEAN,

    FOREIGN KEY (trial_id)
        REFERENCES trials(trial_id)
);

CREATE TABLE articles (
    article_id INT PRIMARY KEY,
    trial_id INT,
    article_number INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    status VARCHAR(30),

    FOREIGN KEY (trial_id)
        REFERENCES trials(trial_id)
);

CREATE TABLE article_respondents (
    article_id INT,
    participant_id INT,

    PRIMARY KEY (article_id, participant_id),

    FOREIGN KEY (article_id)
        REFERENCES articles(article_id),

    FOREIGN KEY (participant_id)
        REFERENCES participants(participant_id)
);


CREATE TABLE hearings (
    hearing_id INT PRIMARY KEY,
    trial_id INT,
    hearing_date DATE NOT NULL,
    hearing_type VARCHAR(50),
    description TEXT,

    FOREIGN KEY (trial_id)
        REFERENCES trials(trial_id)
);

CREATE TABLE witnesses (
    witness_id INT PRIMARY KEY,
    trial_id INT,
    hearing_id INT,
    name VARCHAR(100) NOT NULL,
    occupation VARCHAR(100),
    side VARCHAR(30),

    FOREIGN KEY (trial_id)
        REFERENCES trials(trial_id),

    FOREIGN KEY (hearing_id)
        REFERENCES hearings(hearing_id)
);


CREATE TABLE evidence (
    evidence_id INT PRIMARY KEY,
    trial_id INT,
    article_id INT,
    hearing_id INT,
    submitted_by INT,
    evidence_type VARCHAR(50),
    description TEXT,

    FOREIGN KEY (trial_id)
        REFERENCES trials(trial_id),

    FOREIGN KEY (article_id)
        REFERENCES articles(article_id),

    FOREIGN KEY (hearing_id)
        REFERENCES hearings(hearing_id),

    FOREIGN KEY (submitted_by)
        REFERENCES participants(participant_id)
);

CREATE TABLE votes (
    vote_id INT PRIMARY KEY,
    trial_id INT,
    article_id INT,
    participant_id INT,
    vote VARCHAR(30) NOT NULL,
    vote_date DATE,

    FOREIGN KEY (trial_id)
        REFERENCES trials(trial_id),

    FOREIGN KEY (article_id)
        REFERENCES articles(article_id),

    FOREIGN KEY (participant_id)
        REFERENCES participants(participant_id)
);