#include "./ooasp.lp".

% Domain-specific constraints for furniture configuration

% A chair must have exactly 4 legs.
:- ooasp_attribute_value(_, "legs", Chair, NumLegs),
   ooasp_isa(_, "Chair", Chair),
   NumLegs != 4.

% Chair material must be either Wood, Plastic or Metal.
:- ooasp_attribute_value(_, "material", Chair, ChairMaterial),
   ooasp_isa(_, "Chair", Chair),
   ChairMaterial != "Wood",
   ChairMaterial != "Plastic",
   ChairMaterial != "Metal".

% Chair material must match the material of its legs
:- ooasp_attribute_value(_, "material", Chair, ChairMaterial),
   ooasp_associated(_, "Chair_legs", Chair, Chair_Legs),
   ooasp_attribute_value(_, "type", Chair_Legs, LegMaterial),
   ChairMaterial != LegMaterial.

% Table legs cannot be Glass.
:- ooasp_associated(_, "Table_legs", Table, Legs),
   ooasp_attribute_value(_, "type", Legs, "Glass"),
   ooasp_isa(_, "Table", Table).

% The material of the table's top must match the material of the table.
:- ooasp_attribute_value(_, "material", Table, TableMaterial),
   ooasp_associated(_, "Table_top", Table, Top),
   ooasp_attribute_value(_, "material", Top, TopMaterial),
   TableMaterial != TopMaterial.
