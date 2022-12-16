<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://www.hif.framework/EnterpriseEnvolope" xmlns:tns1="http://www.hif.framework/Payload" xmlns:tns2="http://www.hif.framework/EnterpriseEnvolope" xmlns:tns3="http://www.hif.framework/EnterpriseEnvolope" xmlns:tns5="http://www.hif.framework/EnterpriseEnvolope" xmlns:tns6="http://www.hif.framework/Payload" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">
   <xsl:output method="xml"  />
   <xsl:template match="/">
      <xsl:apply-templates select="tns5:EnterPriseEnvolope/tns3:EnterpriseHeader/tns:RoutingProp/tns:KeyValuePair" />
	  
   </xsl:template>
   <xsl:template match="tns5:EnterPriseEnvolope/tns3:EnterpriseHeader/tns:RoutingProp/tns:KeyValuePair">
   
	<xsl:variable name="countrycode" select="tns:value" />

	<xsl:if test = "contains($countrycode,'IN')"> 
     <xsl:variable name="routqueue">Q.IN</xsl:variable>
     <xsl:value-of select="$routqueue" /></xsl:if> 
	<xsl:if test = "contains($countrycode,'UK')"> 
     <xsl:variable name="routqueue">Q.UK</xsl:variable>
<xsl:value-of select="$routqueue" /></xsl:if> 
   </xsl:template>
</xsl:stylesheet>