<div id="$HolderID" class="field<% if $extraClass %> $extraClass<% end_if %>">
	<% if $Title %><label class="left">$Title<% if $Required %><span class="text-danger"> *</span><% end_if %></label><% end_if %>
	<div class="middleColumn">
		$Field
	</div>
	<% if $RightTitle %><label class="right">$RightTitle</label><% end_if %>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
	<% if $Description %><span class="description">$Description</span><% end_if %>
</div>
