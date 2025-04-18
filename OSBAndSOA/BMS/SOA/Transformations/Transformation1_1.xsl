<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://xmlns.oracle.com/OSBAndSOA/BMS/BMSBPELProcess" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/Billngsys/WSDLs/BMSBPELProcess.wsdl"/>
            <oracle-xsl-mapper:rootElement name="BSRequest" namespace="http://xmlns.oracle.com/OSBAndSOA/BMS/BMSBPELProcess"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/Billngsys/WSDLs/BMSBPELProcess.wsdl"/>
            <oracle-xsl-mapper:rootElement name="BSResponse" namespace="http://xmlns.oracle.com/OSBAndSOA/BMS/BMSBPELProcess"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [MON MAR 31 10:59:36 IST 2025].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:BSResponse>
         <ns0:OrderId>
            <xsl:value-of select="/ns0:BSRequest/ns0:OrderId"/>
         </ns0:OrderId>
         <ns0:TotalCost>
            <xsl:value-of select="sum (/ns0:BSRequest/ns0:ItenInfo/ns0:ItemCost )"/>
         </ns0:TotalCost>
         <xsl:for-each select="/ns0:BSRequest/ns0:ItenInfo">
            <ns0:ItenInfo>
               <ns0:ItemName>
                  <xsl:value-of select="ns0:ItemName"/>
               </ns0:ItemName>
               <ns0:ItemCost>
                  <xsl:value-of select="ns0:ItemCost"/>
               </ns0:ItemCost>
            </ns0:ItenInfo>
         </xsl:for-each>
      </ns0:BSResponse>
   </xsl:template>
</xsl:stylesheet>
