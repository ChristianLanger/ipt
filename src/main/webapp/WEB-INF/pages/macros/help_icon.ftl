<#ftl output_format="HTML">
<#if help?has_content>
<i class="infoImg fa fa-info-circle fa-lg"> </i>
<div class="info">
	<#if help=="i18n"><#if i18nkey==""><@s.text name="${name}.help"/><#else><@s.text name="${i18nkey}.help"/></#if><#else><#if help?has_content>${help}</#if></#if>
	<#if (helpOptions?? && helpOptions?size>0)>
	<p><@s.text name="help.options"/></p>
	<ol>
	  <#list helpOptions?keys as val>
	    <li><a href="#" val="${val}">${helpOptions[val]}</a></li>
	  </#list>
	</ol>
	</#if>
</div>
<#else>
<#-- quick hack, should be done with some css and without an invisible image -->
<!-- <img style="visibility:hidden" src="${baseURL}/images/info.gif" /> -->
<i class="fa fa-info-circle fa-lg" style="visibility:hidden"> </i>
</#if>