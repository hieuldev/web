<?php
include "inc/header.php";
include "inc/slider.php";
?>
<?php
$cat = $cat->show_category();
$max=0;
if ($cat) {
	while ($result = $cat->fetch_assoc()) {
		$getproductbycat=$product->getproductbycat($result['catId']);
$result_pbc=$getproductbycat->fetch_assoc();
if($max<=$result_pbc['COUNT(*)'])
{
	$max=$result_pbc['COUNT(*)'];
}
?>
		<div class="main">
				<div class="content_top">
					<div class="heading">
						<h3><?php echo $result['catName'];  ?></h3>
					</div>
					<div class="clear"></div>
				</div>

				<div class="section group">
					<?php
					$allproduct = $product->allproduct($result['catId']);
					if ($allproduct) {
						while ($result_all = $allproduct->fetch_assoc()) {

					?>
							<div class="grid_1_of_4 images_1_of_4">
								<a href="details.php?proid=<?php echo $result_all['productId'] ?>"><img src="admin/uploads/<?php echo $result_all['image'] ?>" alt="" /></a>
								<h2><?php echo $result_all['productName'] ?></h2>
								<p><?php echo $fm->textShorten($result_all['productName'], 50) ?></p>
								<p><span class="price"><?php echo $fm->format_currency($result_all['price']) . " " . "VND"; ?></span></p>
								<div class="button"><span><a href="details.php?proid=<?php echo $result_all['productId'] ?>" class="details">Chi tiết</a></span></div>
							</div>


					<?php }
					} ?>
				</div>
            </div>
		<?php }
}
 
echo '<div class="page">';
         
            $product_button=ceil($max/4);//ceil làm tròn
            $i=1;
            echo '<p>Trang</p>';
            for($i=1;$i<=$product_button;$i++)
            {
                echo '<a href="products.php?page='.$i.'">'.$i.'</a>';
            }
             
      echo  '</div>';
 ?>
	<?php
		include "inc/footer.php";

		?>