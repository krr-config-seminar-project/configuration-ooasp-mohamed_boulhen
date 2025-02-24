#include "../furniture-config-model.lp".

partial(ooasp_instantiation("f1", "furniture_instance_2")).

% Chair
partial(ooasp_isa("furniture_instance_2", "Chair", ("Chair", 1))).
partial(ooasp_attribute_value("furniture_instance_2", "material", ("Chair", 1), "Plastic")).
partial(ooasp_attribute_value("furniture_instance_2", "legs", ("Chair", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_2", "height", ("Chair", 1), 60)).

% Table
partial(ooasp_isa("furniture_instance_2", "Table", ("Table", 1))).
partial(ooasp_attribute_value("furniture_instance_2", "material", ("Table", 1), "Plastic")).
partial(ooasp_attribute_value("furniture_instance_2", "legs", ("Table", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_2", "length", ("Table", 1), 180)).
partial(ooasp_attribute_value("furniture_instance_2", "width", ("Table", 1), 90)).

% Table legs
partial(ooasp_isa("furniture_instance_2", "Legs", ("Legs", 1))).
partial(ooasp_attribute_value("furniture_instance_2", "type", ("Legs", 1), "Plastic")).
partial(ooasp_associated("furniture_instance_2", "Table_legs", ("Table", 1), ("Legs", 1))).

% Table top
partial(ooasp_isa("furniture_instance_2", "Top", ("Top", 1))).
partial(ooasp_attribute_value("furniture_instance_2", "material", ("Top", 1), "Plastic")).
partial(ooasp_associated("furniture_instance_2", "Table_top", ("Table", 1), ("Top", 1))).

% Chair legs
partial(ooasp_associated("furniture_instance_2", "Chair_legs", ("Chair", 1), ("Legs", 1))).
partial(ooasp_attribute_value("furniture_instance_2", "type", ("Legs", 1), "Plastic")).
