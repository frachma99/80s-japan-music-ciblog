<?php echo validation_errors(); ?>

<?php echo form_open_multipart('posts/create'); ?>
<form>
	<div class="form-group">
		<label style="background-color:white">Title</label>
		<input type="text" class="form-control" name="title" placeholder="Add Title">
	</div>
	<div class="form-group">
		<label style="background-color:white">Body</label>
		<textarea id="editor1" class="form-control" name="body" placeholder="Add Body"></textarea>
	</div>
	<div class="form-group">
		<label style="background-color:white">Category</label>
		<select name="category_id" class="form-control">
			<?php foreach ($categories as $category) : ?>
				<option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
			<?php endforeach; ?>
		</select>
	</div>
	<div class="form-group">
		<label style="background-color:white">Upload Image</label>
		<input type="file" name="userfile">
	</div>
	<button type="submit" class="btn btn-primary">Submit</button>
</form>
