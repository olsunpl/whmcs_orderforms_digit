<link href="{assetPath file='store.css'}" rel="stylesheet">
<link href="{assetPath file='style.css'}" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/digit/css/store.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/orderforms/digit/css/style.css" rel="stylesheet">
{include file="orderforms/digit/common.tpl"}

<div id="order-digit">
  <div class="row">
    <div class="cart-body">
	<div class="wdes-block text-center">
      <div class="header-lined" style="margin: 0;">
      <div class="header-lined">
        <h1 class="font-size-36">
          {if $productGroup.headline}
            {$productGroup.headline}
          {else}
            {$productGroup.name}
          {/if}
        </h1>
        {if $productGroup.tagline}
          <p>{$productGroup.tagline}</p>
        {/if}
      </div>
      {if $errormessage}
        <div class="alert alert-danger">
          {$errormessage}
        </div>
      {elseif !$productGroup}
        <div class="alert alert-info">
          {lang key='orderForm.selectCategory'}
        </div>
      {/if}

      {include file="orderforms/digit/sidebar-categories-collapsed.tpl"}

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


	{if $productGroup.name == "HOSTING WWW"}
	 <h3>Możliwości i porównanie pakietów na usługi {$productGroup.name}
	 </h3>

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

 <tbody> <tr> <td class="field-name"><a href="/php71.html" target="_blank">PHP 7.1</a>, <a href="/php72.html" target="_blank">PHP 7.2</a>, <a href="/php73.html" target="_blank">PHP 7.3</a> oraz <a href="/php74.html" target="_blank">PHP 7.4</a> </td> 

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

 <!-- TABELA PORÓWNANIE PAKIETÓW RESELLER -->

	{if $productGroup.name == "HOSTING RESELLER"}
	 <h3>Możliwości i porównanie pakietów na usługi {$productGroup.name}
	 </h3>

 <div class="alert alert-info visible-xs"> <i class="fa fa-lightbulb-o fa-fw"></i> Tabelkę ze szczegółową ofertą można przewijać. </div>

 <div class="row comparison"> 
	<div class="col-md-12 table-responsive"> 
	 <table class="table comparison-table wdes-block" style="margin-top: 0;"> 
	 <thead> 
	 <tr> <th></th> 
	<th class="offer-value">H1 10GB</th> 
	<th class="offer-value">H2 30GB</th> 
	<th class="offer-value">H3 60GB</th> 
	<th class="offer-value">H4 100G</th> 
	 </tr> 
	 </thead>

  </td> </tr> <tr> <td class="field-name"> Zarządzanie domenami  </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Możliwość zmiany ustawień poczty </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie listami mailingowymi </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie automatycznym wykrywaniem poczty </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie ustawieniami wydajności hostingu </td>

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Ustalenia ograniczeń przestrzeni dysku  </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie subdomenami </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie aliasami domen </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie dodatkowymi kontami FTP </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zdolność do wyboru serwera baz danych </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zdalny dostęp dla użytkowników bazy danych </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Tworzenie konta klienta </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zezwalaj na nad-sprzedaż </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Kopiowanie strony </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Zarządzanie katalogami zabezpieczonymi hasłem </td> 

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Możliwość zarządzania dodatkowymi kontami użytkownika  </td>

 <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field even"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 
 </td> <td class="offer-value offer-field odd"> <i class="offer-bool fa fa-check text-success"></i> 

 </td> </tr> <tr> <td class="field-name"> Pojemność serwera </td> 

 <td class="offer-value offer-field odd"> 10 GB 
 </td> <td class="offer-value offer-field even"> 30 GB 
 </td> <td class="offer-value offer-field odd"> 60 GB
 </td> <td class="offer-value offer-field even"> 100 GB 


 </td> </tr> <tr> <td class="field-name"> Ilość klientów </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 

 </td> </tr> <tr> <td class="field-name"> Ilość transferu </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 

 </td> </tr> <tr> <td class="field-name"> Ilość domen, subdomen, alias domen </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 

 </td> </tr> <tr> <td class="field-name"> Ilość skrzynek pocztowych </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 

  </td> </tr> <tr> <td class="field-name"> Ilość baz danych </td> 

 <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 
 </td> <td class="offer-value offer-field odd"> b/o 
 </td> <td class="offer-value offer-field even"> b/o 

  </td> </tr> <tr> <td class="field-name"> Gwarantowana dostępność </td> 

  <td class="offer-value offer-field odd"> 99,75 % 
 </td> <td class="offer-value offer-field even"> 99,75 % 
 </td> <td class="offer-value offer-field odd"> 99,75 % 
 </td> <td class="offer-value offer-field even"> 99,75 % 

 </td> </tr> <tr> <td class="field-name"> Lokalizacja </td> 

 <td class="offer-value offer-field odd"> Rzeszów
 </td> <td class="offer-value offer-field even"> Rzeszów
 </td> <td class="offer-value offer-field odd"> Rzeszów 
 </td> <td class="offer-value offer-field even"> Rzeszów 

 </td> </tr> <tr> <td class="field-name"> Cena za miesiąc </td> 

 <td class="offer-value offer-field odd">  15,00 zł <br>
 </td> <td class="offer-value offer-field even"> 40,00 zł <br>
 </td> <td class="offer-value offer-field odd"> 60,00 zł <br>
 </td> <td class="offer-value offer-field even"> 100,00 zł <br>

 </td> </tr> <tr> <td class="field-name"> Cena za rok <br> 

 <td class="offer-value offer-field odd"> 180,00 zł<br> 
 </td> <td class="offer-value offer-field even"> 480,00 zł<br> 
 </td> <td class="offer-value offer-field odd">  720,00 zł<br> 
 </td> <td class="offer-value offer-field even"> 1200,00 zł<br> 

 </td> </tr> <tr> <td class="field-name"> 

 </td> <td class="offer-value offer-field odd">  <a href="/cart.php?a=add&pid=9" class="btn btn-primary purchase"> Zamów </a>
 </td> <td class="offer-value offer-field even"> <a href="/cart.php?a=add&pid=10" class="btn btn-primary purchase"> Zamów </a>
 </td> <td class="offer-value offer-field odd"> <a href="/cart.php?a=add&pid=11" class="btn btn-primary purchase"> Zamów </a>
 </td> <td class="offer-value offer-field even"> <a href="/cart.php?a=add&pid=12" class="btn btn-primary purchase"> Zamów </a>

 </td> </tr> </tbody> </table> 
 </div> 
 </div>
 {/if}		