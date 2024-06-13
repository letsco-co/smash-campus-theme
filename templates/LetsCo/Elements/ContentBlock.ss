<section class="p-3 p-md-10 mb-2">
    <% if $ShowTitle %>
        <h2>$Title</h2>
    <% end_if %>
    <div class="row align-items-center justify-content-between">
        <div class="d-flex flex-column col-12 col-md-6">
            $Content
            <div class="mt-4">
                <% with $MainLink %>
                    <% if $exists %>
                    <a class="bg-primary bg-secondary-hover rounded-1 text-black p-2 link-offset-2 link-underline link-underline-opacity-0" href="$URL" <% if $OpenInNew %>target="_blank" rel="noopener noreferrer"<% end_if %>>$Title</a>
                    <% end_if %>
                <% end_with %>
                <% with $SecondaryLink %>
                    <% if $exists %>
                        <a href="$URL" class="ms-4 align-self-center" <% if $OpenInNew %>target="_blank" rel="noopener noreferrer"<% end_if %>>$Title <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
                        </svg></a>
                    <% end_if %>
                <% end_with %>
            </div>
        </div>
        <div class="<% if $Image.getExtension == 'png' %>bg-white rounded-2<% end_if %> p-6 col-12 col-md-5">
            $Image
        </div>
    </div>
</section>
