<div id="$HolderID" class="field">
	$Field
    <label class="right" for="$ID">$Title<% if $RightTitle %> $RightTitle<% end_if %><% if $Required %><span class="text-danger">*</span><% end_if %></label>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
	<% if $Description %><span class="description">$Description</span><% end_if %>
</div>
