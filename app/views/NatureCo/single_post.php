<?php $this->view("NatureCo/header",$data);?>

<section class="section background-white">


            <div class="s-12 m-12 l-4 center">
              <h1 class="margin-bottom-20 text-dark text-center"><?=$data['post']->title?></h1>
              <img src="<?=ROOT. $data['post']->image?>">
              <br>
              <h4 style="text-align: center;"><?=$data['post']->description?></h4>
              <br>
              <p style="text-align: center;">Upload by <?=$data['post']->uploader?></p>
            </div>           
          </section>

<?php $this->view("NatureCo/footer",$data);?>