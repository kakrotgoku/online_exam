<script type="text/javascript">
    $(document).ready(function () {
        $("#coupon_code").click(function () {
            $("#ccp").toggle();
        });

        $("#ccp").hide();
        function response_value(req) {
            $("#apply_button").button('reset');
            var a = req;
            if (a.indexOf('^') > -1) {
                response_msg = a.split("^");
                if (response_msg[1].length > 0) {
                    $('#result_details').html(response_msg[0]);
                    $('#result_details0').html('');
                    $('.result_details1').html('<?php echo $currency;?>' + response_msg[1]);
                }
                if (response_msg[2].length > 0) {
                    $('#result_details2').html(response_msg[2]);
                }
            }
            else{
                $('#result_details0').html(a);
            }
        }

        $("#apply_button").click(function () {
            $("#apply_button").button('loading');
            var str = $("#post_req1").serialize();
            $.ajax({
                url: "<?php echo $this->Html->url(array('action' => 'coupon'));?>",
                data: str,
                type: "POST",
                context: document.body,
                success: function (data) {
                    response_value(data);
                    location.reload();
                }
            });
        });

        $("#paymentGateway").hide();
        $("#paymentcheck").hide();

           
        $("#proceed_to_pay").click(function () {
            $("#paymentGateway").toggle();
            $("#review_order").toggle();
            $("#paymentcheck").show();

             $("#review").removeClass("bl");
             $("#review").addClass("wh");
             $("#make_payment").addClass("bl");
             $("#make_payment").removeClass("wh");
           
            
        });

         // $('.myClass').click(function() {
         //    var clicks = $(this).data('clicks');
         //    if (clicks) {
         //    // odd clicks
         //    } else {
         //    // even clicks
         //    }
         //    $(this).data("clicks", !clicks);
         //    });

        $("#review").click(function () {
                $("#paymentGateway").toggle();
                $("#review_order").toggle();

                $("#review").removeClass("wh");
                $("#review").addClass("bl");
                $("#make_payment").addClass("wh");
                $("#make_payment").removeClass("bl");
        });

        // $("#make_payment").click(function () {
        //     $("#paymentGateway").toggle();
        //     $("#review_order").toggle();
        // });
        
        


    });
</script>
<style type="text/css">
    strong {
        cursor: pointer;
    }
    .widget>a {
        color: #3a99d9;
    }
    .error_message {
        color: #ff0000;
        font-weight: 600;
        margin-bottom: 3px;
    }

    .success_message {
        color: #5fa724;
        font-weight: 600;
        margin-bottom: 3px;
    }

    .coupon_applied {
        color: #303539;
        font-weight: 600;
        margin-bottom: 3px;
        text-transform: uppercase;
        font-size: 14px;
        border-bottom-style: ridge;
    }

    .cart-summary {
        text-transform: uppercase;
        font-size: 14px;
        font-weight: 600;
    }

    .total-amount {
        font-size: 23px;
        font-weight: bolder;
        font-family: monospace;
        line-height: 55px;
    }

    .order-summary {
        font-size: 20px;
        font-weight: bold;
        line-height: 45px;
    }

    .total {
        font-size: 15px;
        font-weight: 600;
        padding: 10px;
    }

    .cart-summary .line {
        border-bottom-style: solid;
        border-bottom-width: thin;
        padding-top: 10px;
    }
    .prodect_name {
        font-size: 20px;
    }
    .Continue_shopping{
           font-size: 20px;
        color: #5bc0de;
    }
    .widget-title{margin-bottom: 20px}
    .mamount {padding: 0;text-align: right;}



    .table>tbody>tr>td, .table>tfoot>tr>td{
     vertical-align: middle;
    }
    .center{text-align: center;}

    @media screen and (max-width: 600px) {
        .right{float: right;}
        .center{text-align: left;}
        table#cart tbody td .form-control{
            width:20%;
            display: inline !important;
        }
        .actions .btn{
            width:36%;
            margin:1.5em 0;
        }
        
        .actions .btn-info{
            float:left;
        }
        .actions .btn-danger{
            float:right;
        }
        
        table#cart thead { display: none; }
        table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
       /* table#cart tbody tr td:first-child { background: #333; color: #fff; }*/
        table#cart tbody td:before {
            content: attr(data-th); font-weight: bold;
            display: inline-block; 
           /* width: 8rem;*/
        }
        
        
        
        table#cart tfoot td{display:block; }
        table#cart tfoot td .btn{display:block;}
        
    }
    .SECURED{color: #434343;}
    b.SECURED>i {
    font-size: 20px;
    }
    .checkouttable{border: 1px solid #ccc;}
    .checkout-proceed{
        border-top: 1px solid #ccc;
        padding: 16px;
    }
    a {
        color: #337ab7;
    }
    button#proceed_to_pay {
        margin-right: 30px;
        font-size: 16px;
    }
    .checkout-proceed>a {
        font-size: 16px;
    }
    .login_id {
        padding: 16px;
        margin-bottom: 10px;
            font-size: 15px;
    }
      .review_order {
        padding: 16px;
        color: #fff;
    }
    span.login_id>strong {
        font-size: 20px;
    }
    span.login_id>i {
        color: #489a11;
    }
    .login_id.make_payment {
        margin: 10px 0 0 0;
    }
    .bl{background:#000;color: #fff;}
    .wh{background:#f7f7f9;color: #000}
.col-sm-3 {
    font-weight: normal;
}
.col-sm-9 {
    font-weight: normal;
}
input#apply_button {
    margin-top: 5px;
}
button#coupon_code:hover {
    background: #000;
    color: #fff;
}
.summary-heading {
    font-size: 16px;
    font-weight: bold;
    margin-top: 15px;
}
</style>
<section class="section">
    <div class="container mycontainer">    
        <div class="container-fluid">    
            <div class="col-sm-12" style="min-height: 420px;">
                <?php echo $this->Session->flash(); ?>
                <div class="col-sm-9">
                    <div class="col-sm-4 p0">
                        <div class="panel-heading">
                            <div class="widget">
                                <a href="<?php echo  $this->Html->url(array('controller'=>'Carts','action'=>'View')); ?>" >VIEW CART</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 p0">
                        <div class="panel-heading text-center">
                            <div class="widget">
                                <b class="SECURED"><i class="fa fa-lock"></i> SECURED CHECKOUT</b>
                            </div>
                        </div>
                    </div>
                    
                    <div style="clear: both;"></div>
                     <div id="review" class="review_order bl">
                            <span class="login_id">
                                <i id="paymentcheck" class="fa fa-check" aria-hidden="true"></i> 
                                <strong>3. REVIEW ORDER</strong>
                            </span>  
                    </div>

                    <div class="checkouttable">
                        <div id="review_order">
                            <table id="cart" class="table table-hover table-condensed">
                                <thead>
                                    <tr>
                                        <th style="width:50%">Exam</th>
                                        <th style="width:8%" class="center">Quantity</th>
                                        <th style="width:22%" class="center">Total Amount</th>
                                        <!-- <th style="width:10%"></th> -->
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
                                            } ?>
                                        <tr>
                                            <td data-th="Exam">
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                    <?php echo $this->Html->image($photo, array('alt' => h($product['Package']['name']), 'class' => 'img-responsive', 'width' => '100', 'height' => '100')); ?>
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="nomargin">
                                                            <?php echo h($product['Package']['name']); ?>
                                                        </h4>
                                                        <p><?php echo $product['Package']['description']; ?></p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td data-th="Quantity">
                                                <div class="right">
                                            <?php echo $this->Form->hidden('package_id.', array('value' => $product['Package']['id'])); ?>
                                                <label  style="background-color:#eee" class="form-control text-center"><?php  echo $product['Package']['count']; ?></label>
                                                </div>

                                            </td>
                                            <td data-th="Total Amount" class="center">
                                                    <strong class="right" 
                                                    style="font-size:17px;"><?php if ($product['Package']['show_amount'] != $product['Package']['amount']) { ?>
                                                        <strike><span
                                                            style="font-weight: normal;"> 
                                                    <?php echo $currency . 1 * $product['Package']['show_amount']; ?></span>
                                                        </strike><?php } ?> <?php echo $currency . $product['Package']['count'] * $product['Package']['amount']; ?>
                                                </strong>
                                            </td>
                                            <!-- <td class="actions" data-th="">
                                            <?php //echo $this->html->link('<i class="fa fa-trash-o"> REMOVE</i>', array('controller' => 'Carts', 'action' => 'delete', $product['Package']['id']), array( 'class'=>'btn btn-danger btn-sm', 'escape' => false)); ?>
                                                                               
                                            </td> -->
                                        </tr>
                                         <?php $total = $total + ($product['Package']['count'] * $product['Package']['amount']);
                                         $totalQuantity = $totalQuantity + $product['Package']['count']; ?>
                                        <?php endforeach; ?>
                                </tbody>
                            </table>
                            <div class="checkout-proceed">
                                <button id="proceed_to_pay" type="button" class="btn btn-info text-uppercase">proceed to pay</button>
                                <a href="<?php echo $this->html->url(array('controller'=>'Carts','action'=>'View')); ?>">EDIT CART</a>
                            </div>
                        </div>
                    </div>

                    <div id="make_payment" class="login_id make_payment">
                        <span class="login_id"><strong>4. MAKE PAYMENT</strong></span>
                    </div>
                    <div id="paymentGateway" class="checkouttable">
                        <table id="cart" class="table table-hover table-condensed" style="margin:0px">
                            <tbody>
                            <?php if ($products) { ?>
                              <tr>
                                <?php if ($totalAmount == 0) {?>
                                 <td class="center">
                                    <div class=""><?php echo $this->Html->link(__('Free Checkout'), array('controller' => 'checkouts', 'action' => 'paymentGateway', 'FREE'), array('class' => 'btn btn-lg btn-success', 'escape' => false)); ?></div>
                                </td>
                                <?php } else { ?>
                                        <?php if ($CAE == true) { ?>
                                        <td class="center">
                                         <div class=""><?php echo $this->Html->link($this->Html->image('ccavenue.png'), array('controller' => 'checkouts', 'action' => 'paymentGateway', 'CCAVENUE'), array('class' => 'img-thumbnail', 'escape' => false,'id'=>'ccavenue')); ?></div>
                                        </td>
                                      <?php } ?>
                                     
                                     <?php if ($PME == true) { ?>
                                      <td class="center">
                                        <div class=""><?php echo $this->Html->link($this->Html->image('payumoney.png'), array('controller' => 'checkouts', 'action' => 'paymentGateway', 'PAYUMONEY'), array('class' => 'img-thumbnail', 'escape' => false,'id'=>'payu')); ?></div>
                                        </td>
                                        <?php } ?>

                                    <?php if ($PPL == true) { ?>
                                     <td class="center">
                                        <div class=""><?php echo $this->Html->link($this->Html->image('paypal.png'), array('controller' => 'checkouts', 'action' => 'paymentGateway', 'PAYPAL'), array('class' => 'img-thumbnail', 'escape' => false)); ?></div>
                                    </td>
                                    <?php }?>
                                    
                                </tr>
                                <?php }} ?>
                         
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-sm-3 p0">
                    <div class="bg-summary"></div>
                    <div class="cart-summerymain">
                        <div>
                            <div id="result_details0"></div>
                            <div id="result_details">
                                <?php if ($this->Session->check('couponArr')) {
                                    $couponArr = $this->Session->read('couponArr');
                                    $couponTotalAmount = $couponArr['couponTotalAmount'];
                                    $couponCode = $couponArr['couponCode']; ?>
                                    <div class="coupon_applied"><?php echo __("Coupon '%s' Applied", $couponCode); ?>
                                    &nbsp;<?php echo $this->Html->link(__('Remove'), array('controller' => 'checkouts', 'action' => 'couponDelete')); ?>
                                    </div>
                                <?php } else {
                                     if ($totalAmount > 0) {
                                echo $this->Form->create('Checkout', array('name' => 'post_req1', 'id' => 'post_req1')); ?>
                                <button type="button" class="btn btn-block btn-info text-uppercase" id="coupon_code"><?php echo __('Apply Coupon'); ?></button>
                                <div id="ccp" style="margin-top: 5px;">
                                    <input type="text" name="redeem_code" id="redeem_code" autocomplete="off"/>
                                    <input type="button" name="apply" id="apply_button" value="<?php echo __('Apply Now'); ?>"data-loading-text="<?php echo __('Loading'); ?>..." class="btn btn-success btn-xs"/>
                                </div>
                                 <?php echo $this->Form->end();
                                     }
                                } ?>
                            </div>
                           
                        </div>
            	       <?php if ($totalAmount >= 0) {?>
                        <div class="cart-summary">
                            <!-- <div class="total-amount"><?php //echo __('Total'); ?> &nbsp;
                                <span style="float: right;"><div
                                        class="result_details1"><?php //echo $currency . $totalAmount; ?></div></span>
                            </div> -->
                            <!-- <div><?php //echo $this->Html->link(__('Place Order'), array('controller' => 'checkout', 'action' => 'paymentMethod'), array('class' => 'btn btn-block btn-lg btn-success')); ?></div> -->
                            <div class="summary-heading"><?php echo __('Order Summary'); ?></div>
                            <div class="col-sm-9 p0"><?php echo __('Price'); ?></div>
                            <div class="col-sm-3 mamount"><?php echo $currency . $total; ?></div>
                            <div class="col-sm-9 p0"><?php echo __('Processing Fees'); ?></div>
                            <div class="col-sm-3 mamount"><span class="text-success"><?php echo __('Free'); ?></span></div>
                            <div id="result_details2"></div>
                            <?php if ($this->Session->check('couponArr')) {
                                $couponArr = $this->Session->read('couponArr');
                                $couponTotalAmount = $couponArr['couponTotalAmount']; ?>
                                <div class="col-sm-9 p0"><?php echo __('Coupon Discount'); ?></div>
                                <div class="col-sm-3 mamount">-<?php echo $currency . $couponTotalAmount; ?></div>
                            <?php } ?>
                            <div class="col-sm-12 p0">
                                <div class="line"></div>
                            </div>
                            <div class="col-sm-9 total" style="padding-left:0"><b><?php echo __('Total'); ?></b></div>
                            <div class="col-sm-3 total" style="padding-right: 0;text-align: right;">
                                <div class="result_details1"><b><?php echo $currency . $totalAmount; ?></b></div>
                            </div>
                            <div class="" style="font-weight: normal;"><?php echo __('Prices are inclusive of all taxes'); ?></div>
                        </div>
                         <div style="clear: both;"></div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>