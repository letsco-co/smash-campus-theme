<% with $Training %>
    <% include HeroSection BackgroundImageLink=$Category.Image.Link, TrainingSection=true %>
    <div class="d-flex flex-column flex-md-row me-0 px-5 px-md-9 justify-content-between">
        <aside class="col-sm-12 col-md-4 col-xl-3 order-md-2 bg-white my-5 sticky-md-top p-4" style="height:fit-content;top: 120px;">
            <h2><%t LetsCo\Model\Training\Training.Registration "Registration" %></h2>
            <div>
                <% if $Up.Form %>
                    <% with $Up.Form %> <% include MultiFormProgressNumber %> <% end_with %>
                    $Up.Form
                <% else_if $Up.Completed %>
                    <h3><%t LetsCo\Model\Training\Training.Registration_Title "Your pre-registration request has been successfully received" %></h3>
                    <p><%t LetsCo\Model\Training\Training.Registration_Text "Thank you for your interest in our training. You will receive an email confirming your request. We will contact you soon with more details." %></p>
                <% else %>
                    <p><%t LetsCo\Model\Training\Training.Registration_Financing "I wish to receive training with financial support:" %></p>
                    <div class="d-flex flex-column">
                        <a href="$Link('structureform')" class="bg-primary rounded-1 text-black text-center bg-secondary-hover p-2 my-1 link-underline-opacity-0 link-offset-2 link-underline"><%t LetsCo\Model\Training\Training.Financing_Structure "From my company" %></a>
                        <a href="$Link('individualform')" class="bg-primary rounded-1 text-black text-center bg-secondary-hover p-2 my-1 link-underline-opacity-0 link-offset-2 link-underline"><%t LetsCo\Model\Training\Training.Financing_Personal "Individual" %></a>
                    </div>
                <% end_if %>
            </div>
        </aside>
        <section class="col-sm-12 col-md-7 order-md-1">
            <% if $Prerequisites %>
                <% include WhiteBlock Title=$translatedTitle($ClassName, "Prerequisites"), ShouldLoop=true, Data=$Prerequisites, ID='Prereauisites' %>
            <% end_if %>
            <% if $Description %>
                <% include WhiteBlock Title=$translatedTitle($ClassName, "Description"), Data=$Description, ID='Description' %>
            <% end_if %>
            <% if $Publics %>
                <% include WhiteBlock Title=$translatedTitle($ClassName, $translatedTitle($ClassName, "Publics")), ShouldLoop=true, Data=$Publics, ID='Publics' %>
            <% end_if %>
            <% if $Modalities %>
                <% include WhiteBlock Title=$translatedTitle($ClassName, "Modalities"), Data=$Modalities, ID='Modalities' %>
            <% end_if %>
            <% if $EducationalMeans %>
                <% include WhiteBlock Title=$translatedTitle($ClassName, "EducationalMeans"), ShouldLoop=true, Data=$EducationalMeans, ID='EducationalMeans' %>
            <% end_if %>
            <% if $EvaluationMethods %>
                <% include WhiteBlock Title=$translatedTitle($ClassName, "EvaluationMethods"), ShouldLoop=true, Data=$EvaluationMethods, ID='EvaluationMethods' %>
            <% end_if %>
            <% if $ExecutionMonitorings %>
                <% include WhiteBlock Title=$translatedTitle($ClassName, "ExecutionMonitorings"), ShouldLoop=true, Data=$ExecutionMonitorings, ID='ExecutionMonitorings' %>
            <% end_if %>
            <% if $Programs %>
                <% include ProgramWhiteblock Title=$translatedTitle($ClassName, $translatedTitle($ClassName, "Programs")), ShouldLoop=true, Data=$Programs, ID='Programs' %>
            <% end_if %>
            <% if $Accessibility %>
                <% include WhiteBlock Title=$translatedTitle($ClassName, "Accessibility"), Data=$Accessibility, ID='Accessibility' %>
            <% end_if %>
            <% if $Financing %>
                <% include WhiteBlock Title=$translatedTitle($ClassName, "Financing"), Data=$Financing, ID='Financing' %>
            <% end_if %>
        </section>
    </div>
    <% if $otherTrainings %>
        <section class="bg-white px-3 px-md-10 py-5">
            <h2><%t LetsCo\Model\Training\Training.OtherTrainings "See other training programs" %></h2>
            <div class="d-flex flex-wrap">
                <% loop $otherTrainings(2, $CategoryID) %>
                    <% include TrainingCard %>
                <% end_loop %>
                <a href="$Category.Link" class="align-self-center"><%t LetsCo\Model\Training\Training.DiscoverOtherTrainings "See other training programs" %> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
                </svg></a>
            </div>
        </section>
    <% end_if %>
<% end_with %>
<% include CategoriesSection %>
