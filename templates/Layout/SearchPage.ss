<style>
    .bg-img-gradient {
        background: linear-gradient(180deg, rgba(141,220,191,0.85) 0%, rgba(27,173,202,0.85) 100%), url("$resourceURL('themes/smash-campus/images/default-header-background.webp')");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
    }
</style>
<section style="min-height: 435px" class="bg-img-gradient d-flex flex-column justify-content-center p-3 p-md-10 mb-2">
    <h1>$Title</h1>
    <p><%t LetsCo\Controller\SearchController.FilterByDomains "Filter by domains" %></p>
    <div class="d-md-flex flex-wrap d-none gap-3">
        <% loop $Categories %>
            <% if $ID == $Up.CurrentCategoryID %>
                <p class="bg-primary text-black p-2 my-2 rounded-2">$Title</p>
            <% else %>
                <a href="$Up.filterLink($ID)" class="bg-white bg-primary-hover text-black p-2 my-2 rounded-2 link-underline-opacity-0 link-offset-2 link-underline">$Title</a>
            <% end_if %>
        <% end_loop %>
    </div>
    <div class="dropdown-center d-block d-md-none">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            <%t LetsCo\Model\Training\TrainingCategory.PLURALNAME 'Domains' %>
        </button>
        <ul class="dropdown-menu bg-white">
            <% loop $Categories %>
                <li>
                    <a href="$Up.filterLink($ID)" class="dropdown-item <% if $ID == $Up.CurrentCategoryID %>active<% end_if %>">$Title</a>
                </li>
            <% end_loop %>
        </ul>
    </div>
</section>
<% if $NoTraining %>
    <section class="p-3 p-md-5 mb-2">
        <p class="h3"><%t LetsCo\Controller\SearchController.NoResult "No result found" %></p>
    </section>
<% end_if %>
<% include TrainingCardHolder Heading2=$Heading %>
<% if $NoTraining %>
    <section class="p-3 p-md-5 mb-2 bg-white">
        <h2><%t LetsCo\Controller\SearchController.RequestTraining "The training you are looking for is not offered?" %></h2>
        $TrainingOfferForm
    </section>
<% end_if %>
