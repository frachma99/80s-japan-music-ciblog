<h2><?= $title; ?></h2>
<br>
<?php echo validation_errors(); ?>

<?php echo form_open_multipart('categories/create'); ?>
<div class="form-group">
    <label>Category Name</label>
    <br>
    <input type="text" class="form-control" name="name" placeholder="Enter Category Name">
</div>
<button type="submit" class="btn btn-primary">Submit</button>
</form>