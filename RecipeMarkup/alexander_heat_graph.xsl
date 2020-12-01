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
    
    <xsl:template match="/">
        <desc>Bianka Alexander's XSLT 7 Exam</desc>
        <html>
            <head>
                <title>Ingredients Table from Historic Recipes</title>
            </head>
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
        </html>
    </xsl:template>
    
    <xsl:template match="list[@type='commonIngredients']/item">
       
        <tr>
            <td><xsl:apply-templates select="@xml:id"/></td>
            <td><xsl:apply-templates select="@name"/></td>
            <td><xsl:apply-templates select="@heat"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="/">
        <svg>
        <g alignment-baseline="baseline" transform= "translate (80,350)">
            
            <text x="50" y="50">Black Pepper</text>
            <text x="160" y="50">Cardamom</text>
            <text x="270" y="50">Cinnamon</text>
            <text x="380" y="50">Cumin</text>
            <text x="490" y="50">Garlic</text>
            <text x="600" y="50">Ginger</text>
            <text x="710" y="50">Nutmeg</text>
            <text x="820" y="50">Saffron</text>
            <text x="930" y="50">Tumeric</text>
            
            <text x="-2" y="-15">1</text>
            <text x="-2" y="-45">2</text>
            <text x="-2" y="-75">3</text>
            <text x="-2" y="-105">4</text>
            <text x="-2" y="-135">5</text>
            <text x="-2" y="-165">6</text>
            <text x="-2" y="-195">7</text>
            <text x="-2" y="-225">8</text>
            <text x="-2" y="-255">9</text>
            <text x="-2" y="-285">10</text>
            <text x="350" y="-300">The Heat Index of the Most Common Spices of the Silk Trade Route</text>
            <text x="-20" y="-200" style="writing-mode: tb">Heat Index***</text>
            <text x ="500" y="120">Most Common Spices</text>
            <line x1="25" y1="0" x2="1000" y2="0" stroke="black" stroke-width="5"/>
            <line x1="25" y1="2" x2="25"  y2="-300" stroke="purple" stroke-width="5"/>
            <rect x="70" y="-145"  width="30" height="145" fill="blue"/>
            <rect x="175" y="-45" width="30" height="45" fill="purple"/>
            <rect x="285" y="-75" width="30" height= "75" fill="pink"/>
            <rect x="380" y="-105" width="30" height= "105" fill="orange"/>
            <rect x="490" y="-105" width="30" height= "105" fill="red"/>
            <rect x="605" y="-195" width="30" height= "195" fill="green"/>
            <rect x="715" y="-15" width="30" height= "15" fill="brown"/>
            <rect x="825" y="-3" width="30" height= "3" fill="teal"/>
            <rect x="940" y="-75" width="30" height= "75" fill="lavender"/>
            
            
            <xsl:for-each select="//rect"> 
                    <p>
                        <xsl:value-of select="."/>
                        <xsl:text>Heat of Spice </xsl:text>
                        <xsl:value-of select="text"/>
                    </p>
                    <xsl:choose>  
                        <xsl:when test="g">   
                            <rect x="{-2}" y="{-195}" width="30" height="195" fill="green"/>
                            <rect x="{-2}" y="{-3}" width="30" height="3" fill="teal"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <text x="{605}" y="-205" stroke="black">That's Spicy!</text>  <text x="{825}" y="-8" stroke="black">WIMPY!</text>                
                        </xsl:otherwise>
                    </xsl:choose>  
              
            </xsl:for-each>  
        </g>
    </svg>
    </xsl:template>
</xsl:stylesheet>