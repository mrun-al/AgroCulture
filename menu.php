<?php
	if(isset($_SESSION['logged_in']) AND $_SESSION['logged_in'] == 1)
	{
		$loginProfile = "My Profile: ". $_SESSION['Username'];
		$logo = "glyphicon glyphicon-user";
		if($_SESSION['Category']!= 1)
		{
			$link = "Login/profile.php";
		}
		else {
				$link = "profileView.php";
		}
	}
	else
	{
		$loginProfile = "Login";
		$link = " index.php";
		$logo = "glyphicon glyphicon-log-in";
	}
?>

<!DOCTYPE html>
<style type="text/css">
/* #google_translate_element select{

 

background-color:#f6edfd;

color:#383ffa;

border: none;

width: 200px;
    height: 50px;
    font-size: 20px;
	right:0;
border-radius:3px;


} */

#google_translate_element select{
 background:#f6edfd;
 width: 200px;
    height: 50px;
 color:#383ffa;
 border: none;
 border-radius:3px;
 padding:6px 8px
 }
 
 /*google translate link | logo */
   .goog-logo-link,.goog-te-gadget span,div#goog-gt-{
   display:none!important;
   }
 .goog-te-gadget{
   color:transparent!important;
   font-size:0;
 }
 
 /* google translate banner-frame */
 
 .goog-te-banner-frame{
 display:none !important;
 }

 
 #goog-gt-tt, .goog-te-balloon-frame{display: none !important;}
.goog-text-highlight { background: none !important; box-shadow: none !important;}
 
 body{top:0!important;}
</style>
<header id="header">
				<h1><a href="#" style="font-style: italic; font-weight: bold;">RfarmQuipment</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="index.php"><span class="glyphicon glyphicon-home"></span> Home</a></li>
						<!-- <li><a href="myCart.php"><span class="glyphicon glyphicon-shopping-cart"> MyCart</a></li> -->
						<?php
						if(isset($_SESSION['logged_in']) AND $_SESSION['logged_in'] == 1){
							?>
							<li><a href="myCart.php"><span class="glyphicon glyphicon-shopping-cart"> MyCart</a></li>
							<li><a href="<?= $link; ?>"><span class="<?php echo $logo; ?>"></span><?php echo" ". $loginProfile; ?></a></li>
							<li><a href="market.php"><span class="glyphicon glyphicon-grain"> Digital-Market</a></li>
						 <li><a href="blogView.php"><span class="glyphicon glyphicon-comment">Farm-Worker</a></li> 
						<?php
						}
	
						?>
						<div id="google_translate_element"></div>

<script type="text/javascript">
function googleTranslateElementInit() {
new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'hi,mr,en,gu,kn,ta',layout: 'google.translate.TranslateElement.InlineLayout.VERTICAL'}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
						
					</ul>
				</nav>
			</header>
			</body>
</html>
