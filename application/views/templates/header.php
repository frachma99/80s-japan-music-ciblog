<html>

<head>
  <title>80's Japan Music - What You Need to Know</title>
  <link rel="stylesheet" href="https://bootswatch.com/4/sketchy/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style.css">
  <script src="http://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
</head>

<div class="bg">
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="<?php echo base_url(); ?>">80's Japan Musicology+</a>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>posts">Our Contents</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>categories">Categories</a>
          </li>
        </ul>
        <ul class="navbar-nav navbar-right">
          </li>
          <?php if ($this->session->userdata('logged_in')) : ?>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url(); ?>recommendations/">Recommendations</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url(); ?>users/logout">Logout</a>
            </li>
          <?php endif; ?>
          <?php if (!$this->session->userdata('logged_in')) : ?>
            <a class="navbar-brand" href="#">Get great music recommendations by -> </a>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url(); ?>users/login">Login</a>
            </li>
          <?php endif; ?>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container">
    <br>
    <?php if ($this->session->flashdata('user_registered')) : ?>
      <?php echo '<p class="alert alert-success">' . $this->session->flashdata('user_registered') . '</p>'; ?>
    <?php endif; ?>
    <?php if ($this->session->flashdata('post_created')) : ?>
      <?php echo '<p class="alert alert-success">' . $this->session->flashdata('post_created') . '</p>'; ?>
    <?php endif; ?>
    <?php if ($this->session->flashdata('post_updated')) : ?>
      <?php echo '<p class="alert alert-success">' . $this->session->flashdata('post_updated') . '</p>'; ?>
    <?php endif; ?>
    <?php if ($this->session->flashdata('post_deleted')) : ?>
      <?php echo '<p class="alert alert-success">' . $this->session->flashdata('post_deleted') . '</p>'; ?>
    <?php endif; ?>
    <?php if ($this->session->flashdata('category_created')) : ?>
      <?php echo '<p class="alert alert-success">' . $this->session->flashdata('category_created') . '</p>'; ?>
    <?php endif; ?>
    <?php if ($this->session->flashdata('login_failed')) : ?>
      <?php echo '<p class="alert alert-danger">' . $this->session->flashdata('login_failed') . '</p>'; ?>
    <?php endif; ?>
    <?php if ($this->session->flashdata('user_loggedin')) : ?>
      <?php echo '<p class="alert alert-success">' . $this->session->flashdata('user_loggedin') . '</p>'; ?>
    <?php endif; ?>
    <?php if ($this->session->flashdata('user_loggedout')) : ?>
      <?php echo '<p class="alert alert-success">' . $this->session->flashdata('user_loggedout') . '</p>'; ?>
    <?php endif; ?>