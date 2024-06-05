<% include HeroSection BackgroundImageLink=$Category.Image.Link, DisplayCategories=False, DisplayDescription=True %>
<% include TrainingCardHolder Heading2="Nos formations"%>
<section class="bg-primary px-sm-5 py-5 mt-5" style="--bs-bg-opacity: .1;">
    <h2 class="my-5">Découvrez nos autres domaines de formations</h2>
    <% if $Categories %>
        <div class="d-flex flex-wrap gap-3 mb-5">
            <% loop $Categories %>
                <a href="$Link" class="bg-white bg-primary-hover text-black p-2 rounded-2 link-underline-opacity-0 link-offset-2 link-underline">$Title</a>
            <% end_loop %>
        </div>
    <% end_if %>
</section>
