<% with $Training %>
    <% include HeroSection BackgroundImageLink=$Category.Image.Link, TrainingSection=true %>
    <div class="d-flex flex-column flex-md-row me-0 px-5 px-md-9 justify-content-between">
        <aside class="col-sm-12 col-md-4 col-xl-3 order-md-2 bg-white my-5 sticky-md-top p-4" style="height:fit-content;top: 120px;">
            <h2>Pré-inscription</h2>
            <div>
                <% if $Up.Form %>
                    <% with $Up.Form %> <% include MultiFormProgressNumber %> <% end_with %>
                    $Up.Form
                <% else_if $Up.Completed %>
                    <h3>Votre demande de pré-inscription a bien été prise en compte</h3>
                    <p>Merci de l’intérêt que vous portez à notre formation. Vous allez recevoir un mail confirmant votre demande. Nous vous recontacterons prochainement pour plus de détails.</p>
                <% else %>
                    <p>Je souhaite me former avec une prise en charge :</p>
                    <div class="d-flex flex-column">
                        <a href="$Link('structureform')" class="bg-primary rounded-1 text-black text-center bg-secondary-hover p-2 my-1 link-underline-opacity-0 link-offset-2 link-underline">De mon entreprise</a>
                        <a href="$Link('individualform')" class="bg-primary rounded-1 text-black text-center bg-secondary-hover p-2 my-1 link-underline-opacity-0 link-offset-2 link-underline">Individuelle</a>
                    </div>
                <% end_if %>
            </div>
        </aside>
        <section class="col-sm-12 col-md-7 order-md-1">
            <% if $Prerequisites %>
                <% include WhiteBlock Title="Pré-requis", ShouldLoop=true, Data=$Prerequisites %>
            <% end_if %>
            <% if $Goals %>
                <% include WhiteBlock Title="Objectifs", Data=$Goals %>
            <% end_if %>
            <% if $Publics %>
                <% include WhiteBlock Title="Public concerné", ShouldLoop=true, Data=$Publics %>
            <% end_if %>
            <% if $Modalities %>
                <% include WhiteBlock Title="Modalités et délais d'accès", Data=$Modalities %>
            <% end_if %>
            <% if $EducationalMeans %>
                <% include WhiteBlock Title="Moyens pédagogiques", ShouldLoop=true, Data=$EducationalMeans %>
            <% end_if %>
            <% if $EvaluationMethods %>
                <% include WhiteBlock Title="Modalités d'évaluations", ShouldLoop=true, Data=$EvaluationMethods %>
            <% end_if %>
            <% if $ExecutionMonitorings %>
                <% include WhiteBlock Title="Suivi de l'execution", ShouldLoop=true, Data=$ExecutionMonitorings %>
            <% end_if %>
            <% if $Programs %>
                <% include WhiteBlock Title="Programme", ShouldLoop=true, Data=$Programs %>
            <% end_if %>
            <% if $Accessibility %>
                <% include WhiteBlock Title="Accessibilité", Data=$Accessibility %>
            <% end_if %>
            <% if $Financing %>
                <% include WhiteBlock Title="Financement", Data=$Financing %>
            <% end_if %>
        </section>
    </div>
    <% if $otherTrainings %>
        <section class="bg-white px-3 px-md-10 py-5">
            <h2>Voir d'autres formations</h2>
            <div class="d-flex flex-wrap">
                <% loop $otherTrainings(2, $CategoryID) %>
                    <% include TrainingCard %>
                <% end_loop %>
                <a href="$Category.Link" class="align-self-center">Découvrir d'autres formations <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
                </svg></a>
            </div>
        </section>
    <% end_if %>
<% end_with %>
<% include CategoriesSection %>
