 
   <script type="text/javascript" src="{$WEB_ROOT}/ssltools/js/jquery-3.0.0.min.js"></script>
    <script type="text/javascript" src="{$WEB_ROOT}/ssltools/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="{$WEB_ROOT}/ssltools/js/common.js"></script>
{include file="orderforms/digit/common.tpl"}

<div id="order-digit" style="margin-top: 0; padding: 0;">
  <div class="row" style="margin-top: 0; margin-bottom: 0;">

      {include file="orderforms/digit/sidebar-categories-collapsed.tpl"}
	
 <!-- OPIS HOSTINGU WWW -->
	{if $productGroup.name == "Hosting www"}
		<div class="container text-justify" style="font-size: 16px; margin-top: 0; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
				<h4 class="container card-title p-3 bg-primary text-white text-center" style="padding: 1em;">Hosting SSD NVMe</h4>

		  <div">
			<p style="background: #2f3042; padding: 3em; float: left; line-height: 2; font-family: "Raleway", sans-serif; font-weight: 600;">
				<img src="{$WEB_ROOT}/templates/{$template}/img/hosting.png" alt="domain" style="margin-top: 10px; width: 45%; float: left; margin-right: 2em;">
				Nasza myśl przewodnia to „Dostarczać usługi z których sami chcielibyśmy korzystać.
				Dlatego nie uznajemy półśrodków i stawiamy na najlepsze i niezawodne rozwiązania.
				Nasz hosting idealnie sprawdzi się na strony firmowe, blogi, sklepy internetowe, czy aplikacje.
				Idealnie nadaje się m.in. pod Wordpress, Prestashop, jak również pod aplikacje
				Ruby, Node.js, czy Python.</p>
		  </div>
		</div>
	  
	  	  <div class="text-center" style="font-size: 16px; margin-top: 1em; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
			<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Pakiety usług</h4>
		</div>
	{/if}

 <!-- END -->	

 <!-- OPIS HOSTINGU RESELLER -->
 
	{if $productGroup.name == "Hosting reseller"}

		<div class="container text-justify" style="font-size: 16px; margin-top: 0; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
				<h4 class="container card-title p-3 bg-primary text-white text-center" style="padding: 1em;">Hosting reseller</h4>

		  <div">
			<p style="background: #2f3042; padding: 3em; float: left; line-height: 2; font-family: "Raleway", sans-serif; font-weight: 600;">
				<img src="{$WEB_ROOT}/templates/{$template}/img/reseller.png" alt="domain" style="margin-top: 10px; width: 45%; float: left; margin-right: 2em;">
				Hosting reseller umożliwia oferowanie Twoim klientom spersonalizowanych kont hostingowych.	
				Pakiet resellera zawiera m.in.: dostęp poprzez SSH, GIT, ochronę antyspamową, antywirusową i inne.</p>
		  </div>
		</div>
	  
	  	  <div class="text-center" style="font-size: 16px; margin-top: 1em; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
			<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Konto reseller to idealne rozwiązanie dla:</h4>
		</div>	  

		<div style="background: #2f3042; padding: 1em;">
			<ul style="line-height: 2; font-family: "Raleway", sans-serif; font-weight: 600;">
				<li><strong>Freelancer</strong> –  Daj możliwość samodzielnego zarządzania stroną swoim klientom w ramach konta hostingowego i zyskaj więcej czasu na realizację kolejnych projektów</li>
				<li><strong>Agencja Interaktywna / Software House</strong> – Dzięki zewnętrznej usłudze hostingowej możesz zyskać dodatkowe źródło zarobku dla swojej firmy w postaci klienta na hosting, zostawiając nam kwestie techniczne.</li>
			</ul>
		</div>		
		
		<div class="text-center" style="font-size: 16px; margin-top: 1em; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
			<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Cennik</h4>
		</div>

	{/if}

 <!-- END -->	
 	{if $productGroup.name == "Certyfikaty SSL"}		
		<div class="container text-justify" style="font-size: 16px; margin-top: 0; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
				<h4 class="container card-title p-3 bg-primary text-white text-center" style="padding: 1em;">Certyfikaty SSL</h4>

		  <div">
			<p style="background: #2f3042; padding: 3em; float: left; line-height: 2; font-family: "Raleway", sans-serif; font-weight: 600;">
				<img src="{$WEB_ROOT}/templates/{$template}/img/security_1.png" alt="domain" style="margin-top: 10px; width: 45%; float: left; margin-right: 2em;">
				Certyfikat SSL to podstawa poufnej komunikacji między przeglądarką i serwerem.
				Taka komunikacja jest niezbędna przy przetwarzaniu danych osobowych np. w sklepach internetowych czy formularzach.
				Obecnie posiadanie tzw. kłódeczki przy adresie to standard, który zapewnia większą wiarygodność użytkowników Twojej strony.
				Szyfrowane połączenie poprawia również pozycję strony w wyszukiwarce.
			</p>
		  </div>
		</div>		
		
			  	  <div class="text-center" style="font-size: 16px; margin-top: 1em; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
			<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Cennik SSL</h4>
		</div>
			{/if}

      <div class="products" id="products">
        <div class="row row-eq-height">
          {foreach $products as $key => $product}
            <div class="col-md-4">
              <div class="product clearfix" id="product{$product@iteration}">
                <header>
                  {if $product.isFeatured}
                    <div class="txt-container">{$LANG.featuredProduct}</div>
                  {/if}
                  <i class="fad fa-hdd"></i>
                  <span id="product{$product@iteration}-name">{$product.name}</span>
                  {if $product.stockControlEnabled}
                    <span class="qty">
                      {$product.qty} {$LANG.orderavailable}
                    </span>
                  {/if}
                </header>
                <div class="product-pricing" id="product{$product@iteration}-price">
                  {if $product.bid}
                    {$LANG.bundledeal}<br />
                    {if $product.displayprice}
                      <span class="price">{$product.displayprice}</span>
                    {/if}
                  {else}
                    {if $product.pricing.hasconfigoptions}
                      {$LANG.startingfrom}
                      <br />
                    {/if}
                    <span class="price">{$product.pricing.minprice.price}</span>
                    {if $product.pricing.minprice.cycle eq "monthly"}
                      {$LANG.orderpaymenttermmonthly}
                    {elseif $product.pricing.minprice.cycle eq "quarterly"}
                      {$LANG.orderpaymenttermquarterly}
                    {elseif $product.pricing.minprice.cycle eq "semiannually"}
                      {$LANG.orderpaymenttermsemiannually}
                    {elseif $product.pricing.minprice.cycle eq "annually"}
                      {$LANG.orderpaymenttermannually}
                    {elseif $product.pricing.minprice.cycle eq "biennially"}
                      {$LANG.orderpaymenttermbiennially}
                    {elseif $product.pricing.minprice.cycle eq "triennially"}
                      {$LANG.orderpaymenttermtriennially}
                    {/if}
                    {if $product.pricing.minprice.setupFee}
                      <small>{$product.pricing.minprice.setupFee->toPrefixed()} {$LANG.ordersetupfee}</small>
                    {/if}
                  {/if}
                </div>
                <div class="product-desc">
                  {if $product.featuresdesc}
                    <p id="product{$product@iteration}-description">
                      {$product.featuresdesc}
                    </p>
                  {/if}
                  <ul>
                    {foreach $product.features as $feature => $value}
                      <li id="product{$product@iteration}-feature{$value@iteration}">
                        <span class="feature-value">{$value}</span>
                        {$feature}
                      </li>
                    {/foreach}
                  </ul>
                </div>
                <footer>
                  <a href="{$WEB_ROOT}/cart.php?a=add&{if $product.bid}bid={$product.bid}{else}pid={$product.pid}{/if}"
                    class="wdes-digit-order-btn btn btn-success btn-sm" id="product{$product@iteration}-order-button">
                    <i class="fad fa-shopping-cart"></i>
                    {$LANG.ordernowbutton}
                  </a>
                </footer>
              </div>
            </div>
            {if $product@iteration % 3 == 0}
            </div>
            <div class="row row-eq-height">
            {/if}
          {/foreach}
        </div>
      </div>
    </div>
  </div>
</div>

 <!-- TABELA PORÓWNANIE PAKIETÓW HOSTING -->


{if $productGroup.name == "Hosting www"}	
 
	<div class="container text-center" style="font-size: 16px; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
		<div class="row">
			<div class="card">
				<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Szczegółowe porównanie pakietów</h4>
			</div>
		</div>
	</div>
	
	<div class="alert alert-info visible-xs" style="margin-top: 0;"> 
		<i class="fa fa-lightbulb-o fa-fw"></i> Tabelkę ze szczegółową ofertą można przewijać. 
	</div>
 
<div class="row comparison" style="margin-top: 0;"> 
	<div class="col-md-12 table-responsive"> 
	<table class="table comparison-table wdes-block" style="margin-top: 0;"> 
	<thead> 
	<tr> <th></th> 
	<th class="offer-value">HOST 5GB</th> 
	<th class="offer-value">HOST 25GB</th> 
	<th class="offer-value">HOST 50GB</th> 
	<th class="offer-value">HOST 100GB</th> 
	<th class="offer-value">HOST 200GB</th> 
	</tr> </thead>

	<tbody> <tr> <td class="field-name">
	<a href="/php71.html" target="_blank">PHP 7.1</a>, 
	<a href="/php72.html" target="_blank">PHP 7.2</a>, 
	<a href="/php73.html" target="_blank">PHP 7.3</a> 
	oraz <a href="/php74.html" target="_blank">PHP 7.4</a> 
	</td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Django, Pyramid, Catalyst, RoR, Node.js, Redmine, Trac </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
  </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Python, Ruby, Perl, Java, TCL/TK, Lua, Erlang, Pascal, C, C++, D </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Repozytoria GIT, SVN i HG (Mercurial) </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> MySQL, PostgreSQL </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

  </td> </tr> <tr> <td class="field-name"> Zarządzanie strefą DNS </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> </tr> <tr> <td class="field-name"> Obsługa SSL/TLS i obsługa programowania i języków skryptowych </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie powszechnymi ustawieniami PHP  </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie wersją PHP i handler'em PHP </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie anonimowym FTP  </td>

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie zadaniami CRON  </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie antywirusem </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Kopia zapasowa i przywrócenie danych </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie raportami z WWW  </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie rotacją logów  </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Dostęp do katalogu aplikacji </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie Git </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Dostęp do WordPress Toolkit </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Poczta przez IMAP i POP3 z szyfrowaniem SSL/TLS </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Poczta przez WWW (webmail) </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Dostęp SSH </td>

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 


 </td> </tr> <tr> <td class="field-name"> Możliwość uruchamiania własnego oprogramowania </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Szybkie dyski SSD </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Pojemność serwera </td> 

 <td class="offer-value offer-field odd"> 5 GB 
 </td> <td class="offer-value offer-field even"> 25 GB 
 </td> <td class="offer-value offer-field odd"> 50 GB
 </td> <td class="offer-value offer-field even"> 100 GB 
 </td> <td class="offer-value offer-field odd"> 200 GB 

 </td> </tr> <tr> <td class="field-name"> Transfer miesięczny </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
  </td> <td class="offer-value offer-field odd"> b/o 

 </td> </tr> <tr> <td class="field-name"> Ilość domen WWW </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
  </td> <td class="offer-value offer-field odd"> b/o 

 </td> </tr> <tr> <td class="field-name"> Ilość skrzynek e-mail </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
  </td> <td class="offer-value offer-field odd"> b/o 

 </td> </tr> <tr> <td class="field-name"> Ilość baz danych </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
  </td> <td class="offer-value offer-field odd"> b/o 

 </td> </tr> <tr> <td class="field-name"> Maksymalna liczba plików </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
  </td> <td class="offer-value offer-field odd"> b/o 

 </td> </tr> <tr> <td class="field-name"> Limit pamięci RAM </td> 

 <td class="offer-value offer-field odd"> 512MB 
 </td> <td class="offer-value offer-field even"> 1 GB 
 </td> <td class="offer-value offer-field odd"> 2 GB 
 </td> <td class="offer-value offer-field even"> 3 GB 
   </td> <td class="offer-value offer-field odd"> 4 GB 

  </td> </tr> <tr> <td class="field-name"> Gwarantowana dostępność </td> 

  <td class="offer-value offer-field odd"> 99,75 % 
 </td> <td class="offer-value offer-field even"> 99,75 % 
 </td> <td class="offer-value offer-field odd"> 99,75 % 
 </td> <td class="offer-value offer-field even"> 99,75 % 
   <td class="offer-value offer-field odd"> 99,75 % 

 </td> </tr> <tr> <td class="field-name"> Lokalizacja </td> 

 <td class="offer-value offer-field odd"> Rzeszów
 </td> <td class="offer-value offer-field even"> Rzeszów
 </td> <td class="offer-value offer-field odd"> Rzeszów 
 </td> <td class="offer-value offer-field even"> Rzeszów 
 </td> <td class="offer-value offer-field odd"> Rzeszów 

 </td> </tr> <tr> <td class="field-name"> Cena za miesiąc </td> 

 <td class="offer-value offer-field odd">  5,00 zł <br>
 </td> <td class="offer-value offer-field even"> 10,00 zł <br>
 </td> <td class="offer-value offer-field odd"> 20,00 zł <br>
 </td> <td class="offer-value offer-field even"> 30,00 zł <br>
  </td> <td class="offer-value offer-field odd"> 50,00 zł <br>

 </td> </tr> <tr> <td class="field-name"> Cena za rok <br> 

 <td class="offer-value offer-field odd"> 60,00 zł<br> 
 </td> <td class="offer-value offer-field even"> 120,00 zł<br> 
 </td> <td class="offer-value offer-field odd">  240,00 zł<br> 
 </td> <td class="offer-value offer-field even"> 360,00 zł<br> 
 </td> <td class="offer-value offer-field even"> 600,00 zł<br> 

 </td> </tr> <tr> <td class="field-name"> 

 </td> <td class="offer-value offer-field odd">  <a href="/cart.php?a=add&pid=1" class="btn btn-primary purchase"> Zamów </a>
 </td> <td class="offer-value offer-field even"> <a href="/cart.php?a=add&pid=2" class="btn btn-primary purchase"> Zamów </a>
 </td> <td class="offer-value offer-field odd"> <a href="/cart.php?a=add&pid=3" class="btn btn-primary purchase"> Zamów </a>
 </td> <td class="offer-value offer-field even"> <a href="/cart.php?a=add&pid=5" class="btn btn-primary purchase"> Zamów </a>
  </td> <td class="offer-value offer-field odd"> <a href="/cart.php?a=add&pid=6" class="btn btn-primary purchase"> Zamów </a>

 </td> </tr> </tbody> </table> 
 </div> 
 </div>
 
 {/if}
 
  <!-- DODATKOWE INFORMACJE -->
  
  {if $productGroup.name == "Hosting www"}	
	<div class="text-center" style="font-size: 16px; margin-top: 1em; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
		<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Pozostałe zalety naszego hostingu</h4>
	</div>
		
	<div style="background: #2f3042; padding: 1em;">
		<ul style="line-height: 2; font-family: "Raleway", sans-serif; font-weight: 600;">
			<li><strong>14 dniowy okres testowy</strong> – Każdy z naszych planów hostingowych możesz testować przez 14 dni od daty zamówienia. Pomożemy Ci zoptymalizować stronę oraz wybrać odpowiedni serwer. Usługa przez cały okres testowy jest w pełni funkcjonalna.</li>
			<li><strong>Bezpłatna migracja</strong> - Czy masz już zarejestrowany i opłacony hosting w innej firmie, ale chcesz się do nas przenieść jeszcze przed jego wygaśnięciem? Skontaktuje się z nami i otrzymaj od nas do 3 miesięcy ważności usługi gratis, aby wyrównać okres, który pozostał u poprzedniego dostawcy.</li>
			<li><strong>Regularne kopie zapasowe (Backup)</strong> - Każde konto hostingowe posiada skonfigurowane automatyczne kopie zapasowe, które wykonywane są przynajmniej raz dziennie. Nasze kopie trzymane są w 3 różnych lokalizacjach, aby zapewnić ich bezpieczeństwo. W razie potrzeby możesz wykonać również własne dodatkowe kopie zapasowe. </li>
			<li><strong>Wsparcie</strong> - Oferuje w ramach abonamentu bezpłatne wsparcie techniczne. Zgłoszenia problemu można dokonać, korzystając z Panelu Klienta. Użytkownicy mogą również uzyskać pomoc telefonicznie na wskazany w kontakcie numer telefonu.</li>
			<li><strong>Bezpłatne certyfikaty</strong> - Każdy pakiet hostingowy posiada możliwość automatycznej instalacji certyfikatu Let’s Encrypt. Istnieje także możliwość dodania własnego certyfikatu.</li>
			<li><strong>WordPress Toolkit</strong> - narzędzie WordPress Toolkit pozwala na łatwe i szybkie instalowanie WordPressa oraz zarządzanie nim z poziomu panelu hostingowego.</li>
			<li><strong>Antywirus oraz Antymalware</strong> - Zainstalowane oprogramowanie antywirusowe i antymalwareowe skanuje pocztę, załączniki oraz pliki na serwerze w poszukiwaniu zagrożeń, dzięki czemu złośliwe oprogramowanie zostanie wykryte, zanim zacznie wyrządzać szkody.</li>
			<li><strong>Web Application Firewall (WAF)</strong> - System analizuje ruch do Twojej strony i stara się zablokować popularne ataki jak m. in.: XSS, SQL injection, łamanie haseł metodą brute force. Blokowany jest także ruch z podejrzanych adresów IP.</li>
			<li><strong>Ochrona danych osobowych (RODO)</strong> - Posiadamy szczegółowy opis polityki prywatności. W celu podpisania Umowy powierzenia danych osobowych skontaktuj się z nami.</li>
			<li><strong>Filtrowanie i przekazywanie poczty</strong> </li>
			<li><strong>Autoodpowiedzi e‑mail (Autoresponder)</strong></li>
			<li><strong>Przechwytywanie maili (Fetchmail)</strong></li>
			<li><strong>Filtr antyspamowy</strong></li>
			<li><strong>Uwierzytelnianie poczty (SPF, DKIM, DMARC)</strong></li>
		</ul>
    </div>
		
	<div class="text-center" style="font-size: 16px; margin-top: 1em; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
		<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Wykorzystywane technologie</h4>
	</div>
	
	<div style="background: #2f3042; padding: 1em;">
		<ul style="line-height: 2; font-family: "Raleway", sans-serif; font-weight: 600;">
			<li><strong>Plesk</strong> – Dedykowany panel do zarządzania hostingiem</li>
			<li><strong>Szybkie dyski NVMe</strong> – Dyski SSD NVMe są dostępne w każdym oferowanym pakiecie, aby zapewnić wydajność dla Twojej strony</li>
			<li><strong>CloudLinux</strong> – Dedykowany system operacyjny dla usług hostingowy, dzięki któremu masz gwarancję, że Twoja usługa jest w pełni odizolowana od pozostałych</li>
			<li><strong>Redis</strong> – Technologia przyspieszająca działanie Twojej strony internetowej</li>
			<li><strong>Imunity360</strong>– System antyexploitowy, który zabezpiecza Twoją stronę</li>
		</ul>
    </div>	
 {/if}	
 
   {if $productGroup.name == "Hosting reseller"}	
	<div class="text-center" style="font-size: 16px; margin-top: 1em; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
		<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Korzyści hostingu reseller</h4>
	</div>  

	<div style="background: #2f3042; padding: 1em;">
		<ul style="line-height: 2; font-family: "Raleway", sans-serif; font-weight: 600;">
			<li><strong>Wszyscy Twoi klienci w jednym miejscu</strong> – Stworzysz miejscu pakiety dedykowane specjalnie dla potrzeb swoich klientów, którymi oni sami będą mogli zarządzać, z gwarancją pełnej separacji danych użytkowników</li>
			<li><strong>Personalizacja</strong> – Możesz dostosować panel do identyfikacji swojej firmy. Dostarczając spersonalizowaną usługę hostingową Twój wizerunek w oczach klientów wzrośnie. Klient nawet nie zauważy, iż w rzeczywistości korzysta z infrastruktury Hostbay.pl</li>
			<li><strong>Prosta konfiguracja</strong> – W prosty i szybki sposób skonfigurujesz pakiety hostingowe, które możesz oferować swoim klientom. Każde konto hostingowe jest izolowane i posiada własne zasoby dlatego obciążenie generowane przez jednego użytkownik nie wpłynie na pozostałych.</li>
		</ul>
    </div>	

	<div class="text-center" style="font-size: 16px; margin-top: 1em; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
		<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Wykorzystywane technologie</h4>
	</div>
	
	<div style="background: #2f3042; padding: 1em;">
		<ul style="line-height: 2; font-family: "Raleway", sans-serif; font-weight: 600;">
			<li><strong>Plesk</strong> – Dedykowany panel do zarządzania hostingiem</li>
			<li><strong>Szybkie dyski NVMe</strong> – Dyski SSD NVMe są dostępne w każdym oferowanym pakiecie, aby zapewnić wydajność dla Twojej strony</li>
			<li><strong>CloudLinux</strong> – Dedykowany system operacyjny dla usług hostingowy, dzięki któremu masz gwarancję, że Twoja usługa jest w pełni odizolowana od pozostałych</li>
			<li><strong>Redis</strong> – Technologia przyspieszająca działanie Twojej strony internetowej</li>
			<li><strong>Imunity360</strong>– System antyexploitowy, który zabezpiecza Twoją stronę</li>
		</ul>
    </div>	
    {/if}	
	
	   {if $productGroup.name == "Certyfikaty SSL"}	
	
	<div class="text-center" style="font-size: 16px; margin-top: 1em; font-family: "Raleway", sans-serif; font-weight: 600; line-height: 30px;">
		<h4 class="card-title p-3 bg-primary text-white" style="padding: 1em;">Zalety korzystania z SSL</h4>
	</div>
	
	<div style="background: #2f3042; padding: 1em;">
		<ul style="line-height: 2; font-family: "Raleway", sans-serif; font-weight: 600;">
			<li><strong>Szybkość</strong> – Strony korzystające z certyfikatu SSL ładują się nawet do 90% szybciej od tych bez tego certyfikatu</li>
			<li><strong>Bezpieczeństwo</strong> – Szyfrowanie SSL gwarantuje, że wszystkie informacje przekazywane pomiędzy stroną a użytkownikiem są szyfrowane, dzięki czemu spełnione zostaną warunki związane z ochroną danych osobowych</li>
			<li><strong>Wiarygodność</strong> – Przeglądarki oznaczają strony jako niezabezpieczone poprzez odpowiedni komunikat na pasku. Brak „zielonej kłódki” obok nazwy Twojej domeny może działać odstraszająco, szczególnie gdy prowadzisz sklep internetowy. Certyfikat SSL zwiększy wiarygodność Twojej strony internetowej</li>
			<li><strong>Pozycjonowanie (SEO)</strong> – Witryny korzystające z protokołu HTTPS zajmują wyższe pozycje w wynikach wyszukiwania</li>
		</ul>
    </div>	

	   {/if}