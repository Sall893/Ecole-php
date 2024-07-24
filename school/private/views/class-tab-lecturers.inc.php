	<nav class="navbar navbar-light bg-light">
	  <form class="form-inline">
	    <div class="input-group">
	      <div class="input-group-prepend">
	        <span class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i>&nbsp</span>
	      </div>
	      <input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
	    </div>
	  </form>

	  	<div>

	  		<?php if(Auth::access('lecturer')):?>
		 	
			<a href="<?=ROOT?>/single_class/lectureradd/<?=$row->class_id?>?select=true">
				<button class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Ajouter </button>
			</a>			
			<a href="<?=ROOT?>/single_class/lecturerremove/<?=$row->class_id?>?select=true">
				<button class="btn btn-sm btn-primary"><i class="fa fa-minus"></i>Retirer</button>
			</a>
 			<?php endif;?>
 			
		</div>
			
	</nav>

<div class="card-group justify-content-center">
	<?php if(is_array($lecturers)):?>
		<?php foreach($lecturers as $lecturer):?>
			
			<?php 
				$row = $lecturer->user;
				include(views_path('user'));

			?>
		<?php endforeach;?>
	<?php else:?>
		<center><h4>pas de lecteur trouve </h4></center>
	<?php endif;?>
 </div>
 <?php $pager->display()?>