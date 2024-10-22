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
    <% require themedCSS('typography') %>
</head>
<body class="bg-light $ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<div role="main">
    <div>
        <style>
            .bg-img-gradient {
                background: url("$resourceURL('themes/smash-campus/images/default-header-background.jpg')");
                background-repeat: no-repeat;
                background-position: center;
                background-size: cover;
            }
        </style>
        <section style="height: 100vh" class="bg-img-gradient d-flex flex-column justify-content-center p-3 text-center">
            <div style="width: fit-content;margin: auto;background: white;padding: 50px 100px;border-radius: 5px;">
                <h1>$Title</h1>
                <p>$Content</p>
            </div>
        </section>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
