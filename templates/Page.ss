<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <% require themedCSS('custom') %>
    <% require themedCSS('style') %>
</head>
<body class="bg-light $ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<% include Header %>
<div class="main" role="main">
	<div class="inner typography line">
		$Layout
	</div>
</div>
<footer class="py-3 px-lg-5 gradient">
    <div class="container">
        <div class="row align-items-start">
            <div class="col">
                <h3>Informations pratiques</h3>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">An item</li>
                    <li class="list-group-item">A second item</li>
                    <li class="list-group-item">A third item</li>
                    <li class="list-group-item">A fourth item</li>
                    <li class="list-group-item">And a fifth one</li>
                </ul>
            </div>
            <div class="col">
                <h3>Restons en contact</h3>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">An item</li>
                    <li class="list-group-item">A second item</li>
                    <li class="list-group-item">A third item</li>
                    <li class="list-group-item">A fourth item</li>
                    <li class="list-group-item">And a fifth one</li>
                </ul>
            </div>
            <div class="col">
                <h3>Inscrivez-vous à la newsletter</h3>

            </div>
        </div>
        <div class="row justify-content-center py-4">
            <img class="col-4" src="$resourceURL('themes/smash-campus/images/qualiopi.png')" alt="Qualiopi processus certifié, La certification Qualiopi a été délivrée au titre des categories d'actions suivantes: actions de formations; actions permettant de valider les acquis de l'expérience. République française">
        </div>
        <div class="row justify-content-center py-3 text-center delimiter">
           <p class="col mb-0">@$getCurrentYear SMASH Campus | Conçu et réalisé par <a class="link-dark" href="https://letsco.co" target="_blank">Let’s Co</a></p>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
