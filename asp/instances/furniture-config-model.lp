% Furniture example KB "f1"

% Classes
ooasp_class("f1", "Chair").
ooasp_class("f1", "Table").
ooasp_class("f1", "Legs").
ooasp_class("f1", "Chair_Legs").
ooasp_class("f1", "Table_Legs").
ooasp_class("f1", "Top").

% Class inheritance
ooasp_subclass("f1", "Chair", "Furniture").  
ooasp_subclass("f1", "Table", "Furniture").

ooasp_subclass("f1", "Legs", "FurnitureComponent").  

ooasp_subclass("f1", "Chair_Legs", "Legs").  
ooasp_subclass("f1", "Table_Legs", "Legs"). 

ooasp_subclass("f1", "Top", "FurnitureComponent").

% Associations
% A chair is associated with its legs (Chair_Legs)
ooasp_assoc("f1", "Chair_legs", "Chair", 1, 1, "Chair_Legs", 1, 1).

% A table is associated with its legs (Table_Legs)
ooasp_assoc("f1", "Table_legs", "Table", 1, 1, "Table_Legs", 1, 1).

% A table must have a top
ooasp_assoc("f1", "Table_top", "Table", 1, 1, "Top", 1, 1).

% Attributes

% Chair attributes
ooasp_attribute("f1", "Chair", "material", "string").
ooasp_attribute("f1", "Chair", "legs", "integer").
ooasp_attribute("f1", "Chair", "height", "integer").
ooasp_attribute_enum("f1", "Chair", "material", "Wood").
ooasp_attribute_enum("f1", "Legs", "type", "Metal").
ooasp_attribute_enum("f1", "Chair", "material", "Plastic").

% Table attributes
ooasp_attribute("f1", "Table", "material", "string").
ooasp_attribute("f1", "Table", "legs", "integer").
ooasp_attribute("f1", "Table", "length", "integer").
ooasp_attribute("f1", "Table", "width", "integer").
ooasp_attribute_enum("f1", "Table", "material", "Wood").
ooasp_attribute_enum("f1", "Table", "material", "Metal").
ooasp_attribute_enum("f1", "Table", "material", "Glass").
ooasp_attribute_enum("f1", "Table", "material", "Plastic").

% Attributes for Chair Legs
ooasp_attribute("f1", "Chair_Legs", "type", "string").
ooasp_attribute_enum("f1", "Chair_Legs", "type", "Wood").
ooasp_attribute_enum("f1", "Chair_Legs", "type", "Metal").
ooasp_attribute_enum("f1", "Chair_Legs", "type", "Plastic").

% Attributes for Table Legs
ooasp_attribute("f1", "Table_Legs", "type", "string").
ooasp_attribute_enum("f1", "Table_Legs", "type", "Wood").
ooasp_attribute_enum("f1", "Table_Legs", "type", "Metal").
ooasp_attribute_enum("f1", "Table_Legs", "type", "Plastic").

% Top attributes
ooasp_attribute("f1", "Top", "material", "string").
ooasp_attribute_enum("f1", "Top", "material", "Wood").
ooasp_attribute_enum("f1", "Top", "material", "Metal").
ooasp_attribute_enum("f1", "Top", "material", "Glass").
ooasp_attribute_enum("f1", "Top", "material", "Plastic").

% Attribute constraints

% Chair height must be between 40 and 100
ooasp_attribute_minInclusive("f1", "Chair", "height", 40).
ooasp_attribute_maxInclusive("f1", "Chair", "height", 100).

% Table length and width must be reasonable
ooasp_attribute_maxInclusive("f1", "Table", "length", 300).
ooasp_attribute_maxInclusive("f1", "Table", "width", 150).
