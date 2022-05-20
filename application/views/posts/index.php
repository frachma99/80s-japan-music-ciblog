<div class="card">
    <h2><?= $title; ?></h2>
    <?php if ($this->session->userdata('logged_in')) : ?>
        <a class="btn btn-dark btn-lg-right col-md-3" href="posts/create/">Create New Post</a>
    <?php endif; ?>
    <?php foreach ($posts as $post) : ?>
        <br>
        <h3><?php echo $post['title']; ?></h3>
        <div class="row">
            <div class="col-md-3">
                <img class="post-thumb" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>">
            </div>
            <div class="col-md-9">
                <small class="post-date">
                    Posted on : <?php echo $post['created_at']; ?> in <strong><?php echo $post['name']; ?></strong>
                </small>
                <?php echo word_limiter($post['body'], 130); ?>
                <br>
                <p>
                    <a class="btn btn-dark" href="<?php echo site_url('/posts/' . $post['slug']); ?>">Read More</a>
                </p>
            </div>
        </div>
    <?php endforeach; ?>
    <br>
</div><br>
<center>
    <?php echo $this->pagination->create_links(); ?>
</center>
<br><br>