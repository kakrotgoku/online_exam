<?php
class LeaderboardsController extends AppController
{
     public $components = array('RequestHandler');
    public function beforeFilter()
    {
        parent::beforeFilter();
        // $this->authenticate();
    }
    public function crm_index()
    {
       //////////////////// CUSTOM QUERY START ///////////////////////
         $scoreboard=$this->Leaderboard->query("SELECT `points`,`student_id`,`exam_given`,`name`,`rank` FROM (SELECT ROUND(SUM(`percent`)/((SELECT COUNT( `id` ) FROM `exam_results` WHERE `student_id` = `ExamResult`.`student_id` AND `finalized_time` IS NOT NULL)),2) AS `points` ,`student_id`,(SELECT COUNT( `id` ) FROM `exam_results` WHERE `student_id` = `ExamResult`.`student_id` AND `finalized_time` IS NOT NULL) AS `exam_given`, `Student`.`name`,FIND_IN_SET((SELECT ROUND(SUM(`percent`)/((SELECT COUNT( `id` ) FROM `exam_results` WHERE `student_id` = `ExamResult`.`student_id` AND `finalized_time` IS NOT NULL)),2)),(SELECT GROUP_CONCAT(cast(`total` as char)) FROM (SELECT DISTINCT(ROUND(SUM(`percent`)/(SELECT COUNT( `id` ) FROM `exam_results` WHERE `student_id` = `ExamResult`.`student_id` AND `finalized_time` IS NOT NULL),2)) `total` FROM `exam_results` AS `ExamResult` GROUP BY `student_id` ORDER BY 1 DESC) as avg_percent)) AS `rank` FROM `exam_results` AS `ExamResult` INNER JOIN `students` AS `Student` ON `ExamResult`.`student_id` = `Student`.`id` WHERE `finalized_time` IS NOT NULL GROUP BY `student_id`) `Selection` ORDER BY `points` DESC LIMIT 100");
          $this->set('scoreboard',$scoreboard);  


    }

    public function rest_index()
    {
        
            //////////////////// CUSTOM QUERY START ///////////////////////
            // $student_groups=$this->Group->query("SELECT `gr`.`group_name` FROM `groups` AS `gr` LEFT JOIN `student_groups` AS `sg` ON `gr`.`id`=`sg`.`group_id` WHERE `sg`.`student_id`=".$user['Student']['id']);
            // $response = $this->Leaderboard->query("SELECT `student`.`id`,`student`.`name`,`student`.`photo`,`exam`.`id`, `exam`.`name`,`result`.`percent`,`exams_pac`.`exam_id` ,`exams_pac`.`package_id`,`package`.`id`,`package`.`amount` FROM `exam_results` AS `result` LEFT JOIN `exams` AS `exam` ON `result`.`exam_id`= `exam`.`id` LEFT JOIN `students` AS `student` ON `result`.`student_id`=`student`.`id` INNER JOIN `exams_packages` AS `exams_pac` ON `exam`.`id`=`exams_pac`.`exam_id` INNER JOIN `packages` AS `package` ON `exams_pac`.`package_id`=`package`.`id` WHERE `package`.`amount`>0 ORDER BY `result`.`percent` DESC LIMIT 15");

             $response = $this->Leaderboard->query("SELECT `student`.`id`,`student`.`name`,`student`.`photo`,`group`.`group_name`,`exam`.`id`, `exam`.`name`,`result`.`percent`,`exams_pac`.`exam_id` ,`exams_pac`.`package_id`,`package`.`id`,`package`.`amount` FROM `exam_results` AS `result` LEFT JOIN `exams` AS `exam` ON `result`.`exam_id`= `exam`.`id` LEFT JOIN `students` AS `student` ON `result`.`student_id`=`student`.`id` INNER JOIN `exams_packages` AS `exams_pac` ON `exam`.`id`=`exams_pac`.`exam_id` INNER JOIN `packages` AS `package` ON `exams_pac`.`package_id`=`package`.`id` LEFT JOIN `student_groups` AS `studentgrou` ON `student`.`id`=`studentgrou`.`student_id` LEFT JOIN groups AS `group` ON `studentgrou`.`group_id`=`group`.`id` WHERE `package`.`amount`>0 ORDER BY `result`.`percent` DESC LIMIT 15");

            //////////////////// CUSTOM QUERY END ///////////////////////
            
            foreach ($response as $value) {

            	$student_id=$value['student']['id'];
            	$student_name=$value['student']['name'];
            	if ($value['student']['photo']==""){
            		
                    $student_photo= $this->siteDomain.'/img/student_thumb/user.png';
            	}
            	else{
					$student_photo.=$this->siteDomain.'/img/student_thumb/'.$value['student']['photo'];
            	}
            	$exam_id=$value['exam']['id'];
            	$exam_name=$value['exam']['name'];
            	$result_percent=$value['result']['percent'];
            	$package_id=$value['package']['id'];
            	$package_amount=$value['package']['amount'];
                $group=$value['group']['group_name'];
            	$leaderboard[]=array('student_id' =>$student_id,'student_name'=>$student_name,'student_photo'=>$student_photo,'group'=>$group,'exam_id'=>$exam_id,'exam_name'=>$exam_name,'result_percent'=>$result_percent,'package_id'=>$package_id,'package_amount'=>$package_amount);
                 unset($student_photo);
               
            }
            $status = true;
            $message = __('Leader Board data fetch successfully.');
        $this->set(compact('status', 'message', 'leaderboard'));
        $this->set('_serialize', array('status', 'message', 'leaderboard'));
        unset($leaderboard);
         
    }

}