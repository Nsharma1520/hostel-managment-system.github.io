<?php
include '../partials/db_connect.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leave Requests- NIT KKR</title>
    <link rel="shortcut icon" href="../image/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="../css/student.css">
    <link rel="stylesheet" href="../css/leaverequest.css">
</head>

<body>
    <?php
    $user_id = $_GET['id'];
    ?>
    <div class="nav-content">
        <div class="wrapper">
            <div class="nav-align">
                <div class="nav-logo">
                    <a href=""><img src="../image/logo.png" alt="NIT kkr Logo" style="background-color:white;"></a>
                </div>
                <div class="nav-links">
                    <ul class="text-center">
                        <li style="color:white;">Welcome,</li>
                        <li style="color:#01bf71;">
                            <?php echo $user_id; ?>
                        </li>
                        <button class="btn-primary res-btn" style="margin-left:2vw; margin-top:2.5vh;"
                            onclick="change2()">Logout</button>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <h2 class="text-center">Male</h2>
    <table>
        <tr style="background-color:#3498db;">
            <th>Name</th>
            <th>Roll No</th>
            <th>Hostel No</th>
            <th>Room No</th>
            <th>From</th>
            <th>To</th>
            <th>Reason</th>
        </tr>
        <?php
        $sql = "SELECT * FROM leaverequest";
        $res = mysqli_query($conn, $sql);
        $count = mysqli_num_rows($res);
        if ($count > 0) {
            while ($rows = mysqli_fetch_assoc($res)) {
                $name = $rows['student_name'];
                $roll_no = $rows['student_roll'];
                $hostel_no = $rows['hostel_no'];
                $from = $rows['from_date'];
                $to = $rows['to_date'];
                $reason = $rows['reason'];
                $room_no = $rows['room_no'];
                $gender = $rows['student_gender'];

                if ($gender == "Male") {
                    $fromparts = explode('-', $from);
                    $toparts = explode('-', $to);
                    if (date('Y') >= $fromparts[0] && date('Y') <= $toparts[0] && date('m') >= $fromparts[1] && date('m') <= $toparts[1] && date('d') >= $fromparts[2] && date('d') <= $toparts[2]) {
                        ?>
                        <tr>
                            <td>
                                <?php echo $name ?>
                            </td>
                            <td>
                                <?php echo $roll_no ?>
                            </td>
                            <td>
                                <?php echo $hostel_no ?>
                            </td>
                            <td>
                                <?php echo $room_no ?>
                            </td>
                            <td>
                                <?php echo $from ?>
                            </td>
                            <td>
                                <?php echo $to ?>
                            </td>
                            <td>
                                <?php echo $reason ?>
                            </td>
                        </tr>
                        <?php
                    }
                }
            }
        }
        ?>
    </table>
    <h2 class="text-center">Female</h2>
    <table>
        <tr style="background-color:#3498db;">
            <th>Name</th>
            <th>Roll No</th>
            <th>Hostel No</th>
            <th>Room No</th>
            <th>From</th>
            <th>To</th>
            <th>Reason</th>
        </tr>
        <?php
        $sql = "SELECT * FROM leaverequest";
        $res = mysqli_query($conn, $sql);
        $count = mysqli_num_rows($res);
        if ($count > 0) {
            while ($rows = mysqli_fetch_assoc($res)) {
                $name = $rows['student_name'];
                $roll_no = $rows['student_roll'];
                $hostel_no = $rows['hostel_no'];
                $from = $rows['from_date'];
                $to = $rows['to_date'];
                $reason = $rows['reason'];
                $room_no = $rows['room_no'];
                $gender = $rows['student_gender'];

                if ($gender == "Female") {
                    $fromparts = explode('-', $from);
                    $toparts = explode('-', $to);
                    if (date('Y') >= $fromparts[0] && date('Y') <= $toparts[0] && date('m') >= $fromparts[1] && date('m') <= $toparts[1] && date('d') >= $fromparts[2] && date('d') <= $toparts[2]) {
                        ?>
                        <tr>
                            <td>
                                <?php echo $name ?>
                            </td>
                            <td>
                                <?php echo $roll_no ?>
                            </td>
                            <td>
                                <?php echo $hostel_no ?>
                            </td>
                            <td>
                                <?php echo $room_no ?>
                            </td>
                            <td>
                                <?php echo $from ?>
                            </td>
                            <td>
                                <?php echo $to ?>
                            </td>
                            <td>
                                <?php echo $reason ?>
                            </td>
                        </tr>
                        <?php
                    }
                }
            }
        }
        ?>
    </table>

    <script src="../js/script.js"></script>
</body>