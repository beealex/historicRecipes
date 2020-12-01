<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs math xd"
    version="3.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Nov 30, 2020</xd:p>
            <xd:p><xd:b>Author:</xd:b> beesmacbookpro</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>   
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Ingredients Table from Historic Recipes</title>
                

            </head>
            <body> 
                <h1>Table of Common Ingredients During the Silk Trade Route</h1>   
                
                <h2>Ingredients</h2>
                <table>
                    <tr><th>ingredID</th>
                        <th>Ingredient</th>
                        <th>Taste</th>
                    </tr>
                    
                    <xsl:apply-templates select="descendant::list[@type='commonIngredients']/item"/>
                    
                </table> 
                <p>
                    **The heat index is based on a scale from 0-10 with 10 being the hottest
                </p>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="list[@type='commonIngredients']/item">
      
        <tr>
            <td><xsl:apply-templates select="@xml:id"/></td>
            <td><xsl:apply-templates select="@name"/></td>
            <td><xsl:apply-templates select="@heat"/></td>
            
            
        </tr>
        
    </xsl:template>
</xsl:stylesheet>
