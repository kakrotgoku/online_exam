<?php if (count($products)==0) { ?>
<style type="text/css">
    .img-thumbnail>img {
    max-width: 220px;
    min-width: 220px;
}
</style>
<section class="section">
    <div class="container mycontainer">    
        <div class="container-fluid">       
            <div class="col-md-12 product-info">
                <div class="col-md-12">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="empty-cart">
                            <center>
                            <a class="cartbag" href="<?php echo $siteDomain ?>"><i class="fa fa-shopping-bag"></i></a>
                            <br>
                            <br>
                            <span class="text-uppercase empty-msg">your cart is empty</span>
                            <p class="add-item-msg">Add exams to your cart now!</p>
                            </center>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
                 <div class="col-md-12">
                        <div class="page-heading">
                            <div class="widget">
                                <h2 class="title-border">FEATURED EXAMS</h2>
                            </div>
                        </div>
                        <div class="flexslider carousel">
                          <ul class="slides">
                                <?php //$Packages;
                                    foreach ($Packages as $Packagesvalue) {
                                         $Package_id=$Packagesvalue['Package']['id'];
                                          $Packagesvalue['Package']['name'];
                                          $Packagesvalue['Package']['photo'];
                                          if ($id!=$Package_id) {
                                        ?>
                                        <li>
                                            <div class="col-md-12">
                                                 <a href="<?php echo $this->Html->url(array('controller' => 'Packages', 'action' => 'singleproduct/'.$Package_id)) ?>">
                                                    <div class="img-thumbnail">
                                                          <?php if (strlen($Packagesvalue['Package']['photo']) > 0) {
                                                            $photo1 = "package/" . $Packagesvalue['Package']['photo'];
                                                        } else {
                                                            $photo1 = "nia.png";
                                                        } ?>
                                                     <?php echo $this->Html->image($photo1, array('alt' => $post['Package']['name'],'class'=>'img-package')); ?>
                                                    </div>
                                                    <div style="clear: both;"></div>
                                                        <h4 class="text-info text-center"><?php echo $Packagesvalue['Package']['name']; ?></h4>
                                                 </a>
                                                </div>
                                        </li>
                                        <?php
                                         }
                                    }
                                 ?>
                             </ul>
                        </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div style="clear: both;"></div>
<script type="text/javascript">
        $(document).ready(function () {
            $('.flexslider').flexslider({
               animation: "slide",
                animationLoop: false,
                itemWidth: 241,
                itemMargin: 5,
                minItems: 2,
                maxItems: 4,
            });
        });
</script>

<?php } else {?>
<section class="section">
    <div class="container mycontainer">
        <div class="col-sm-12">
            <div class="col-sm-12">
                <div class="panel-heading">
                    <div class="widget">
                        <h2 class="title-border m0"><?php echo __('Shopping Cart'); ?></h2>
                    </div>
                </div>
                <?php //echo $this->Html->link('' . __('Continue shopping'), array('controller' => 'Packages'), array('class' => 'Continue_shopping', 'escape' => false)); ?>
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th class="text-center">Price</th>
                                                <th class="text-center">Total Amount</th>
                                                <th> </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                    <?php $total = 0;
                                    $totalQuantity = 0; ?>
                                    <?php foreach ($products as $product):
                                        if (strlen($product['Package']['photo']) > 0) {
                                            $photo = "package_thumb/" . $product['Package']['photo'];
                                        } else {
                                            $photo = "nia.png";
                                        }
                                        $id=$product['Package']['id'];
                                        $viewUrl = $this->Html->url(array('controller' => 'Packages', 'action' => "view", $id));
                                         ?>
                                            <tr>
                                                <td class="col-sm-8 col-md-6">
                                                <div class="media">
                                                    <a class="thumbnail pull-left" href="" onclick"show_modal(<?php echo $viewUrl; ?>)">
                                                        <?php echo $this->Html->image($photo, array('alt' => h($product['Package']['name']), 'class' => 'img-thumbnail img-package', 'width' => '100', 'height' => '100')); ?>
                                                     </a>

                                                    <div class="media-body">
                                                        <h4 class="media-heading">
                                                            <?php echo $this->Html->link(h($product['Package']['name']), 'javascript:void(0);', array('onclick' => "show_modal('$viewUrl');", 'escape' => false, 'class' => '')); ?>
                                                            </h4>
                                                        <span>Exams: </span><span class="text-success"><strong><?php foreach ($product['Exam'] as $examName):
                                            echo h($examName['name']); ?> |
                                        <?php endforeach;
                                        unset($examName);
                                        unset($examName); ?></strong></span>
                                                    </div>
                                                </div></td>
                                                <td class="col-sm-1 col-md-1" style="text-align: center">
                                                    <div
                                                        align="center"><?php echo $this->Form->hidden('package_id.', array('value' => $product['Package']['id'])); ?>
                                                        <?php //echo $this->Form->input('count.',array('type'=>'number', 'label'=>false,'class'=>'form-control input-sm', 'value'=>$product['Package']['count']));
                                                        echo $product['Package']['count']; ?></div>
                                                </td>
                                                <td class="col-sm-1 col-md-1 text-center">
                                                     <strong style="font-size:17px;">
                                                            <?php if ($product['Package']['show_amount'] != $product['Package']['amount']) { ?>
                                                                <strike>
                                                                    <span style="font-weight: normal;"> <?php echo $currency . $product['Package']['show_amount']; ?></span>
                                                                </strike>
                                                                <?php } ?> <?php echo $currency . $product['Package']['count'] * $product['Package']['amount']; ?>
                                                        </strong>
                                                </td>
                                                <td class="col-sm-1 col-md-1">
                                                    <?php echo $this->html->link('<span class="glyphicon glyphicon-remove"></span> Remove', array('controller' => 'Carts', 'action' => 'delete', $product['Package']['id']), array('escape' => false,'class'=>'btn btn-danger')); ?>
                                                 </td>
                                            </tr>
                                            <?php $total = $total + ($product['Package']['count'] * $product['Package']['amount']);
                                            $totalQuantity = $totalQuantity + $product['Package']['count']; ?>
                                        <?php endforeach; ?>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td>   </td>
                                                <td>   </td>
                                                <td><h3>Total</h3></td>
                                                <td class="text-right"><h3><?php echo $currency.$total ?></h3></td>
                                            </tr>
                                            <tr>
                                                <td>   </td>
                                                <td>   </td>
                                                <td>
                                                <button type="button" class="btn btn-default" onclick="location.href='<?php echo $this->Html->url(array('controller'=>'Packages','action'=>'index'))?>'">
                                                     <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                                                </button>
                                                

                                            </td>
                                                <td>
                                                    <?php if ($total == 0) {?>
                                                        <button type="button" class="btn btn-success" onclick="location.href='<?php echo $this->Html->url(array('controller'=>'Checkouts','action'=>'index'))?>'">
                                                    Proceed to Free Checkout <span class="glyphicon glyphicon-play"></span>
                                                </button></td>
                                                    <?php }else{ ?>
                                                            <button type="button" class="btn btn-success" onclick="location.href='<?php echo $this->Html->url(array('controller'=>'Checkouts','action'=>'index'))?>'">
                                                    Checkout <span class="glyphicon glyphicon-play"></span>
                                                </button>
                                                     <?php } ?>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
            </div>
            <?php echo $this->Form->end(); ?>
            
        </div>
    </div>
     <div class="modal fade" id="targetModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-content">
            </div>
        </div>
</section>
<?php } ?>