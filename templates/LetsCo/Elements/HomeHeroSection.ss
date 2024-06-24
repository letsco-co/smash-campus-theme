<style>
    .home-hero-section {
        background: url("$Image.Link()");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
    }
</style>
<section class="home-hero-section d-flex flex-column justify-content-center p-3 p-md-10 mb-2 text-white">
    <h1 class="col-12 col-md-7">$Title</h1>
    <div class="d-flex flex-column align-items-center mt-6">
        <p class="h3"><%t LetsCo\Elements\HomeHeroSection.SearchKeywords "Search by keywords" %></p>
        $TrainingSearchForm
    </div>
    <div class="d-flex flex-column align-items-center mt-4">
        <p class="h3"><%t LetsCo\Elements\HomeHeroSection.SearchDomain "Search by domain" %></p>
        <% include Categories %>
    </div>
</section>
