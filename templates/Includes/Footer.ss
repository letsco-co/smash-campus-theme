<footer class="py-5 px-3 px-md-10 gradient">
    <div>
        <div class="row justify-content-center align-items-md-start">
            <% if $FooterMenu %>
                <div class="col-11 col-md-4 py-sm-3">
                    <p class="h3"><%t Page.Infos 'Practical informations' %></p>
                    <ul class="list-group list-group-flush bg-transparent">
                        <% loop FooterMenu %>
                            <li class="list-group-item bg-transparent border-0 ps-0">
                                <a class="text-dark link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="$Link">$Title</a>
                            </li>
                        <% end_loop %>
                    </ul>
                </div>
            <% end_if %>
            <div class="col-11 col-md-4 py-sm-3">
                <p class="h3"><%t Page.Contact "Let's stay in touch" %></p>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item bg-transparent border-0 ps-0">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-left-text" viewBox="0 0 16 16">
                            <path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"/>
                            <path d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5M3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6m0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5"/>
                        </svg><a class="ps-2 text-dark link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="#">Nous connaître</a>
                    </li>
                    <% if $SiteConfig.Address %>
                        <li class="list-group-item bg-transparent border-0 ps-0 d-flex align-items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                                <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A32 32 0 0 1 8 14.58a32 32 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10"/>
                                <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4m0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/>
                            </svg><span class="ps-2">$SiteConfig.Address</span>
                        </li>
                    <% end_if %>
                    <% if $SiteConfig.PhoneNumber %>
                        <li class="list-group-item bg-transparent border-0 ps-0 d-flex align-items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                                <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.6 17.6 0 0 0 4.168 6.608 17.6 17.6 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.68.68 0 0 0-.58-.122l-2.19.547a1.75 1.75 0 0 1-1.657-.459L5.482 8.062a1.75 1.75 0 0 1-.46-1.657l.548-2.19a.68.68 0 0 0-.122-.58zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.68.68 0 0 0 .178.643l2.457 2.457a.68.68 0 0 0 .644.178l2.189-.547a1.75 1.75 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.6 18.6 0 0 1-7.01-4.42 18.6 18.6 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877z"/>
                            </svg><span class="ps-2">$SiteConfig.PhoneNumber</span>
                        </li>
                    <% end_if %>
                    <% if $SiteConfig.Email %>
                        <li class="list-group-item bg-transparent border-0 ps-0 d-flex align-items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1zm13 2.383-4.708 2.825L15 11.105zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741M1 11.105l4.708-2.897L1 5.383z"/>
                            </svg><span class="ps-2">$SiteConfig.Email</span>
                        </li>
                    <% end_if %>
                </ul>
            </div>
            <div class="col-11 col-md-4 py-sm-3">
                <p class="h3"><%t Page.Newsletter "Subscribe to the newsletter" %></p>
                $NewsletterForm
                <p class="h3"><%t Page.RS "Follow us" %></p>
                <% if $SiteConfig.LinkedInLink %>
                    <a href="$SiteConfig.LinkedInLink">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="black" class="bi bi-linkedin" viewBox="0 0 16 16">
                            <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854zm4.943 12.248V6.169H2.542v7.225zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248S2.4 3.226 2.4 3.934c0 .694.521 1.248 1.327 1.248zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016l.016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225z"/>
                        </svg>
                    </a>
                <% end_if %>
            </div>
        </div>
        <div class="row justify-content-center py-4">
            <img class="col-11 col-md-6 col-lg-3" src="$resourceURL('themes/smash-campus/images/qualiopi.png')" alt="Qualiopi processus certifié, La certification Qualiopi a été délivrée au titre des categories d'actions suivantes: actions de formations; actions permettant de valider les acquis de l'expérience. République française">
        </div>
        <div class="row justify-content-center py-3 text-center delimiter delimiter-center">
            <p class="col-11 mb-0">@$getCurrentYear $SiteConfig.Title | <%t Page.Creator "Designed and produced by" %> <a class="link-dark" href="https://letsco.co" target="_blank">Let’s Co</a></p>
        </div>
    </div>
</footer>
