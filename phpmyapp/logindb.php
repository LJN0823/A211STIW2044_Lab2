<?php
if (!isset($_POST)) {
    $response = array('status' => 'failed', 'data' => null);
    echo "failed";
    die();
}
include_once("dbconnect.php");

$phone = $_POST['phone'];
$password = sha1($_POST['password']);
$sqllogin = "SELECT * FROM tbl_user WHERE user_phone = '$phone' AND user_password = '$password'";

$result = $conn->query($sqllogin);
if ($result->num_rows > 0) {
while ($row = $result->fetch_assoc()) {
        $userlist = array();
        $userlist['id'] = $row['user_id'];
        $userlist['phone'] = $row['user_phone'];
        $userlist['name'] = $row['user_name'];
        $userlist['email'] = $row['user_email'];
        $userlist['address'] = $row['user_address'];
        $userlist['datereg'] = $row['user_datereg'];
        $userlist['otp'] = $row['otp'];
        echo json_encode($userlist);
        $conn->close();
        return;
    }
}else{
    echo "failed";
}
?>