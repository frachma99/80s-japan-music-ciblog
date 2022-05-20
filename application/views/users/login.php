<br><br><br><br>
<?php echo form_open('users/login'); ?>
<div class="container">
    <center>
        <div class="col-md-5 col-md-offset-7">
            <div class="card">
                <h1 class="text-center"><?php echo $title; ?></h1>
                <div class="form-group">
                    <input type="text" name="username" class="form-control" placeholder="Enter Username" required autofocus>
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Enter Password" required autofocus>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login Here</button>
                <a class="btn btn-success btn-block" href="<?php echo base_url(); ?>users/register">Do not have any account? <b>Register here!</b></a>
                <br>
            </div>
    </center>
</div>
<?php echo form_close(); ?>