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