import re

class HTMLParser: 
    
    def __init__(self, html):
        self.html = html
    

    def find_html_tags(self, html:str) -> list:
        """
            Identifica etiquetas HTML en una cadena, 
            retorna una lista con las etiquetas HMTL identificadas
        """
        regex = r"\<([a-zA-Z0-9/=#//:.\'\" _-]+\s*)*\>"
        return re.findall(regex, html)
         
        
    def identify_all_atributes(self, element:str):
        """
            Categoriza los atributos, estos pueden contener: 
            - Nombre del atributo y un valor
            - Nombre del atributo
        """
        attributes = element.split(" ")[1:]
        result = []
        
        for attribute in attributes:
            
            if "=" in attribute:
                attribute_name, attribute_value = attribute.strip().split("=")
                attribute_value = re.sub(r"(\')|(\")", "", attribute_value)
                result.append(f"-> {attribute_name} > {attribute_value}")
            else: 
                result.append(f"-> {attribute} > None")
    
        return "\n".join(result)
    
        
    def process_attributes(self, tag:str):
        """
            Procesa los tags de los elementos HTML:
                - tag br
                - tag que no contienen atributos
                - tag que contienen atributos
        """
        
        if not re.match(r"^/", tag):
            # tag de apertura
            
            if "br" in tag: # br 
                return f"Empty : {tag.replace('/', '')}"
            elif re.fullmatch(r"\w+\s*", tag): # title
                return f"Start : {tag}" # title class="1" id="d"
            else: 
                tag_body = tag.split(" ")[0]
                return f"Start: {tag_body}\n{self.identify_all_atributes(tag)}"
                
        
        else: 
            # tag de cierre
            return f"End : {tag.replace('/', '')}"
    
    
    def run(self):
        """
            Función main de la clase
        """
        
        content = self.html.split("\n")
        
        for line in content: 
            tags = self.find_html_tags(line)
            result = [ self.process_attributes(tag.strip()) for tag in tags ]
            print("\n".join(result))
