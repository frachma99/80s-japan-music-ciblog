<h2><?= $title; ?></h2>
<br>
<ul class="list-group">
<?php foreach($categories as $category) : ?>
    <li class="list-group-item">
        <a href="<?php echo site_url ('/categories/posts/' .$category['id']); ?>"><?php echo $category['name']; ?></a>
    </li>
<?php endforeach; ?>
</ul><br>

<?php if($this->session->userdata('logged_in')) : ?>
<a class="btn btn-dark pull-right" href="categories/create/">Create New Category</a>
<?php endif; ?>