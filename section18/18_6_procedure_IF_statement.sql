-- Host: localhost    Database: my_db18
-- ------------------------------------------------------


use my_db18;



/* IF condition 
  using my_db17
*/
DELIMITER $$
CREATE PROCEDURE judge_student_score ( IN studentId int, IN testId int )
BEGIN
    DECLARE student_score varchar(255);
    select score into student_score from my_db17.examinations where
    student_id = studentId
    and test_id = testId;
    SET @exam_passed = "";
    IF student_score >= 60 THEN
        SET @exam_passed = "passed";
    ELSEIF student_score < 60 THEN
        SET @exam_passed = "failed";
    ELSE 
        SET @exam_passed = "there is no student or test";
    END iF;
    select @exam_passed;
END$$
DELIMITER ;
