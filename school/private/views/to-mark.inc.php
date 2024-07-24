<div class="card-group justify-content-center">

<div class="table-responsive container-fluid p-0" >
	<table class="table table-striped table-hover">
		<tr><th></th><th>Nom Devoir</th><th>Etudiant</th><th>Date De Soumission</th>
			<th>Repondu</th>
			<th>Maquer</th>
			<th></th>
		</tr>
		<?php if(isset($test_rows) && $test_rows):?>
			 
			<?php foreach ($test_rows as $test_row):?>
			 
			 <tr>
			 	<td>
			 		<?php if(Auth::access('lecturer')):?>
			 		<a href="<?=ROOT?>/mark_test/<?=$test_row->test_id?>/<?=$test_row->user->user_id?>">
			 			<button class="btn btn-sm btn-primary">Marque ce Devoir <i class="fa fa-chevron-right"></i></button>
			 		</a>
			 		<?php endif;?>
			 	</td>
			 	<td><?=$test_row->test_details->test?></td>
			 	<td><?=$test_row->user->firstname?> <?=$test_row->user->lastname?></td>
			 	<td><?=get_date($test_row->submitted_date)?></td>

			 	<td>
			 		<?php 
			 			$percentage = get_answer_percentage($test_row->test_id,$test_row->user_id);
			 		?>
 					<?=$percentage?>%
			 	</td>
			 	<td>
			 		<?php $marked_percentage = get_mark_percentage($test_row->test_id,$test_row->user_id)?>
			 		<?=$marked_percentage?>%
			 	</td>
				<td>
			 		<?php if(can_take_test($test_row->test_id)):?>
			 		<a href="<?=ROOT?>/take_test/<?=$test_row->test_id?>">
			 		 <button class="btn btn-sm btn-primary">Prendre ce Devoir</button>
			 		</a>
			 		<?php endif;?>

			 	</td>

			 </tr>

 			<?php endforeach;?>
			<?php else:?>
				<tr><td colspan="6"><center>Pas de devoir trouvé pour le moment</center></td></tr>
			<?php endif;?>

	</table>
</div>
</div>