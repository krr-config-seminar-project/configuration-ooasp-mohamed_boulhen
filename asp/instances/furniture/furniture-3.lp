#include "../furniture-config-model.lp".

partial(ooasp_instantiation("f1", "furniture_instance_3")).

% Chair instance
partial(ooasp_isa("furniture_instance_3", "Chair", ("Chair", 1))).
partial(ooasp_attribute_value("furniture_instance_3", "material", ("Chair", 1), "Plastic")).
partial(ooasp_attribute_value("furniture_instance_3", "legs", ("Chair", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_3", "height", ("Chair", 1), 75)).

% Table instance
partial(ooasp_isa("furniture_instance_3", "Table", ("Table", 1))).
partial(ooasp_attribute_value("furniture_instance_3", "material", ("Table", 1), "Wood")).
partial(ooasp_attribute_value("furniture_instance_3", "legs", ("Table", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_3", "length", ("Table", 1), 200)).
partial(ooasp_attribute_value("furniture_instance_3", "width", ("Table", 1), 100)).

% Table legs instance (material must be Wood to match the table material)
partial(ooasp_isa("furniture_instance_3", "Legs", ("Legs", 1))).
partial(ooasp_attribute_value("furniture_instance_3", "type", ("Legs", 1), "Wood")).
partial(ooasp_associated("furniture_instance_3", "Table_legs", ("Table", 1), ("Legs", 1))).

% Table top instance (material must be Wood to match the table material)
partial(ooasp_isa("furniture_instance_3", "Top", ("Top", 1))).
partial(ooasp_attribute_value("furniture_instance_3", "material", ("Top", 1), "Wood")).
partial(ooasp_associated("furniture_instance_3", "Table_top", ("Table", 1), ("Top", 1))).

% Chair legs instance (material must be Plastic to match the chair material)
partial(ooasp_isa("furniture_instance_3", "Legs", ("Legs", 2))).
partial(ooasp_attribute_value("furniture_instance_3", "type", ("Legs", 2), "Plastic")).
partial(ooasp_associated("furniture_instance_3", "Chair_legs", ("Chair", 1), ("Legs", 2))).
