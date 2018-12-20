SET DEFINE OFF;

DROP TABLE artist cascade constraints;
DROP TABLE album cascade constraints;
DROP TABLE song cascade constraints;

PURGE recyclebin;

CREATE TABLE artist(    ar_id integer,
                        name char(20),
                        gender char(20),
                        genre char(20),
                        PRIMARY KEY (ar_id));

CREATE TABLE album(	    al_id integer,
                        ar_id integer,
                        year_made integer,
                        name char(30),
                        cost real,
                        PRIMARY KEY (al_id,ar_id),
                        CONSTRAINT FK_AR_ID FOREIGN KEY (ar_id) REFERENCES artist(ar_id));

CREATE TABLE song(      s_id integer,
                        al_id integer,
                        title char(20),
                        duration char(10),
                        PRIMARY KEY (s_id,al_id),
                        CONSTRAINT FK_AL_ID FOREIGN KEY (al_id) REFERENCES album(al_id));

--artist
INSERT INTO artist VALUES(1, 'Kendrick Lamar', 'M', 'Rap');
INSERT INTO artist VALUES(2, 'Nicki Minaj', 'F', 'Rap');
INSERT INTO artist VALUES(3, 'Luis Fonsi', 'M', 'Latin');
INSERT INTO artist VALUES(4, 'Sia', 'F', 'Dance');
INSERT INTO artist VALUES(5, 'Camila Cabello', 'F', 'Latin');
commit;

--album
INSERT INTO  album VALUES(1, 1, 2017, 'Damn', 8.23);
INSERT INTO  album VALUES(2, 2, 2017, 'The Pinkprint', 5.99);
INSERT INTO  album VALUES(3, 3, 2017, 'Despacito & My Greatest Hits', 9.92);
INSERT INTO  album VALUES(4, 4, 2017, 'This Is Acting', 9.99);
INSERT INTO  album VALUES(5, 5, 2018, 'Camila', 9.97);
commit;			
 
--song
INSERT INTO song VALUES(1, 1, 'God', '00:04:08');
INSERT INTO song VALUES(2, 1, 'Feel', '00:03:34');
INSERT INTO song VALUES(3, 2, 'All Things Go', '00:04:53');
INSERT INTO song VALUES(4, 2, 'Feeling Myself', '00:03:57');
INSERT INTO song VALUES(5, 3, 'Despacito', '00:03:48');
INSERT INTO song VALUES(6, 5, 'Havana', '00:03:37');
commit;