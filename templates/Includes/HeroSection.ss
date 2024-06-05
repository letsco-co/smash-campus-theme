<style>
    .bg-img-gradient {
        background: linear-gradient(180deg, rgba(141,220,191,0.85) 0%, rgba(27,173,202,0.85) 100%), url("$BackgroundImageLink");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
    }
</style>
<section style="min-height: 435px" class="bg-img-gradient d-flex flex-column justify-content-center px-sm-5 mb-2">
    <h1>$Title</h1>
    <% if $Categories && $DisplayCategories %>
        <div class="d-md-flex flex-wrap d-none gap-3">
            <% loop $Categories %>
                <a href="$Link" class="bg-white bg-primary-hover text-black p-2 my-2 rounded-2 link-underline-opacity-0 link-offset-2 link-underline">$Title</a>
            <% end_loop %>
        </div>
        <div class="dropdown-center d-block d-md-none">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Domaines
            </button>
            <ul class="dropdown-menu bg-white">
                <% loop $Categories %>
                    <li>
                        <a href="$Link" class="dropdown-item">$Title</a>
                    </li>
                <% end_loop %>
            </ul>
        </div>
    <% end_if %>
    <% if $Category && $DisplayDescription %>
        <p>$Category.Description</p>
    <% end_if %>
</section>
