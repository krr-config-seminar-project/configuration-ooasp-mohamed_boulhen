#include "../furniture-config-model.lp".

partial(ooasp_instantiation("f1", "furniture_instance_6")).

% Chair
partial(ooasp_isa("furniture_instance_6", "Chair", ("Chair", 1))).
partial(ooasp_attribute_value("furniture_instance_6", "material", ("Chair", 1), "Metal")).
partial(ooasp_attribute_value("furniture_instance_6", "legs", ("Chair", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_6", "height", ("Chair", 1), 0)).

% Table
partial(ooasp_isa("furniture_instance_6", "Table", ("Table", 1))).
partial(ooasp_attribute_value("furniture_instance_6", "material", ("Table", 1), "Plastic")).
partial(ooasp_attribute_value("furniture_instance_6", "legs", ("Table", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_6", "length", ("Table", 1), 500)).
partial(ooasp_attribute_value("furniture_instance_6", "width", ("Table", 1), 110)).

% Table legs
partial(ooasp_isa("furniture_instance_6", "Legs", ("Legs", 1))).
partial(ooasp_attribute_value("furniture_instance_6", "type", ("Legs", 1), "Plastic")).
partial(ooasp_associated("furniture_instance_6", "Table_legs", ("Table", 1), ("Legs", 1))).

% Table top
partial(ooasp_isa("furniture_instance_6", "Top", ("Top", 1))).
partial(ooasp_attribute_value("furniture_instance_6", "material", ("Top", 1), "Plastic")).
partial(ooasp_associated("furniture_instance_6", "Table_top", ("Table", 1), ("Top", 1))).

% Chair legs
partial(ooasp_isa("furniture_instance_6", "Legs", ("Legs", 2))).
partial(ooasp_attribute_value("furniture_instance_6", "type", ("Legs", 2), "Plastic")).
partial(ooasp_associated("furniture_instance_6", "Chair_legs", ("Chair", 1), ("Legs", 2))).
