<div class="bg-white rounded-3 d-flex flex-column py-3 px-5 my-2 me-4 training-card">
    <div class="d-flex flex-column delimiter-bottom">
        <p class="mb-0 text-primary">$Category.Title</p>
        <p class="my-1 h3" style="height: 43px;">$Title</p>
    </div>
    <div class="d-flex flex-column">
        <p class="my-3">$Description.LimitSentences(2)</p>
        <% include TrainingGeneralInfo %>
        <div class="my-3">
            <a class="bg-primary bg-secondary-hover rounded-1 text-black p-2 link-offset-2 link-underline link-underline-opacity-0" href="$Link"><%t LetsCo\Model\Training\Training.Link "See training" %></a>
        </div>
    </div>
</div>
